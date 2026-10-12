; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/b031fb3/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/b031fb3/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_u32_bf_do_raw(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = zext i32 %1 to i64
  %5 = zext i32 %0 to i64
  %6 = mul nuw i64 %4, %5
  %7 = lshr i64 %6, 32
  %8 = trunc nuw i64 %7 to i32
  %9 = sub i32 %0, %8
  %10 = lshr i32 %9, 1
  %11 = add i32 %10, %8
  %12 = zext nneg i8 %2 to i32
  %13 = lshr i32 %11, %12
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_u64_bf_do_raw(i64 noundef %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = zext i64 %1 to i128
  %5 = zext i64 %0 to i128
  %6 = mul nuw i128 %4, %5
  %7 = lshr i128 %6, 64
  %8 = trunc nuw i128 %7 to i64
  %9 = sub i64 %0, %8
  %10 = lshr i64 %9, 1
  %11 = add i64 %10, %8
  %12 = zext nneg i8 %2 to i64
  %13 = lshr i64 %11, %12
  ret i64 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_u32_bf_recover_raw(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = and i8 %1, 31
  %4 = icmp sgt i8 %1, -1
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = zext nneg i8 %3 to i32
  %7 = shl nuw i32 1, %6
  br label %25

8:                                                ; preds = %2
  %9 = or disjoint i8 %3, 32
  %10 = zext nneg i8 %9 to i64
  %11 = shl nuw i64 1, %10
  %12 = zext i32 %0 to i64
  %13 = or disjoint i64 %12, 4294967296
  %14 = udiv i64 %11, %13
  %15 = trunc nuw i64 %14 to i32
  %16 = urem i64 %11, %13
  %17 = shl i32 %15, 1
  %18 = shl nuw nsw i64 %16, 1
  %19 = icmp samesign uge i64 %18, %13
  %20 = zext i1 %19 to i32
  %21 = icmp ne i32 %0, 0
  %22 = zext i1 %21 to i32
  %23 = or disjoint i32 %17, %22
  %24 = add i32 %23, %20
  br label %25

25:                                               ; preds = %5, %8
  %26 = phi i32 [ %7, %5 ], [ %24, %8 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_u64_bf_recover_raw(i64 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = and i8 %1, 63
  %4 = icmp sgt i8 %1, -1
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = zext nneg i8 %3 to i64
  %7 = shl nuw i64 1, %6
  br label %41

8:                                                ; preds = %2
  %9 = icmp eq i64 %0, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = add nuw nsw i8 %3, 1
  %12 = zext nneg i8 %11 to i64
  %13 = shl nuw i64 1, %12
  br label %41

14:                                               ; preds = %8
  %15 = zext nneg i8 %3 to i64
  %16 = shl nuw i64 1, %15
  %17 = zext i64 %16 to i128
  %18 = shl nuw i128 %17, 64
  %19 = zext i64 %0 to i128
  %20 = or disjoint i128 %19, 18446744073709551616
  %21 = udiv i128 %18, %20
  %22 = mul i128 %21, %20
  %23 = sub i128 %18, %22
  %24 = trunc i128 %23 to i64
  %25 = lshr i128 %23, 64
  %26 = trunc nuw nsw i128 %25 to i64
  %27 = trunc nuw i128 %21 to i64
  %28 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %24, i64 1)
  %29 = icmp samesign ugt i64 %28, 1
  br i1 %29, label %36, label %30

30:                                               ; preds = %14
  %31 = shl i64 %24, 1
  %32 = icmp eq i64 %28, 1
  %33 = icmp uge i64 %31, %0
  %34 = select i1 %32, i1 %33, i1 false
  %35 = zext i1 %34 to i64
  br label %36

36:                                               ; preds = %30, %14
  %37 = phi i64 [ 1, %14 ], [ %35, %30 ]
  %38 = shl i64 %27, 1
  %39 = or disjoint i64 %38, 1
  %40 = add i64 %39, %37
  br label %41

41:                                               ; preds = %5, %10, %36
  %42 = phi i64 [ %7, %5 ], [ %13, %10 ], [ %40, %36 ]
  ret i64 %42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_u32_bf_api(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i32 %1, 2
  br i1 %3, label %40, label %4

4:                                                ; preds = %2
  %5 = tail call range(i32 0, 31) i32 @llvm.ctlz.i32(i32 range(i32 2, 0) %1, i1 true)
  %6 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 2, 0) %1)
  %7 = icmp samesign ult i32 %6, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = sub nuw nsw i32 30, %5
  br label %29

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
  %20 = shl nuw nsw i64 %16, 1
  %21 = shl i32 %19, 1
  %22 = icmp uge i32 %21, %1
  %23 = icmp slt i32 %19, 0
  %24 = or i1 %23, %22
  %25 = zext i1 %24 to i64
  %26 = or disjoint i64 %20, 1
  %27 = add nuw nsw i64 %26, %25
  %28 = and i64 %27, 4294967295
  br label %29

29:                                               ; preds = %8, %10
  %30 = phi i64 [ 0, %8 ], [ %28, %10 ]
  %31 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %32 = zext i32 %0 to i64
  %33 = mul nuw i64 %30, %32
  %34 = lshr i64 %33, 32
  %35 = trunc nuw i64 %34 to i32
  %36 = sub i32 %0, %35
  %37 = lshr i32 %36, 1
  %38 = add i32 %37, %35
  %39 = lshr i32 %38, %31
  br label %40

40:                                               ; preds = %2, %29
  %41 = phi i32 [ %39, %29 ], [ 0, %2 ]
  ret i32 %41
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64_bf_api(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = icmp ult i64 %1, 2
  br i1 %3, label %86, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, 0) %1, i1 true)
  %6 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %1)
  %7 = icmp samesign ult i64 %6, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = sub nuw nsw i64 62, %5
  br label %73

10:                                               ; preds = %4
  %11 = xor i64 %5, 63
  %12 = shl nuw i64 1, %11
  %13 = icmp ult i64 %12, %1
  br i1 %13, label %14, label %64

14:                                               ; preds = %10
  %15 = shl i64 %1, %5
  %16 = shl i64 %12, %5
  %17 = lshr i64 %15, 32
  %18 = and i64 %15, 4294967295
  %19 = udiv i64 %16, %17
  %20 = mul i64 %19, %17
  %21 = urem i64 %16, %17
  br label %22

22:                                               ; preds = %30, %14
  %23 = phi i64 [ %19, %14 ], [ %31, %30 ]
  %24 = phi i64 [ %21, %14 ], [ %32, %30 ]
  %25 = icmp ugt i64 %23, 4294967295
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = mul nuw i64 %23, %18
  %28 = shl i64 %24, 32
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26, %22
  %31 = add i64 %23, -1
  %32 = add i64 %24, %17
  %33 = icmp ult i64 %32, 4294967296
  br i1 %33, label %22, label %34

34:                                               ; preds = %30, %26
  %35 = phi i64 [ %31, %30 ], [ %23, %26 ]
  %36 = shl i64 %16, 32
  %37 = mul i64 %35, %15
  %38 = sub i64 %36, %37
  %39 = udiv i64 %38, %17
  %40 = mul i64 %39, %17
  %41 = urem i64 %38, %17
  br label %42

42:                                               ; preds = %50, %34
  %43 = phi i64 [ %39, %34 ], [ %51, %50 ]
  %44 = phi i64 [ %41, %34 ], [ %52, %50 ]
  %45 = icmp ugt i64 %43, 4294967295
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = mul nuw i64 %43, %18
  %48 = shl i64 %44, 32
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46, %42
  %51 = add i64 %43, -1
  %52 = add i64 %44, %17
  %53 = icmp ult i64 %52, 4294967296
  br i1 %53, label %42, label %54

54:                                               ; preds = %50, %46
  %55 = phi i64 [ %51, %50 ], [ %43, %46 ]
  %56 = shl i64 %38, 32
  %57 = mul i64 %55, %15
  %58 = sub i64 %56, %57
  %59 = lshr i64 %58, %5
  %60 = shl i64 %35, 33
  %61 = shl i64 %55, 1
  %62 = add i64 %61, %60
  %63 = or disjoint i64 %62, 1
  br label %64

64:                                               ; preds = %54, %10
  %65 = phi i64 [ %59, %54 ], [ -1, %10 ]
  %66 = phi i64 [ %63, %54 ], [ -1, %10 ]
  %67 = shl i64 %65, 1
  %68 = icmp uge i64 %67, %1
  %69 = icmp slt i64 %65, 0
  %70 = or i1 %69, %68
  %71 = zext i1 %70 to i64
  %72 = add i64 %66, %71
  br label %73

73:                                               ; preds = %8, %64
  %74 = phi i64 [ 0, %8 ], [ %72, %64 ]
  %75 = phi i64 [ %9, %8 ], [ %11, %64 ]
  %76 = and i64 %75, 63
  %77 = zext i64 %74 to i128
  %78 = zext i64 %0 to i128
  %79 = mul nuw i128 %77, %78
  %80 = lshr i128 %79, 64
  %81 = trunc nuw i128 %80 to i64
  %82 = sub i64 %0, %81
  %83 = lshr i64 %82, 1
  %84 = add i64 %83, %81
  %85 = lshr i64 %84, %76
  br label %86

86:                                               ; preds = %2, %73
  %87 = phi i64 [ %85, %73 ], [ 0, %2 ]
  ret i64 %87
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_u32_bf_recover_api(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult i32 %0, 2
  br i1 %2, label %47, label %3

3:                                                ; preds = %1
  %4 = tail call range(i32 0, 31) i32 @llvm.ctlz.i32(i32 range(i32 2, 0) %0, i1 true)
  %5 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 2, 0) %0)
  %6 = icmp samesign ult i32 %5, 2
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = sub nuw nsw i32 30, %4
  br label %28

