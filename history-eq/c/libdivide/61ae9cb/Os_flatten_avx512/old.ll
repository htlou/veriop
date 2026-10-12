; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/61ae9cb/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/61ae9cb/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local <8 x i64> @target_vu32(<8 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
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
  %42 = bitcast <8 x i64> %0 to <16 x i32>
  %43 = tail call <16 x i32> @llvm.x86.avx512.psrli.d.512(<16 x i32> %42, i32 range(i32 0, 256) %41)
  %44 = bitcast <16 x i32> %43 to <8 x i64>
  br label %74

45:                                               ; preds = %34
  %46 = insertelement <16 x i32> poison, i32 %37, i64 0
  %47 = shufflevector <16 x i32> %46, <16 x i32> poison, <16 x i32> zeroinitializer
  %48 = bitcast <16 x i32> %47 to <8 x i64>
  %49 = and <8 x i64> %0, splat (i64 4294967295)
  %50 = and <8 x i64> %48, splat (i64 4294967295)
  %51 = mul nuw <8 x i64> %50, %49
  %52 = lshr <8 x i64> %51, splat (i64 32)
  %53 = lshr <8 x i64> %0, splat (i64 32)
  %54 = mul nuw <8 x i64> %50, %53
  %55 = and <8 x i64> %54, splat (i64 -4294967296)
  %56 = or disjoint <8 x i64> %52, %55
  %57 = zext nneg i8 %36 to i32
  %58 = icmp samesign ult i8 %36, 64
  br i1 %58, label %70, label %59

59:                                               ; preds = %45
  %60 = and i32 %57, 31
  %61 = bitcast <8 x i64> %0 to <16 x i32>
  %62 = bitcast <8 x i64> %56 to <16 x i32>
  %63 = sub <16 x i32> %61, %62
  %64 = lshr <16 x i32> %63, splat (i32 1)
  %65 = add <16 x i32> %64, %62
  %66 = insertelement <16 x i32> poison, i32 %60, i64 0
  %67 = shufflevector <16 x i32> %66, <16 x i32> poison, <16 x i32> zeroinitializer
  %68 = lshr <16 x i32> %65, %67
  %69 = bitcast <16 x i32> %68 to <8 x i64>
  br label %74

70:                                               ; preds = %45
  %71 = bitcast <8 x i64> %56 to <16 x i32>
  %72 = tail call <16 x i32> @llvm.x86.avx512.psrli.d.512(<16 x i32> %71, i32 range(i32 0, 256) %57)
  %73 = bitcast <16 x i32> %72 to <8 x i64>
  br label %74

74:                                               ; preds = %70, %59, %39, %2
  %75 = phi <8 x i64> [ %0, %2 ], [ %44, %39 ], [ %69, %59 ], [ %73, %70 ]
  ret <8 x i64> %75
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local <8 x i64> @target_vs32(<8 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %110, label %4

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
  %56 = insertelement <16 x i32> poison, i32 %55, i64 0
  %57 = shufflevector <16 x i32> %56, <16 x i32> poison, <16 x i32> zeroinitializer
  %58 = bitcast <8 x i64> %0 to <16 x i32>
  %59 = icmp slt <16 x i32> %58, zeroinitializer
  %60 = select <16 x i1> %59, <16 x i32> %57, <16 x i32> zeroinitializer
  %61 = add <16 x i32> %60, %58
  %62 = insertelement <16 x i32> poison, i32 %53, i64 0
  %63 = shufflevector <16 x i32> %62, <16 x i32> poison, <16 x i32> zeroinitializer
  %64 = ashr <16 x i32> %61, %63
  %65 = ashr i8 %51, 7
  %66 = sext i8 %65 to i32
  %67 = insertelement <16 x i32> poison, i32 %66, i64 0
  %68 = shufflevector <16 x i32> %67, <16 x i32> poison, <16 x i32> zeroinitializer
  %69 = xor <16 x i32> %64, %68
  %70 = sub <16 x i32> %69, %68
  %71 = bitcast <16 x i32> %70 to <8 x i64>
  br label %110

72:                                               ; preds = %41
  %73 = insertelement <16 x i32> poison, i32 %48, i64 0
  %74 = shufflevector <16 x i32> %73, <16 x i32> poison, <16 x i32> zeroinitializer
  %75 = bitcast <16 x i32> %74 to <8 x i64>
  %76 = shl <8 x i64> %0, splat (i64 32)
  %77 = ashr exact <8 x i64> %76, splat (i64 32)
  %78 = shl <8 x i64> %75, splat (i64 32)
  %79 = ashr exact <8 x i64> %78, splat (i64 32)
  %80 = mul nsw <8 x i64> %79, %77
  %81 = lshr <8 x i64> %80, splat (i64 32)
  %82 = ashr <8 x i64> %0, splat (i64 32)
  %83 = mul nsw <8 x i64> %79, %82
  %84 = and <8 x i64> %83, splat (i64 -4294967296)
  %85 = or disjoint <8 x i64> %81, %84
  %86 = zext i8 %47 to i32
  %87 = and i32 %86, 64
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %72
  %90 = ashr i8 %47, 7
  %91 = sext i8 %90 to i32
  %92 = insertelement <16 x i32> poison, i32 %91, i64 0
  %93 = shufflevector <16 x i32> %92, <16 x i32> poison, <16 x i32> zeroinitializer
  %94 = bitcast <8 x i64> %0 to <16 x i32>
  %95 = xor <16 x i32> %93, %94
  %96 = sub <16 x i32> %95, %93
  %97 = bitcast <8 x i64> %85 to <16 x i32>
  %98 = add <16 x i32> %96, %97
  %99 = bitcast <16 x i32> %98 to <8 x i64>
  br label %100

100:                                              ; preds = %89, %72
  %101 = phi <8 x i64> [ %99, %89 ], [ %85, %72 ]
  %102 = and i32 %86, 31
  %103 = bitcast <8 x i64> %101 to <16 x i32>
  %104 = insertelement <16 x i32> poison, i32 %102, i64 0
  %105 = shufflevector <16 x i32> %104, <16 x i32> poison, <16 x i32> zeroinitializer
  %106 = ashr <16 x i32> %103, %105
  %107 = lshr <16 x i32> %106, splat (i32 31)
  %108 = add <16 x i32> %107, %106
  %109 = bitcast <16 x i32> %108 to <8 x i64>
  br label %110

110:                                              ; preds = %100, %50, %2
  %111 = phi <8 x i64> [ %0, %2 ], [ %109, %100 ], [ %71, %50 ]
  ret <8 x i64> %111
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define dso_local <8 x i64> @target_vu64(<8 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %79, label %5

5:                                                ; preds = %2
  %6 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %7 = trunc nuw nsw i64 %6 to i32
  %8 = xor i32 %7, 63
  %9 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %10 = icmp samesign ult i64 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = trunc nuw nsw i32 %8 to i8
  br label %37

13:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %14 = zext nneg i32 %8 to i64
  %15 = shl nuw i64 1, %14
  %16 = call fastcc i64 @libdivide_128_div_64_to_64(i64 noundef %15, i64 noundef range(i64 1, 0) %1, ptr noundef %3) #8
  %17 = load i64, ptr %3, align 8
  %18 = sub i64 %1, %17
  %19 = icmp ult i64 %18, %15
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = trunc nuw nsw i32 %8 to i8
  br label %32

22:                                               ; preds = %13
  %23 = shl i64 %16, 1
  %24 = shl i64 %17, 1
  %25 = icmp uge i64 %24, %1
  %26 = icmp slt i64 %17, 0
  %27 = or i1 %26, %25
  %28 = zext i1 %27 to i64
  %29 = or disjoint i64 %23, %28
  %30 = trunc nuw nsw i32 %8 to i8
  %31 = or disjoint i8 %30, 64
  br label %32

32:                                               ; preds = %20, %22
  %33 = phi i8 [ %31, %22 ], [ %21, %20 ]
  %34 = phi i64 [ %29, %22 ], [ %16, %20 ]
  %35 = add i64 %34, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %11, %32
  %38 = phi i8 [ %12, %11 ], [ %33, %32 ]
  %39 = zext nneg i8 %38 to i32
  %40 = tail call <8 x i64> @llvm.x86.avx512.psrli.q.512(<8 x i64> %0, i32 range(i32 0, 256) %39)
  br label %79

41:                                               ; preds = %32
  %42 = insertelement <8 x i64> poison, i64 %35, i64 0
  %43 = shufflevector <8 x i64> %42, <8 x i64> poison, <8 x i32> zeroinitializer
  %44 = and <8 x i64> %0, splat (i64 4294967295)
  %45 = and <8 x i64> %43, splat (i64 4294967295)
  %46 = mul nuw <8 x i64> %45, %44
  %47 = lshr <8 x i64> %46, splat (i64 32)
  %48 = bitcast <8 x i64> %0 to <16 x i32>
  %49 = shufflevector <16 x i32> %48, <16 x i32> poison, <16 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7, i32 9, i32 9, i32 11, i32 11, i32 13, i32 13, i32 15, i32 15>
  %50 = bitcast <16 x i32> %49 to <8 x i64>
  %51 = bitcast <8 x i64> %43 to <16 x i32>
  %52 = shufflevector <16 x i32> %51, <16 x i32> poison, <16 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7, i32 9, i32 9, i32 11, i32 11, i32 13, i32 13, i32 15, i32 15>
  %53 = bitcast <16 x i32> %52 to <8 x i64>
  %54 = and <8 x i64> %53, splat (i64 4294967295)
  %55 = mul nuw <8 x i64> %54, %44
  %56 = and <8 x i64> %50, splat (i64 4294967295)
  %57 = mul nuw <8 x i64> %45, %56
  %58 = mul nuw <8 x i64> %54, %56
  %59 = add nuw <8 x i64> %47, %57
  %60 = and <8 x i64> %59, splat (i64 4294967295)
  %61 = lshr <8 x i64> %59, splat (i64 32)
  %62 = add nuw <8 x i64> %60, %55
  %63 = lshr <8 x i64> %62, splat (i64 32)
  %64 = add nuw <8 x i64> %61, %58
  %65 = add nuw <8 x i64> %64, %63
  %66 = zext nneg i8 %33 to i32
  %67 = icmp samesign ult i8 %33, 64
  br i1 %67, label %77, label %68

68:                                               ; preds = %41
  %69 = and i32 %66, 63
  %70 = sub <8 x i64> %0, %65
  %71 = lshr <8 x i64> %70, splat (i64 1)
  %72 = add <8 x i64> %71, %65
  %73 = zext nneg i32 %69 to i64
  %74 = insertelement <8 x i64> poison, i64 %73, i64 0
  %75 = shufflevector <8 x i64> %74, <8 x i64> poison, <8 x i32> zeroinitializer
  %76 = lshr <8 x i64> %72, %75
  br label %79

77:                                               ; preds = %41
  %78 = tail call <8 x i64> @llvm.x86.avx512.psrli.q.512(<8 x i64> %65, i32 range(i32 0, 256) %66)
  br label %79

79:                                               ; preds = %77, %68, %37, %2
  %80 = phi <8 x i64> [ %0, %2 ], [ %40, %37 ], [ %76, %68 ], [ %78, %77 ]
  ret <8 x i64> %80
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define dso_local <8 x i64> @target_vs64(<8 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %123, label %5

5:                                                ; preds = %2
  %6 = icmp slt i64 %1, 0
  %7 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %1, i1 false)
  %8 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %7, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %10 = xor i32 %9, 63
  %11 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %7)
  %12 = icmp samesign ult i64 %11, 2
  br i1 %12, label %13, label %19

13:                                               ; preds = %5
  %14 = lshr i64 %1, 56
  %15 = trunc nuw nsw i64 %14 to i32
  %16 = and i32 %15, 128
  %17 = or disjoint i32 %10, %16
  %18 = trunc nuw i32 %17 to i8
  br label %50

19:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %20 = sub nsw i32 62, %9
  %21 = zext nneg i32 %20 to i64
  %22 = shl nuw i64 1, %21
  %23 = call fastcc i64 @libdivide_128_div_64_to_64(i64 noundef %22, i64 noundef %7, ptr noundef %3) #8
  %24 = load i64, ptr %3, align 8
  %25 = sub i64 %7, %24
  %26 = zext nneg i32 %10 to i64
  %27 = lshr i64 %25, %26
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = trunc nsw i32 %20 to i8
  br label %41

31:                                               ; preds = %19
  %32 = shl i64 %23, 1
  %33 = shl i64 %24, 1
  %34 = icmp uge i64 %33, %7
  %35 = icmp slt i64 %24, 0
  %36 = or i1 %35, %34
  %37 = zext i1 %36 to i64
  %38 = or disjoint i64 %32, %37
  %39 = trunc nuw nsw i32 %10 to i8
  %40 = or disjoint i8 %39, 64
  br label %41

41:                                               ; preds = %29, %31
  %42 = phi i64 [ %38, %31 ], [ %23, %29 ]
  %43 = phi i8 [ %40, %31 ], [ %30, %29 ]
  %44 = add i64 %42, 1
  %45 = or i8 %43, -128
  %46 = xor i64 %42, -1
  %47 = select i1 %6, i8 %45, i8 %43
  %48 = select i1 %6, i64 %46, i64 %44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %13, %41
  %51 = phi i8 [ %18, %13 ], [ %47, %41 ]
  %52 = and i8 %51, 63
  %53 = zext nneg i8 %52 to i64
  %54 = shl nsw i64 -1, %53
  %55 = xor i64 %54, -1
  %56 = insertelement <8 x i64> poison, i64 %55, i64 0
  %57 = shufflevector <8 x i64> %56, <8 x i64> poison, <8 x i32> zeroinitializer
  %58 = icmp slt <8 x i64> %0, zeroinitializer
  %59 = select <8 x i1> %58, <8 x i64> %57, <8 x i64> zeroinitializer
  %60 = add <8 x i64> %59, %0
  %61 = insertelement <8 x i64> poison, i64 %53, i64 0
  %62 = shufflevector <8 x i64> %61, <8 x i64> poison, <8 x i32> zeroinitializer
  %63 = ashr <8 x i64> %60, %62
  %64 = ashr i8 %51, 7
  %65 = sext i8 %64 to i32
  %66 = insertelement <16 x i32> poison, i32 %65, i64 0
  %67 = shufflevector <16 x i32> %66, <16 x i32> poison, <16 x i32> zeroinitializer
  %68 = bitcast <16 x i32> %67 to <8 x i64>
  %69 = xor <8 x i64> %63, %68
  %70 = sub <8 x i64> %69, %68
  br label %123

71:                                               ; preds = %41
  %72 = insertelement <8 x i64> poison, i64 %48, i64 0
  %73 = shufflevector <8 x i64> %72, <8 x i64> poison, <8 x i32> zeroinitializer
  %74 = and <8 x i64> %0, splat (i64 4294967295)
  %75 = and <8 x i64> %73, splat (i64 4294967295)
  %76 = mul nuw <8 x i64> %75, %74
  %77 = lshr <8 x i64> %76, splat (i64 32)
  %78 = bitcast <8 x i64> %0 to <16 x i32>
  %79 = shufflevector <16 x i32> %78, <16 x i32> poison, <16 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7, i32 9, i32 9, i32 11, i32 11, i32 13, i32 13, i32 15, i32 15>
  %80 = bitcast <16 x i32> %79 to <8 x i64>
  %81 = bitcast <8 x i64> %73 to <16 x i32>
  %82 = shufflevector <16 x i32> %81, <16 x i32> poison, <16 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7, i32 9, i32 9, i32 11, i32 11, i32 13, i32 13, i32 15, i32 15>
  %83 = bitcast <16 x i32> %82 to <8 x i64>
  %84 = and <8 x i64> %83, splat (i64 4294967295)
  %85 = mul nuw <8 x i64> %84, %74
  %86 = and <8 x i64> %80, splat (i64 4294967295)
  %87 = mul nuw <8 x i64> %75, %86
  %88 = mul nuw <8 x i64> %84, %86
  %89 = add nuw <8 x i64> %77, %87
  %90 = and <8 x i64> %89, splat (i64 4294967295)
  %91 = lshr <8 x i64> %89, splat (i64 32)
  %92 = add nuw <8 x i64> %90, %85
  %93 = lshr <8 x i64> %92, splat (i64 32)
  %94 = icmp slt <8 x i64> %0, zeroinitializer
  %95 = select <8 x i1> %94, <8 x i64> %73, <8 x i64> zeroinitializer
  %96 = icmp slt <8 x i64> %73, zeroinitializer
  %97 = select <8 x i1> %96, <8 x i64> %0, <8 x i64> zeroinitializer
  %98 = add <8 x i64> %97, %95
  %99 = sub <8 x i64> %88, %98
  %100 = add <8 x i64> %99, %91
  %101 = add <8 x i64> %100, %93
  %102 = zext i8 %47 to i32
  %103 = and i32 %102, 64
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %71
  %106 = ashr i8 %47, 7
  %107 = sext i8 %106 to i32
  %108 = insertelement <16 x i32> poison, i32 %107, i64 0
  %109 = shufflevector <16 x i32> %108, <16 x i32> poison, <16 x i32> zeroinitializer
  %110 = bitcast <16 x i32> %109 to <8 x i64>
  %111 = xor <8 x i64> %0, %110
  %112 = sub <8 x i64> %111, %110
  %113 = add <8 x i64> %112, %101
  br label %114

114:                                              ; preds = %105, %71
  %115 = phi <8 x i64> [ %113, %105 ], [ %101, %71 ]
  %116 = and i32 %102, 63
  %117 = zext nneg i32 %116 to i64
  %118 = insertelement <8 x i64> poison, i64 %117, i64 0
  %119 = shufflevector <8 x i64> %118, <8 x i64> poison, <8 x i32> zeroinitializer
  %120 = ashr <8 x i64> %115, %119
  %121 = lshr <8 x i64> %120, splat (i64 63)
  %122 = add <8 x i64> %121, %120
  br label %123

123:                                              ; preds = %114, %50, %2
  %124 = phi <8 x i64> [ %0, %2 ], [ %70, %50 ], [ %122, %114 ]
  ret <8 x i64> %124
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local <8 x i64> @target_vu32_bf(<8 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local <8 x i64> @target_vs32_bf(<8 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %77, label %4

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
  %43 = insertelement <16 x i32> poison, i32 %42, i64 0
  %44 = shufflevector <16 x i32> %43, <16 x i32> poison, <16 x i32> zeroinitializer
  %45 = insertelement <16 x i32> poison, i32 %38, i64 0
  %46 = shufflevector <16 x i32> %45, <16 x i32> poison, <16 x i32> zeroinitializer
  %47 = bitcast <16 x i32> %46 to <8 x i64>
  %48 = shl <8 x i64> %0, splat (i64 32)
  %49 = ashr exact <8 x i64> %48, splat (i64 32)
  %50 = shl <8 x i64> %47, splat (i64 32)
  %51 = ashr exact <8 x i64> %50, splat (i64 32)
  %52 = mul nsw <8 x i64> %51, %49
  %53 = lshr <8 x i64> %52, splat (i64 32)
  %54 = ashr <8 x i64> %0, splat (i64 32)
  %55 = mul nsw <8 x i64> %51, %54
  %56 = and <8 x i64> %55, splat (i64 -4294967296)
  %57 = or disjoint <8 x i64> %53, %56
  %58 = bitcast <8 x i64> %57 to <16 x i32>
  %59 = bitcast <8 x i64> %0 to <16 x i32>
  %60 = add <16 x i32> %58, %59
  %61 = icmp eq i32 %38, 0
  %62 = sext i1 %61 to i32
  %63 = zext nneg i8 %40 to i32
  %64 = shl nuw i32 1, %63
  %65 = add i32 %64, %62
  %66 = insertelement <16 x i32> poison, i32 %65, i64 0
  %67 = shufflevector <16 x i32> %66, <16 x i32> poison, <16 x i32> zeroinitializer
  %68 = icmp slt <16 x i32> %60, zeroinitializer
  %69 = select <16 x i1> %68, <16 x i32> %67, <16 x i32> zeroinitializer
  %70 = add <16 x i32> %69, %60
  %71 = insertelement <16 x i32> poison, i32 %63, i64 0
  %72 = shufflevector <16 x i32> %71, <16 x i32> poison, <16 x i32> zeroinitializer
  %73 = ashr <16 x i32> %70, %72
  %74 = xor <16 x i32> %73, %44
  %75 = sub <16 x i32> %74, %44
  %76 = bitcast <16 x i32> %75 to <8 x i64>
  br label %77

77:                                               ; preds = %2, %37
  %78 = phi <8 x i64> [ %76, %37 ], [ %0, %2 ]
  ret <8 x i64> %78
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define dso_local <8 x i64> @target_vu64_bf(<8 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = icmp ult i64 %1, 2
  br i1 %4, label %60, label %5

5:                                                ; preds = %2
  %6 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, 0) %1, i1 true)
  %7 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %1)
  %8 = icmp samesign ult i64 %7, 2
  %9 = trunc nuw nsw i64 %6 to i32
  br i1 %8, label %10, label %12

10:                                               ; preds = %5
  %11 = sub nuw nsw i32 62, %9
  br label %26

12:                                               ; preds = %5
  %13 = xor i32 %9, 63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %14 = zext nneg i32 %13 to i64
  %15 = shl nuw i64 1, %14
  %16 = call fastcc i64 @libdivide_128_div_64_to_64(i64 noundef %15, i64 noundef range(i64 2, 0) %1, ptr noundef %3) #8
  %17 = load i64, ptr %3, align 8
  %18 = shl i64 %16, 1
  %19 = shl i64 %17, 1
  %20 = icmp uge i64 %19, %1
  %21 = icmp slt i64 %17, 0
  %22 = or i1 %21, %20
  %23 = zext i1 %22 to i64
  %24 = or disjoint i64 %18, 1
  %25 = add i64 %24, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  br label %26

26:                                               ; preds = %10, %12
  %27 = phi i64 [ 0, %10 ], [ %25, %12 ]
  %28 = phi i32 [ %11, %10 ], [ %13, %12 ]
  %29 = insertelement <8 x i64> poison, i64 %27, i64 0
  %30 = shufflevector <8 x i64> %29, <8 x i64> poison, <8 x i32> zeroinitializer
  %31 = and <8 x i64> %0, splat (i64 4294967295)
  %32 = and <8 x i64> %30, splat (i64 4294967295)
  %33 = mul nuw <8 x i64> %32, %31
  %34 = lshr <8 x i64> %33, splat (i64 32)
  %35 = bitcast <8 x i64> %0 to <16 x i32>
  %36 = shufflevector <16 x i32> %35, <16 x i32> poison, <16 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7, i32 9, i32 9, i32 11, i32 11, i32 13, i32 13, i32 15, i32 15>
  %37 = bitcast <16 x i32> %36 to <8 x i64>
  %38 = bitcast <8 x i64> %30 to <16 x i32>
  %39 = shufflevector <16 x i32> %38, <16 x i32> poison, <16 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7, i32 9, i32 9, i32 11, i32 11, i32 13, i32 13, i32 15, i32 15>
  %40 = bitcast <16 x i32> %39 to <8 x i64>
  %41 = and <8 x i64> %40, splat (i64 4294967295)
  %42 = mul nuw <8 x i64> %41, %31
  %43 = and <8 x i64> %37, splat (i64 4294967295)
  %44 = mul nuw <8 x i64> %32, %43
  %45 = mul nuw <8 x i64> %41, %43
  %46 = add nuw <8 x i64> %34, %44
  %47 = and <8 x i64> %46, splat (i64 4294967295)
  %48 = lshr <8 x i64> %46, splat (i64 32)
  %49 = add nuw <8 x i64> %47, %42
  %50 = lshr <8 x i64> %49, splat (i64 32)
  %51 = add nuw <8 x i64> %48, %45
  %52 = add nuw <8 x i64> %51, %50
  %53 = sub <8 x i64> %0, %52
  %54 = lshr <8 x i64> %53, splat (i64 1)
  %55 = add <8 x i64> %54, %52
  %56 = zext nneg i32 %28 to i64
  %57 = insertelement <8 x i64> poison, i64 %56, i64 0
  %58 = shufflevector <8 x i64> %57, <8 x i64> poison, <8 x i32> zeroinitializer
  %59 = lshr <8 x i64> %55, %58
  br label %60

60:                                               ; preds = %2, %26
  %61 = phi <8 x i64> [ %59, %26 ], [ %0, %2 ]
  ret <8 x i64> %61
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define dso_local <8 x i64> @target_vs64_bf(<8 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %91, label %5

5:                                                ; preds = %2
  %6 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %1, i1 false)
  %7 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %6, i1 true)
  %8 = trunc nuw nsw i64 %7 to i32
  %9 = xor i32 %8, 63
  %10 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %6)
  %11 = icmp samesign ult i64 %10, 2
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = lshr i64 %1, 56
  %14 = trunc nuw nsw i64 %13 to i32
  %15 = and i32 %14, 128
  %16 = or disjoint i32 %9, %15
  %17 = trunc nuw i32 %16 to i8
  br label %36

