; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c2ee283/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c2ee283/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_clz32(i32 noundef %0) local_unnamed_addr #0 {
  %2 = xor i32 %0, -1
  %3 = icmp slt i32 %0, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %8, %4 ], [ -2147483648, %1 ]
  %6 = phi i32 [ %7, %4 ], [ 0, %1 ]
  %7 = add nuw nsw i32 %6, 1
  %8 = lshr i32 %5, 1
  %9 = and i32 %8, %2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %4

11:                                               ; preds = %4, %1
  %12 = phi i32 [ 0, %1 ], [ %7, %4 ]
  ret i32 %12
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_clz64(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult i64 %0, 4294967296
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = lshr i64 %0, 32
  %5 = trunc nuw i64 %4 to i32
  %6 = xor i32 %5, -1
  %7 = icmp slt i64 %0, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %3, %8
  %9 = phi i32 [ %12, %8 ], [ -2147483648, %3 ]
  %10 = phi i32 [ %11, %8 ], [ 0, %3 ]
  %11 = add nuw nsw i32 %10, 1
  %12 = lshr i32 %9, 1
  %13 = and i32 %12, %6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %8

15:                                               ; preds = %1
  %16 = trunc nuw i64 %0 to i32
  %17 = xor i32 %16, -1
  %18 = icmp slt i32 %16, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %15, %19
  %20 = phi i32 [ %23, %19 ], [ -2147483648, %15 ]
  %21 = phi i32 [ %22, %19 ], [ 0, %15 ]
  %22 = add nuw nsw i32 %21, 1
  %23 = lshr i32 %20, 1
  %24 = and i32 %23, %17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %19

26:                                               ; preds = %19
  %27 = add nuw nsw i32 %21, 33
  br label %28

28:                                               ; preds = %8, %15, %26, %3
  %29 = phi i32 [ 0, %3 ], [ 32, %15 ], [ %27, %26 ], [ %11, %8 ]
  ret i32 %29
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_u32_api(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %70, label %4

4:                                                ; preds = %2
  %5 = xor i32 %1, -1
  %6 = icmp slt i32 %1, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %11, %7 ], [ -2147483648, %4 ]
  %9 = phi i32 [ %10, %7 ], [ 0, %4 ]
  %10 = add nuw nsw i32 %9, 1
  %11 = lshr i32 %8, 1
  %12 = and i32 %11, %5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %7

14:                                               ; preds = %7, %4
  %15 = phi i32 [ 0, %4 ], [ %10, %7 ]
  %16 = sub nsw i32 31, %15
  %17 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %1)
  %18 = icmp samesign ult i32 %17, 2
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = trunc i32 %16 to i8
  br label %49

21:                                               ; preds = %14
  %22 = lshr exact i32 -2147483648, %15
  %23 = zext i32 %22 to i64
  %24 = shl nuw i64 %23, 32
  %25 = zext i32 %1 to i64
  %26 = udiv i64 %24, %25
  %27 = trunc i64 %26 to i32
  %28 = mul i32 %1, %27
  %29 = add i32 %28, %1
  %30 = icmp ult i32 %29, %22
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = trunc i32 %16 to i8
  br label %44

33:                                               ; preds = %21
  %34 = sub i32 0, %28
  %35 = shl i32 %27, 1
  %36 = shl i32 %34, 1
  %37 = icmp uge i32 %36, %1
  %38 = icmp slt i32 %34, 0
  %39 = or i1 %38, %37
  %40 = zext i1 %39 to i32
  %41 = or disjoint i32 %35, %40
  %42 = trunc i32 %16 to i8
  %43 = or i8 %42, 64
  br label %44

44:                                               ; preds = %31, %33
  %45 = phi i32 [ %41, %33 ], [ %27, %31 ]
  %46 = phi i8 [ %43, %33 ], [ %32, %31 ]
  %47 = add i32 %45, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %19, %44
  %50 = phi i8 [ %20, %19 ], [ %46, %44 ]
  %51 = zext nneg i8 %50 to i32
  %52 = lshr i32 %0, %51
  br label %70

53:                                               ; preds = %44
  %54 = zext i32 %47 to i64
  %55 = zext i32 %0 to i64
  %56 = mul nuw i64 %54, %55
  %57 = lshr i64 %56, 32
  %58 = trunc nuw i64 %57 to i32
  %59 = zext i8 %46 to i32
  %60 = and i32 %59, 64
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %53
  %63 = sub i32 %0, %58
  %64 = lshr i32 %63, 1
  %65 = add i32 %64, %58
  %66 = and i32 %59, 31
  %67 = lshr i32 %65, %66
  br label %70