9:                                                ; preds = %3
  %10 = xor i32 %4, 31
  %11 = shl nuw i32 1, %10
  %12 = zext i32 %11 to i64
  %13 = shl nuw i64 %12, 32
  %14 = zext i32 %0 to i64
  %15 = udiv i64 %13, %14
  %16 = trunc i64 %15 to i32
  %17 = mul i32 %0, %16
  %18 = sub i32 0, %17
  %19 = shl nuw nsw i64 %15, 1
  %20 = shl i32 %18, 1
  %21 = icmp uge i32 %20, %0
  %22 = icmp slt i32 %18, 0
  %23 = or i1 %22, %21
  %24 = zext i1 %23 to i64
  %25 = or disjoint i64 %19, 1
  %26 = add nuw nsw i64 %25, %24
  %27 = trunc i64 %26 to i32
  br label %28

28:                                               ; preds = %7, %9
  %29 = phi i32 [ 0, %7 ], [ %27, %9 ]
  %30 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %31 = or disjoint i32 %30, 32
  %32 = zext nneg i32 %31 to i64
  %33 = shl nuw i64 1, %32
  %34 = zext i32 %29 to i64
  %35 = or disjoint i64 %34, 4294967296
  %36 = udiv i64 %33, %35
  %37 = trunc nuw i64 %36 to i32
  %38 = urem i64 %33, %35
  %39 = shl i32 %37, 1
  %40 = shl nuw nsw i64 %38, 1
  %41 = icmp samesign uge i64 %40, %35
  %42 = zext i1 %41 to i32
  %43 = icmp ne i32 %29, 0
  %44 = zext i1 %43 to i32
  %45 = or disjoint i32 %39, %44
  %46 = add i32 %45, %42
  br label %47