18:                                               ; preds = %5
  %19 = icmp slt i64 %1, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %20 = sub nsw i64 62, %7
  %21 = and i64 %20, 4294967295
  %22 = shl nuw i64 1, %21
  %23 = call fastcc i64 @libdivide_128_div_64_to_64(i64 noundef %22, i64 noundef %6, ptr noundef %3) #8
  %24 = load i64, ptr %3, align 8
  %25 = shl i64 %23, 1
  %26 = shl i64 %24, 1
  %27 = icmp uge i64 %26, %6
  %28 = icmp slt i64 %24, 0
  %29 = or i1 %28, %27
  %30 = zext i1 %29 to i64
  %31 = trunc nuw nsw i32 %9 to i8
  %32 = or disjoint i64 %25, 1
  %33 = add i64 %32, %30
  %34 = select i1 %19, i8 -64, i8 64
  %35 = or disjoint i8 %34, %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  br label %36

36:                                               ; preds = %12, %18
  %37 = phi i64 [ 0, %12 ], [ %33, %18 ]
  %38 = phi i8 [ %17, %12 ], [ %35, %18 ]
  %39 = and i8 %38, 63
  %40 = ashr i8 %38, 7
  %41 = sext i8 %40 to i32
  %42 = insertelement <16 x i32> poison, i32 %41, i64 0
  %43 = shufflevector <16 x i32> %42, <16 x i32> poison, <16 x i32> zeroinitializer
  %44 = bitcast <16 x i32> %43 to <8 x i64>
  %45 = insertelement <8 x i64> poison, i64 %37, i64 0
  %46 = shufflevector <8 x i64> %45, <8 x i64> poison, <8 x i32> zeroinitializer
  %47 = and <8 x i64> %0, splat (i64 4294967295)
  %48 = and <8 x i64> %46, splat (i64 4294967295)
  %49 = mul nuw <8 x i64> %48, %47
  %50 = lshr <8 x i64> %49, splat (i64 32)
  %51 = bitcast <8 x i64> %0 to <16 x i32>
  %52 = shufflevector <16 x i32> %51, <16 x i32> poison, <16 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7, i32 9, i32 9, i32 11, i32 11, i32 13, i32 13, i32 15, i32 15>
  %53 = bitcast <16 x i32> %52 to <8 x i64>
  %54 = bitcast <8 x i64> %46 to <16 x i32>
  %55 = shufflevector <16 x i32> %54, <16 x i32> poison, <16 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7, i32 9, i32 9, i32 11, i32 11, i32 13, i32 13, i32 15, i32 15>
  %56 = bitcast <16 x i32> %55 to <8 x i64>
  %57 = and <8 x i64> %56, splat (i64 4294967295)
  %58 = mul nuw <8 x i64> %57, %47
  %59 = and <8 x i64> %53, splat (i64 4294967295)
  %60 = mul nuw <8 x i64> %48, %59
  %61 = mul nuw <8 x i64> %57, %59
  %62 = add nuw <8 x i64> %50, %60
  %63 = and <8 x i64> %62, splat (i64 4294967295)
  %64 = lshr <8 x i64> %62, splat (i64 32)
  %65 = add nuw <8 x i64> %63, %58
  %66 = lshr <8 x i64> %65, splat (i64 32)
  %67 = icmp slt <8 x i64> %0, zeroinitializer
  %68 = select <8 x i1> %67, <8 x i64> %46, <8 x i64> zeroinitializer
  %69 = icmp slt <8 x i64> %46, zeroinitializer
  %70 = select <8 x i1> %69, <8 x i64> %0, <8 x i64> zeroinitializer
  %71 = add <8 x i64> %68, %70
  %72 = sub <8 x i64> %0, %71
  %73 = add <8 x i64> %72, %61
  %74 = add <8 x i64> %73, %64
  %75 = add <8 x i64> %74, %66
  %76 = icmp eq i64 %37, 0
  %77 = zext nneg i8 %39 to i64
  %78 = shl nuw i64 1, %77
  %79 = sext i1 %76 to i64
  %80 = add i64 %78, %79
  %81 = insertelement <8 x i64> poison, i64 %80, i64 0
  %82 = shufflevector <8 x i64> %81, <8 x i64> poison, <8 x i32> zeroinitializer
  %83 = icmp slt <8 x i64> %75, zeroinitializer
  %84 = select <8 x i1> %83, <8 x i64> %82, <8 x i64> zeroinitializer
  %85 = add <8 x i64> %84, %75
  %86 = insertelement <8 x i64> poison, i64 %77, i64 0
  %87 = shufflevector <8 x i64> %86, <8 x i64> poison, <8 x i32> zeroinitializer
  %88 = ashr <8 x i64> %85, %87
  %89 = xor <8 x i64> %88, %44
  %90 = sub <8 x i64> %89, %44
  br label %91