68:                                               ; preds = %53
  %69 = lshr i32 %58, %59
  br label %70

70:                                               ; preds = %68, %62, %49, %2
  %71 = phi i32 [ 0, %2 ], [ %52, %49 ], [ %67, %62 ], [ %69, %68 ]
  ret i32 %71
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_s32_api(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %96, label %4

4:                                                ; preds = %2
  %5 = icmp slt i32 %1, 0
  %6 = tail call i32 @llvm.abs.i32(i32 range(i32 1, 0) %1, i1 false)
  %7 = xor i32 %6, -1
  %8 = icmp slt i32 %6, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4, %9
  %10 = phi i32 [ %13, %9 ], [ -2147483648, %4 ]
  %11 = phi i32 [ %12, %9 ], [ 0, %4 ]
  %12 = add nuw nsw i32 %11, 1
  %13 = lshr i32 %10, 1
  %14 = and i32 %13, %7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %9

16:                                               ; preds = %9, %4
  %17 = phi i32 [ 0, %4 ], [ %12, %9 ]
  %18 = sub nsw i32 31, %17
  %19 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %6)
  %20 = icmp samesign ult i32 %19, 2
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = lshr i32 %1, 24
  %23 = and i32 %22, 128
  %24 = or i32 %18, %23
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 31
  br label %62

27:                                               ; preds = %16
  %28 = sub i32 30, %17
  %29 = shl nuw i32 1, %28
  %30 = zext i32 %29 to i64
  %31 = shl nuw i64 %30, 32
  %32 = zext i32 %6 to i64
  %33 = udiv i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = mul i32 %6, %34
  %36 = add i32 %35, %6
  %37 = lshr exact i32 -2147483648, %17
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = trunc i32 %28 to i8
  br label %52

41:                                               ; preds = %27
  %42 = sub i32 0, %35
  %43 = shl i32 %34, 1
  %44 = shl i32 %42, 1
  %45 = icmp uge i32 %44, %6
  %46 = icmp slt i32 %42, 0
  %47 = or i1 %46, %45
  %48 = zext i1 %47 to i32
  %49 = or disjoint i32 %43, %48
  %50 = trunc i32 %18 to i8
  %51 = or i8 %50, 64
  br label %52

52:                                               ; preds = %39, %41
  %53 = phi i32 [ %49, %41 ], [ %34, %39 ]
  %54 = phi i8 [ %51, %41 ], [ %40, %39 ]
  %55 = add i32 %53, 1
  %56 = or i8 %54, -128
  %57 = xor i32 %53, -1
  %58 = select i1 %5, i8 %56, i8 %54
  %59 = select i1 %5, i32 %57, i32 %55
  %60 = and i8 %58, 31
  %61 = icmp eq i32 %59, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %21, %52
  %63 = phi i8 [ %26, %21 ], [ %60, %52 ]
  %64 = phi i8 [ %25, %21 ], [ %58, %52 ]
  %65 = ashr i8 %64, 7
  %66 = sext i8 %65 to i32
  %67 = zext nneg i8 %63 to i32
  %68 = shl nsw i32 -1, %67
  %69 = xor i32 %68, -1
  %70 = icmp slt i32 %0, 0
  %71 = select i1 %70, i32 %69, i32 0
  %72 = add i32 %71, %0
  %73 = ashr i32 %72, %67
  %74 = xor i32 %73, %66
  %75 = sub i32 %74, %66
  br label %96

76:                                               ; preds = %52
  %77 = sext i32 %59 to i64
  %78 = sext i32 %0 to i64
  %79 = mul nsw i64 %77, %78
  %80 = lshr i64 %79, 32
  %81 = trunc nuw i64 %80 to i32
  %82 = and i8 %58, 64
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %76
  %85 = ashr i8 %58, 7
  %86 = sext i8 %85 to i32
  %87 = xor i32 %0, %86
  %88 = sub i32 %87, %86
  %89 = add i32 %88, %81
  br label %90

90:                                               ; preds = %84, %76
  %91 = phi i32 [ %89, %84 ], [ %81, %76 ]
  %92 = zext nneg i8 %60 to i32
  %93 = ashr i32 %91, %92
  %94 = lshr i32 %93, 31
  %95 = add nsw i32 %94, %93
  br label %96