47:                                               ; preds = %1, %28
  %48 = phi i32 [ %46, %28 ], [ 0, %1 ]
  ret i32 %48
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64_bf_recover_api(i64 noundef %0) local_unnamed_addr #1 {
  %2 = icmp ult i64 %0, 2
  br i1 %2, label %110, label %3

3:                                                ; preds = %1
  %4 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, 0) %0, i1 true)
  %5 = trunc nuw nsw i64 %4 to i32
  %6 = xor i32 %5, 63
  %7 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %0)
  %8 = icmp samesign ult i64 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = sub nsw i64 62, %4
  br label %76

11:                                               ; preds = %3
  %12 = zext nneg i32 %6 to i64
  %13 = shl nuw i64 1, %12
  %14 = icmp ult i64 %13, %0
  br i1 %14, label %15, label %65

15:                                               ; preds = %11
  %16 = shl i64 %0, %4
  %17 = shl i64 %13, %4
  %18 = lshr i64 %16, 32
  %19 = and i64 %16, 4294967295
  %20 = udiv i64 %17, %18
  %21 = mul i64 %20, %18
  %22 = urem i64 %17, %18
  br label %23

23:                                               ; preds = %31, %15
  %24 = phi i64 [ %20, %15 ], [ %32, %31 ]
  %25 = phi i64 [ %22, %15 ], [ %33, %31 ]
  %26 = icmp ugt i64 %24, 4294967295
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = mul nuw i64 %24, %19
  %29 = shl i64 %25, 32
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27, %23
  %32 = add i64 %24, -1
  %33 = add i64 %25, %18
  %34 = icmp ult i64 %33, 4294967296
  br i1 %34, label %23, label %35