91:                                               ; preds = %2, %36
  %92 = phi <8 x i64> [ %90, %36 ], [ %0, %2 ]
  ret <8 x i64> %92
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.psrli.d.512(<16 x i32>, i32) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i64> @llvm.x86.avx512.psrli.q.512(<8 x i64>, i32) #4

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal fastcc i64 @libdivide_128_div_64_to_64(i64 noundef %0, i64 noundef range(i64 1, 0) %1, ptr noundef nonnull writeonly %2) unnamed_addr #5 {
  %4 = icmp ult i64 %0, %1
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  store i64 -1, ptr %2, align 8
  br label %55

6:                                                ; preds = %3
  %7 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %8 = shl i64 %1, %7
  %9 = shl i64 %0, %7
  %10 = lshr i64 %8, 32
  %11 = and i64 %8, 4294967295
  %12 = udiv i64 %9, %10
  %13 = mul i64 %12, %10
  %14 = urem i64 %9, %10
  br label %15

15:                                               ; preds = %23, %6
  %16 = phi i64 [ %12, %6 ], [ %24, %23 ]
  %17 = phi i64 [ %14, %6 ], [ %25, %23 ]
  %18 = icmp ugt i64 %16, 4294967295
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = mul nuw i64 %16, %11
  %21 = shl i64 %17, 32
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %15, %19
  %24 = add i64 %16, -1
  %25 = add i64 %17, %10
  %26 = icmp ugt i64 %25, 4294967295
  br i1 %26, label %27, label %15

