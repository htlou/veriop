; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/8e9bf17/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/8e9bf17/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, -1) <4 x i64> @target_mullhi_u64_raw(<4 x i64> noundef %0, <4 x i64> noundef %1) local_unnamed_addr #0 {
  %3 = and <4 x i64> %0, splat (i64 4294967295)
  %4 = and <4 x i64> %1, splat (i64 4294967295)
  %5 = mul nuw <4 x i64> %4, %3
  %6 = lshr <4 x i64> %5, splat (i64 32)
  %7 = bitcast <4 x i64> %0 to <8 x i32>
  %8 = shufflevector <8 x i32> %7, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %9 = bitcast <8 x i32> %8 to <4 x i64>
  %10 = bitcast <4 x i64> %1 to <8 x i32>
  %11 = shufflevector <8 x i32> %10, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %12 = bitcast <8 x i32> %11 to <4 x i64>
  %13 = and <4 x i64> %12, splat (i64 4294967295)
  %14 = mul nuw <4 x i64> %13, %3
  %15 = and <4 x i64> %9, splat (i64 4294967295)
  %16 = mul nuw <4 x i64> %15, %4
  %17 = mul nuw <4 x i64> %13, %15
  %18 = add nuw <4 x i64> %16, %6
  %19 = and <4 x i64> %18, splat (i64 4294967295)
  %20 = lshr <4 x i64> %18, splat (i64 32)
  %21 = add nuw <4 x i64> %19, %14
  %22 = lshr <4 x i64> %21, splat (i64 32)
  %23 = add nuw <4 x i64> %20, %17
  %24 = add nuw <4 x i64> %23, %22
  ret <4 x i64> %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, -1) <4 x i64> @target_mullhi_u64_pre(<4 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = insertelement <4 x i64> poison, i64 %1, i64 0
  %4 = shufflevector <4 x i64> %3, <4 x i64> poison, <4 x i32> zeroinitializer
  %5 = and <4 x i64> %0, splat (i64 4294967295)
  %6 = and <4 x i64> %4, splat (i64 4294967295)
  %7 = mul nuw <4 x i64> %6, %5
  %8 = lshr <4 x i64> %7, splat (i64 32)
  %9 = bitcast <4 x i64> %0 to <8 x i32>
  %10 = shufflevector <8 x i32> %9, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %11 = bitcast <8 x i32> %10 to <4 x i64>
  %12 = bitcast <4 x i64> %4 to <8 x i32>
  %13 = shufflevector <8 x i32> %12, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %14 = bitcast <8 x i32> %13 to <4 x i64>
  %15 = and <4 x i64> %14, splat (i64 4294967295)
  %16 = mul nuw <4 x i64> %15, %5
  %17 = and <4 x i64> %11, splat (i64 4294967295)
  %18 = mul nuw <4 x i64> %17, %6
  %19 = mul nuw <4 x i64> %15, %17
  %20 = add nuw <4 x i64> %8, %18
  %21 = and <4 x i64> %20, splat (i64 4294967295)
  %22 = lshr <4 x i64> %20, splat (i64 32)
  %23 = add nuw <4 x i64> %21, %16
  %24 = lshr <4 x i64> %23, splat (i64 32)
  %25 = add nuw <4 x i64> %19, %22
  %26 = add nuw <4 x i64> %25, %24
  ret <4 x i64> %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_u64_api(<4 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
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
  %44 = tail call <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64> %0, i32 range(i32 0, 256) %43)
  br label %83

45:                                               ; preds = %36
  %46 = insertelement <4 x i64> poison, i64 %39, i64 0
  %47 = shufflevector <4 x i64> %46, <4 x i64> poison, <4 x i32> zeroinitializer
  %48 = and <4 x i64> %0, splat (i64 4294967295)
  %49 = and <4 x i64> %47, splat (i64 4294967295)
  %50 = mul nuw <4 x i64> %49, %48
  %51 = lshr <4 x i64> %50, splat (i64 32)
  %52 = bitcast <4 x i64> %0 to <8 x i32>
  %53 = shufflevector <8 x i32> %52, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %54 = bitcast <8 x i32> %53 to <4 x i64>
  %55 = bitcast <4 x i64> %47 to <8 x i32>
  %56 = shufflevector <8 x i32> %55, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %57 = bitcast <8 x i32> %56 to <4 x i64>
  %58 = and <4 x i64> %57, splat (i64 4294967295)
  %59 = mul nuw <4 x i64> %58, %48
  %60 = and <4 x i64> %54, splat (i64 4294967295)
  %61 = mul nuw <4 x i64> %49, %60
  %62 = mul nuw <4 x i64> %58, %60
  %63 = add nuw <4 x i64> %51, %61
  %64 = and <4 x i64> %63, splat (i64 4294967295)
  %65 = lshr <4 x i64> %63, splat (i64 32)
  %66 = add nuw <4 x i64> %64, %59
  %67 = lshr <4 x i64> %66, splat (i64 32)
  %68 = add nuw <4 x i64> %65, %62
  %69 = add nuw <4 x i64> %68, %67
  %70 = zext nneg i8 %37 to i32
  %71 = icmp samesign ult i8 %37, 64
  br i1 %71, label %81, label %72

72:                                               ; preds = %45
  %73 = and i32 %70, 63
  %74 = sub <4 x i64> %0, %69
  %75 = lshr <4 x i64> %74, splat (i64 1)
  %76 = add <4 x i64> %75, %69
  %77 = zext nneg i32 %73 to i64
  %78 = insertelement <4 x i64> poison, i64 %77, i64 0
  %79 = shufflevector <4 x i64> %78, <4 x i64> poison, <4 x i32> zeroinitializer
  %80 = lshr <4 x i64> %76, %79
  br label %83

81:                                               ; preds = %45
  %82 = tail call <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64> %69, i32 range(i32 0, 256) %70)
  br label %83