35:                                               ; preds = %31, %27
  %36 = phi i64 [ %32, %31 ], [ %24, %27 ]
  %37 = shl i64 %17, 32
  %38 = mul i64 %36, %16
  %39 = sub i64 %37, %38
  %40 = udiv i64 %39, %18
  %41 = mul i64 %40, %18
  %42 = urem i64 %39, %18
  br label %43

43:                                               ; preds = %51, %35
  %44 = phi i64 [ %40, %35 ], [ %52, %51 ]
  %45 = phi i64 [ %42, %35 ], [ %53, %51 ]
  %46 = icmp ugt i64 %44, 4294967295
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = mul nuw i64 %44, %19
  %49 = shl i64 %45, 32
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47, %43
  %52 = add i64 %44, -1
  %53 = add i64 %45, %18
  %54 = icmp ult i64 %53, 4294967296
  br i1 %54, label %43, label %55

55:                                               ; preds = %51, %47
  %56 = phi i64 [ %52, %51 ], [ %44, %47 ]
  %57 = shl i64 %39, 32
  %58 = mul i64 %56, %16
  %59 = sub i64 %57, %58
  %60 = lshr i64 %59, %4
  %61 = shl i64 %36, 33
  %62 = shl i64 %56, 1
  %63 = add i64 %62, %61
  %64 = or disjoint i64 %63, 1
  br label %65

65:                                               ; preds = %11, %55
  %66 = phi i64 [ %60, %55 ], [ -1, %11 ]
  %67 = phi i64 [ %64, %55 ], [ -1, %11 ]
  %68 = shl i64 %66, 1
  %69 = icmp uge i64 %68, %0
  %70 = icmp slt i64 %66, 0
  %71 = or i1 %70, %69
  %72 = zext i1 %71 to i64
  %73 = zext nneg i32 %6 to i64
  %74 = add i64 %67, %72
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %9, %65
  %77 = phi i64 [ %10, %9 ], [ %73, %65 ]
  %78 = add nsw i64 %77, 1
  %79 = and i64 %78, 255
  %80 = shl nuw i64 1, %79
  br label %110

81:                                               ; preds = %65
  %82 = zext nneg i32 %6 to i64
  %83 = shl nuw i64 1, %82
  %84 = zext i64 %83 to i128
  %85 = shl nuw i128 %84, 64
  %86 = zext i64 %74 to i128
  %87 = or disjoint i128 %86, 18446744073709551616
  %88 = freeze i128 %85
  %89 = freeze i128 %87
  %90 = udiv i128 %88, %89
  %91 = mul i128 %90, %89
  %92 = sub i128 %88, %91
  %93 = trunc i128 %92 to i64
  %94 = lshr i128 %92, 64
  %95 = trunc nuw nsw i128 %94 to i64
  %96 = trunc nuw i128 %90 to i64
  %97 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %93, i64 1)
  %98 = icmp samesign ugt i64 %97, 1
  br i1 %98, label %105, label %99

99:                                               ; preds = %81
  %100 = shl i64 %93, 1
  %101 = icmp eq i64 %97, 1
  %102 = icmp uge i64 %100, %74
  %103 = select i1 %101, i1 %102, i1 false
  %104 = zext i1 %103 to i64
  br label %105

105:                                              ; preds = %99, %81
  %106 = phi i64 [ 1, %81 ], [ %104, %99 ]
  %107 = shl i64 %96, 1
  %108 = or disjoint i64 %107, 1
  %109 = add i64 %108, %106
  br label %110

110:                                              ; preds = %105, %76, %1
  %111 = phi i64 [ 0, %1 ], [ %80, %76 ], [ %109, %105 ]
  ret i64 %111
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext range(i8 0, 32) i8 @target_u32_bf_gen_more(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult i32 %0, 2
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = tail call range(i32 0, 31) i32 @llvm.ctlz.i32(i32 range(i32 2, 0) %0, i1 true)
  %5 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 2, 0) %0)
  %6 = icmp samesign ult i32 %5, 2
  %7 = sub nuw nsw i32 30, %4
  %8 = xor i32 %4, -1
  %9 = select i1 %6, i32 %7, i32 %8
  %10 = trunc nsw i32 %9 to i8
  %11 = and i8 %10, 31
  br label %12