27:                                               ; preds = %23, %19
  %28 = phi i64 [ %24, %23 ], [ %16, %19 ]
  %29 = shl i64 %9, 32
  %30 = mul i64 %28, %8
  %31 = sub i64 %29, %30
  %32 = udiv i64 %31, %10
  %33 = mul i64 %32, %10
  %34 = urem i64 %31, %10
  br label %35

35:                                               ; preds = %43, %27
  %36 = phi i64 [ %32, %27 ], [ %44, %43 ]
  %37 = phi i64 [ %34, %27 ], [ %45, %43 ]
  %38 = icmp ugt i64 %36, 4294967295
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = mul nuw i64 %36, %11
  %41 = shl i64 %37, 32
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %35, %39
  %44 = add i64 %36, -1
  %45 = add i64 %37, %10
  %46 = icmp ugt i64 %45, 4294967295
  br i1 %46, label %47, label %35

47:                                               ; preds = %43, %39
  %48 = phi i64 [ %44, %43 ], [ %36, %39 ]
  %49 = shl i64 %31, 32
  %50 = mul i64 %48, %8
  %51 = sub i64 %49, %50
  %52 = lshr i64 %51, %7
  store i64 %52, ptr %2, align 8
  %53 = shl i64 %28, 32
  %54 = add i64 %48, %53
  br label %55

55:                                               ; preds = %47, %5
  %56 = phi i64 [ -1, %5 ], [ %54, %47 ]
  ret i64 %56
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+avx512f,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+avx512f,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nofree norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+avx512f,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { optsize }

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