96:                                               ; preds = %90, %62, %2
  %97 = phi i32 [ 0, %2 ], [ %95, %90 ], [ %75, %62 ]
  ret i32 %97
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_u32_gen_magic(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %39, label %3

3:                                                ; preds = %1
  %4 = xor i32 %0, -1
  %5 = icmp slt i32 %0, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %3, %6
  %7 = phi i32 [ %10, %6 ], [ -2147483648, %3 ]
  %8 = phi i32 [ %9, %6 ], [ 0, %3 ]
  %9 = add nuw nsw i32 %8, 1
  %10 = lshr i32 %7, 1
  %11 = and i32 %10, %4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %6

13:                                               ; preds = %6, %3
  %14 = phi i32 [ 0, %3 ], [ %9, %6 ]
  %15 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %0)
  %16 = icmp samesign ult i32 %15, 2
  br i1 %16, label %39, label %17

17:                                               ; preds = %13
  %18 = lshr exact i32 -2147483648, %14
  %19 = zext i32 %18 to i64
  %20 = shl nuw i64 %19, 32
  %21 = zext i32 %0 to i64
  %22 = udiv i64 %20, %21
  %23 = trunc i64 %22 to i32
  %24 = mul i32 %0, %23
  %25 = add i32 %24, %0
  %26 = icmp ult i32 %25, %18
  br i1 %26, label %36, label %27

27:                                               ; preds = %17
  %28 = sub i32 0, %24
  %29 = shl i32 %23, 1
  %30 = shl i32 %28, 1
  %31 = icmp uge i32 %30, %0
  %32 = icmp slt i32 %28, 0
  %33 = or i1 %32, %31
  %34 = zext i1 %33 to i32
  %35 = or disjoint i32 %29, %34
  br label %36

36:                                               ; preds = %17, %27
  %37 = phi i32 [ %35, %27 ], [ %23, %17 ]
  %38 = add i32 %37, 1
  br label %39

39:                                               ; preds = %36, %13, %1
  %40 = phi i32 [ 0, %1 ], [ %38, %36 ], [ 0, %13 ]
  ret i32 %40
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local zeroext i8 @target_u32_gen_more(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %33, label %3

3:                                                ; preds = %1
  %4 = xor i32 %0, -1
  %5 = icmp slt i32 %0, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %3, %6
  %7 = phi i32 [ %10, %6 ], [ -2147483648, %3 ]
  %8 = phi i32 [ %9, %6 ], [ 0, %3 ]
  %9 = add nuw nsw i32 %8, 1
  %10 = lshr i32 %7, 1
  %11 = and i32 %10, %4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %6

13:                                               ; preds = %6, %3
  %14 = phi i32 [ 0, %3 ], [ %9, %6 ]
  %15 = sub nsw i32 31, %14
  %16 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %0)
  %17 = icmp samesign ult i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = trunc i32 %15 to i8
  br label %33

20:                                               ; preds = %13
  %21 = lshr exact i32 -2147483648, %14
  %22 = zext i32 %21 to i64
  %23 = shl nuw i64 %22, 32
  %24 = zext i32 %0 to i64
  %25 = udiv i64 %23, %24
  %26 = trunc i64 %25 to i32
  %27 = add i32 %26, 1
  %28 = mul i32 %27, %0
  %29 = icmp ult i32 %28, %21
  %30 = trunc i32 %15 to i8
  %31 = or i8 %30, 64
  %32 = select i1 %29, i8 %30, i8 %31
  br label %33

33:                                               ; preds = %20, %18, %1
  %34 = phi i8 [ 0, %1 ], [ %19, %18 ], [ %32, %20 ]
  ret i8 %34
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64_gen_magic(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %58, label %3

3:                                                ; preds = %1
  %4 = icmp ult i64 %0, 4294967296
  br i1 %4, label %17, label %5

5:                                                ; preds = %3
  %6 = lshr i64 %0, 32
  %7 = trunc nuw i64 %6 to i32
  %8 = xor i32 %7, -1
  %9 = icmp slt i64 %0, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %5, %10
  %11 = phi i32 [ %14, %10 ], [ -2147483648, %5 ]
  %12 = phi i32 [ %13, %10 ], [ 0, %5 ]
  %13 = add nuw nsw i32 %12, 1
  %14 = lshr i32 %11, 1
  %15 = and i32 %14, %8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %10

17:                                               ; preds = %3
  %18 = trunc nuw i64 %0 to i32
  %19 = xor i32 %18, -1
  %20 = icmp slt i32 %18, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %17, %21
  %22 = phi i32 [ %25, %21 ], [ -2147483648, %17 ]
  %23 = phi i32 [ %24, %21 ], [ 0, %17 ]
  %24 = add nuw nsw i32 %23, 1
  %25 = lshr i32 %22, 1
  %26 = and i32 %25, %19
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %21

28:                                               ; preds = %21
  %29 = add nuw nsw i32 %23, 33
  br label %30

30:                                               ; preds = %10, %28, %17, %5
  %31 = phi i32 [ 0, %5 ], [ 32, %17 ], [ %29, %28 ], [ %13, %10 ]
  %32 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %0)
  %33 = icmp samesign ult i64 %32, 2
  br i1 %33, label %58, label %34