12:                                               ; preds = %1, %3
  %13 = phi i8 [ %11, %3 ], [ 0, %1 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_u32_bf_vec_api(<2 x i64> noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp ult i32 %1, 2
  br i1 %3, label %52, label %4

4:                                                ; preds = %2
  %5 = tail call range(i32 0, 31) i32 @llvm.ctlz.i32(i32 range(i32 2, 0) %1, i1 true)
  %6 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 2, 0) %1)
  %7 = icmp samesign ult i32 %6, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = sub nuw nsw i32 30, %5
  br label %29

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
  %20 = shl nuw nsw i64 %16, 1
  %21 = shl i32 %19, 1
  %22 = icmp uge i32 %21, %1
  %23 = icmp slt i32 %19, 0
  %24 = or i1 %23, %22
  %25 = zext i1 %24 to i64
  %26 = or disjoint i64 %20, 1
  %27 = add nuw nsw i64 %26, %25
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %8, %10
  %30 = phi i32 [ 0, %8 ], [ %28, %10 ]
  %31 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %32 = insertelement <4 x i32> poison, i32 %30, i64 0
  %33 = shufflevector <4 x i32> %32, <4 x i32> poison, <4 x i32> zeroinitializer
  %34 = bitcast <4 x i32> %33 to <2 x i64>
  %35 = and <2 x i64> %0, splat (i64 4294967295)
  %36 = and <2 x i64> %34, splat (i64 4294967295)
  %37 = mul nuw <2 x i64> %36, %35
  %38 = lshr <2 x i64> %37, splat (i64 32)
  %39 = lshr <2 x i64> %0, splat (i64 32)
  %40 = mul nuw <2 x i64> %36, %39
  %41 = and <2 x i64> %40, splat (i64 -4294967296)
  %42 = or disjoint <2 x i64> %38, %41
  %43 = bitcast <2 x i64> %0 to <4 x i32>
  %44 = bitcast <2 x i64> %42 to <4 x i32>
  %45 = sub <4 x i32> %43, %44
  %46 = lshr <4 x i32> %45, splat (i32 1)
  %47 = add <4 x i32> %46, %44
  %48 = insertelement <4 x i32> poison, i32 %31, i64 0
  %49 = shufflevector <4 x i32> %48, <4 x i32> poison, <4 x i32> zeroinitializer
  %50 = lshr <4 x i32> %47, %49
  %51 = bitcast <4 x i32> %50 to <2 x i64>
  br label %52

52:                                               ; preds = %2, %29
  %53 = phi <2 x i64> [ %51, %29 ], [ %0, %2 ]
  ret <2 x i64> %53
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local <2 x i64> @target_u64_bf_vec_api(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = icmp ult i64 %1, 2
  br i1 %3, label %104, label %4

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
  %35 = icmp ult i64 %34, 4294967296
  br i1 %35, label %24, label %36

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
  %55 = icmp ult i64 %54, 4294967296
  br i1 %55, label %44, label %56

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
  %79 = insertelement <2 x i64> poison, i64 %76, i64 0
  %80 = shufflevector <2 x i64> %79, <2 x i64> poison, <2 x i32> zeroinitializer
  %81 = and <2 x i64> %0, splat (i64 4294967295)
  %82 = lshr <2 x i64> %0, splat (i64 32)
  %83 = and <2 x i64> %80, splat (i64 4294967295)
  %84 = lshr <2 x i64> %80, splat (i64 32)
  %85 = mul nuw <2 x i64> %83, %81
  %86 = lshr <2 x i64> %85, splat (i64 32)
  %87 = mul nuw <2 x i64> %84, %81
  %88 = mul nuw <2 x i64> %83, %82
  %89 = mul nuw <2 x i64> %84, %82
  %90 = add nuw <2 x i64> %86, %88
  %91 = and <2 x i64> %90, splat (i64 4294967295)
  %92 = lshr <2 x i64> %90, splat (i64 32)
  %93 = add nuw <2 x i64> %91, %87
  %94 = lshr <2 x i64> %93, splat (i64 32)
  %95 = add nuw <2 x i64> %92, %89
  %96 = add nuw <2 x i64> %95, %94
  %97 = sub <2 x i64> %0, %96
  %98 = lshr <2 x i64> %97, splat (i64 1)
  %99 = add <2 x i64> %98, %96
  %100 = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %78, i64 0
  %101 = bitcast <4 x i32> %100 to <2 x i64>
  %102 = shufflevector <2 x i64> %101, <2 x i64> poison, <2 x i32> zeroinitializer
  %103 = lshr <2 x i64> %99, %102
  br label %104

104:                                              ; preds = %2, %75
  %105 = phi <2 x i64> [ %103, %75 ], [ %0, %2 ]
  ret <2 x i64> %105
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