83:                                               ; preds = %81, %72, %41, %2
  %84 = phi <4 x i64> [ %0, %2 ], [ %44, %41 ], [ %80, %72 ], [ %82, %81 ]
  ret <4 x i64> %84
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_s64_api(<4 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
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
  %88 = and <4 x i64> %0, splat (i64 4294967295)
  %89 = and <4 x i64> %87, splat (i64 4294967295)
  %90 = mul nuw <4 x i64> %89, %88
  %91 = lshr <4 x i64> %90, splat (i64 32)
  %92 = bitcast <4 x i64> %0 to <8 x i32>
  %93 = shufflevector <8 x i32> %92, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %94 = bitcast <8 x i32> %93 to <4 x i64>
  %95 = bitcast <4 x i64> %87 to <8 x i32>
  %96 = shufflevector <8 x i32> %95, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %97 = bitcast <8 x i32> %96 to <4 x i64>
  %98 = and <4 x i64> %97, splat (i64 4294967295)
  %99 = mul nuw <4 x i64> %98, %88
  %100 = and <4 x i64> %94, splat (i64 4294967295)
  %101 = mul nuw <4 x i64> %89, %100
  %102 = mul nuw <4 x i64> %98, %100
  %103 = add nuw <4 x i64> %91, %101
  %104 = and <4 x i64> %103, splat (i64 4294967295)
  %105 = lshr <4 x i64> %103, splat (i64 32)
  %106 = add nuw <4 x i64> %104, %99
  %107 = lshr <4 x i64> %106, splat (i64 32)
  %108 = ashr <8 x i32> %92, <i32 0, i32 31, i32 0, i32 31, i32 0, i32 31, i32 0, i32 31>
  %109 = shufflevector <8 x i32> %108, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %110 = bitcast <8 x i32> %109 to <4 x i64>
  %111 = and <4 x i64> %87, %110
  %112 = ashr <8 x i32> %95, <i32 0, i32 31, i32 0, i32 31, i32 0, i32 31, i32 0, i32 31>
  %113 = shufflevector <8 x i32> %112, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %114 = bitcast <8 x i32> %113 to <4 x i64>
  %115 = and <4 x i64> %0, %114
  %116 = add <4 x i64> %115, %111
  %117 = sub <4 x i64> %102, %116
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
define dso_local <4 x i64> @target_u64_bf_api(<4 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
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
  %35 = and <4 x i64> %0, splat (i64 4294967295)
  %36 = and <4 x i64> %34, splat (i64 4294967295)
  %37 = mul nuw <4 x i64> %36, %35
  %38 = lshr <4 x i64> %37, splat (i64 32)
  %39 = bitcast <4 x i64> %0 to <8 x i32>
  %40 = shufflevector <8 x i32> %39, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %41 = bitcast <8 x i32> %40 to <4 x i64>
  %42 = bitcast <4 x i64> %34 to <8 x i32>
  %43 = shufflevector <8 x i32> %42, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %44 = bitcast <8 x i32> %43 to <4 x i64>
  %45 = and <4 x i64> %44, splat (i64 4294967295)
  %46 = mul nuw <4 x i64> %45, %35
  %47 = and <4 x i64> %41, splat (i64 4294967295)
  %48 = mul nuw <4 x i64> %36, %47
  %49 = mul nuw <4 x i64> %45, %47
  %50 = add nuw <4 x i64> %38, %48
  %51 = and <4 x i64> %50, splat (i64 4294967295)
  %52 = lshr <4 x i64> %50, splat (i64 32)
  %53 = add nuw <4 x i64> %51, %46
  %54 = lshr <4 x i64> %53, splat (i64 32)
  %55 = add nuw <4 x i64> %52, %49
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <4 x i64> @target_s64_bf_api(<4 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %109, label %4

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
  %46 = insertelement <8 x i32> poison, i32 %45, i64 0
  %47 = shufflevector <8 x i32> %46, <8 x i32> poison, <8 x i32> zeroinitializer
  %48 = bitcast <8 x i32> %47 to <4 x i64>
  %49 = insertelement <4 x i64> poison, i64 %41, i64 0
  %50 = shufflevector <4 x i64> %49, <4 x i64> poison, <4 x i32> zeroinitializer
  %51 = and <4 x i64> %0, splat (i64 4294967295)
  %52 = and <4 x i64> %50, splat (i64 4294967295)
  %53 = mul nuw <4 x i64> %52, %51
  %54 = lshr <4 x i64> %53, splat (i64 32)
  %55 = bitcast <4 x i64> %0 to <8 x i32>
  %56 = shufflevector <8 x i32> %55, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %57 = bitcast <8 x i32> %56 to <4 x i64>
  %58 = bitcast <4 x i64> %50 to <8 x i32>
  %59 = shufflevector <8 x i32> %58, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %60 = bitcast <8 x i32> %59 to <4 x i64>
  %61 = and <4 x i64> %60, splat (i64 4294967295)
  %62 = mul nuw <4 x i64> %61, %51
  %63 = and <4 x i64> %57, splat (i64 4294967295)
  %64 = mul nuw <4 x i64> %52, %63
  %65 = mul nuw <4 x i64> %61, %63
  %66 = add nuw <4 x i64> %54, %64
  %67 = and <4 x i64> %66, splat (i64 4294967295)
  %68 = lshr <4 x i64> %66, splat (i64 32)
  %69 = add nuw <4 x i64> %67, %62
  %70 = lshr <4 x i64> %69, splat (i64 32)
  %71 = ashr <8 x i32> %55, <i32 0, i32 31, i32 0, i32 31, i32 0, i32 31, i32 0, i32 31>
  %72 = shufflevector <8 x i32> %71, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %73 = bitcast <8 x i32> %72 to <4 x i64>
  %74 = and <4 x i64> %50, %73
  %75 = ashr <8 x i32> %58, <i32 0, i32 31, i32 0, i32 31, i32 0, i32 31, i32 0, i32 31>
  %76 = shufflevector <8 x i32> %75, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %77 = bitcast <8 x i32> %76 to <4 x i64>
  %78 = and <4 x i64> %0, %77
  %79 = add <4 x i64> %74, %78
  %80 = sub <4 x i64> %0, %79
  %81 = add <4 x i64> %80, %65
  %82 = add <4 x i64> %81, %68
  %83 = add <4 x i64> %82, %70
  %84 = icmp eq i64 %41, 0
  %85 = bitcast <4 x i64> %83 to <8 x i32>
  %86 = ashr <8 x i32> %85, <i32 0, i32 31, i32 0, i32 31, i32 0, i32 31, i32 0, i32 31>
  %87 = shufflevector <8 x i32> %86, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7>
  %88 = bitcast <8 x i32> %87 to <4 x i64>
  %89 = zext nneg i8 %43 to i64
  %90 = shl nuw i64 1, %89
  %91 = sext i1 %84 to i64
  %92 = add i64 %90, %91
  %93 = insertelement <4 x i64> poison, i64 %92, i64 0
  %94 = shufflevector <4 x i64> %93, <4 x i64> poison, <4 x i32> zeroinitializer
  %95 = and <4 x i64> %94, %88
  %96 = add <4 x i64> %95, %83
  %97 = xor i8 %43, 63
  %98 = zext nneg i8 %97 to i64
  %99 = shl nuw i64 1, %98
  %100 = insertelement <4 x i64> poison, i64 %99, i64 0
  %101 = shufflevector <4 x i64> %100, <4 x i64> poison, <4 x i32> zeroinitializer
  %102 = insertelement <4 x i64> poison, i64 %89, i64 0
  %103 = shufflevector <4 x i64> %102, <4 x i64> poison, <4 x i32> zeroinitializer
  %104 = lshr <4 x i64> %96, %103
  %105 = xor <4 x i64> %104, %101
  %106 = sub <4 x i64> %105, %101
  %107 = xor <4 x i64> %106, %48
  %108 = sub <4 x i64> %107, %48
  br label %109

109:                                              ; preds = %2, %40
  %110 = phi <4 x i64> [ %108, %40 ], [ %0, %2 ]
  ret <4 x i64> %110
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64>, i32) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
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