34:                                               ; preds = %30
  %35 = sub nsw i32 63, %31
  %36 = zext nneg i32 %35 to i64
  %37 = shl nuw i64 1, %36
  %38 = zext i64 %37 to i128
  %39 = shl nuw i128 %38, 64
  %40 = zext i64 %0 to i128
  %41 = udiv i128 %39, %40
  %42 = trunc i128 %41 to i64
  %43 = mul i64 %0, %42
  %44 = add i64 %43, %0
  %45 = icmp ult i64 %44, %37
  br i1 %45, label %55, label %46

46:                                               ; preds = %34
  %47 = sub i64 0, %43
  %48 = shl i64 %42, 1
  %49 = shl i64 %47, 1
  %50 = icmp uge i64 %49, %0
  %51 = icmp slt i64 %47, 0
  %52 = or i1 %51, %50
  %53 = zext i1 %52 to i64
  %54 = or disjoint i64 %48, %53
  br label %55

55:                                               ; preds = %34, %46
  %56 = phi i64 [ %54, %46 ], [ %42, %34 ]
  %57 = add i64 %56, 1
  br label %58

58:                                               ; preds = %55, %30, %1
  %59 = phi i64 [ 0, %1 ], [ %57, %55 ], [ 0, %30 ]
  ret i64 %59
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local zeroext i8 @target_u64_gen_more(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %51, label %3

3:                                                ; preds = %1
  %4 = icmp ult i64 %0, 4294967296
  br i1 %4, label %17, label %5

5:                                                ; preds = %3
  %6 = lshr i64 %0, 32
  %7 = trunc nuw i64 %6 to i32
  %8 = xor i32 %7, -1
  %9 = icmp slt i64 %0, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %5, %10
  %11 = phi i32 [ %14, %10 ], [ -2147483648, %5 ]
  %12 = phi i32 [ %13, %10 ], [ 0, %5 ]
  %13 = add nuw nsw i32 %12, 1
  %14 = lshr i32 %11, 1
  %15 = and i32 %14, %8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %10

17:                                               ; preds = %3
  %18 = trunc nuw i64 %0 to i32
  %19 = xor i32 %18, -1
  %20 = icmp slt i32 %18, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %17, %21
  %22 = phi i32 [ %25, %21 ], [ -2147483648, %17 ]
  %23 = phi i32 [ %24, %21 ], [ 0, %17 ]
  %24 = add nuw nsw i32 %23, 1
  %25 = lshr i32 %22, 1
  %26 = and i32 %25, %19
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %21

28:                                               ; preds = %21
  %29 = add nuw nsw i32 %23, 33
  br label %30

30:                                               ; preds = %10, %28, %17, %5
  %31 = phi i32 [ 0, %5 ], [ 32, %17 ], [ %29, %28 ], [ %13, %10 ]
  %32 = sub nsw i32 63, %31
  %33 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %0)
  %34 = icmp samesign ult i64 %33, 2
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = trunc i32 %32 to i8
  br label %51

37:                                               ; preds = %30
  %38 = zext nneg i32 %32 to i64
  %39 = shl nuw i64 1, %38
  %40 = zext i64 %39 to i128
  %41 = shl nuw i128 %40, 64
  %42 = zext i64 %0 to i128
  %43 = udiv i128 %41, %42
  %44 = trunc i128 %43 to i64
  %45 = add i64 %44, 1
  %46 = mul i64 %45, %0
  %47 = icmp ult i64 %46, %39
  %48 = trunc i32 %32 to i8
  %49 = or i8 %48, 64
  %50 = select i1 %47, i8 %48, i8 %49
  br label %51

51:                                               ; preds = %37, %35, %1
  %52 = phi i8 [ 0, %1 ], [ %36, %35 ], [ %50, %37 ]
  ret i8 %52
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #1

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
