; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c2ee283/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c2ee283/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_clz32(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 16777216
  br i1 %4, label %10, label %5

5:                                                ; preds = %10, %3
  %6 = phi i32 [ 8, %3 ], [ %14, %10 ]
  %7 = phi i32 [ -16777216, %3 ], [ %13, %10 ]
  %8 = and i32 %7, %0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %17

10:                                               ; preds = %3, %10
  %11 = phi i32 [ %13, %10 ], [ -16777216, %3 ]
  %12 = phi i32 [ %14, %10 ], [ 8, %3 ]
  %13 = lshr i32 %11, 8
  %14 = add nuw nsw i32 %12, 8
  %15 = and i32 %13, %0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %10, label %5

17:                                               ; preds = %5, %17
  %18 = phi i32 [ %21, %17 ], [ %7, %5 ]
  %19 = phi i32 [ %20, %17 ], [ %6, %5 ]
  %20 = add nsw i32 %19, -1
  %21 = shl i32 %18, 1
  %22 = and i32 %21, %0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %17

24:                                               ; preds = %17, %5, %1
  %25 = phi i32 [ 32, %1 ], [ %6, %5 ], [ %20, %17 ]
  ret i32 %25
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_clz64(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult i64 %0, 4294967296
  br i1 %2, label %26, label %3

3:                                                ; preds = %1
  %4 = lshr i64 %0, 32
  %5 = trunc nuw i64 %4 to i32
  %6 = icmp ult i64 %0, 72057594037927936
  br i1 %6, label %12, label %7

7:                                                ; preds = %12, %3
  %8 = phi i32 [ 8, %3 ], [ %16, %12 ]
  %9 = phi i32 [ -16777216, %3 ], [ %15, %12 ]
  %10 = and i32 %9, %5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %53, label %19

12:                                               ; preds = %3, %12
  %13 = phi i32 [ %15, %12 ], [ -16777216, %3 ]
  %14 = phi i32 [ %16, %12 ], [ 8, %3 ]
  %15 = lshr i32 %13, 8
  %16 = add nuw nsw i32 %14, 8
  %17 = and i32 %15, %5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %12, label %7

19:                                               ; preds = %7, %19
  %20 = phi i32 [ %23, %19 ], [ %9, %7 ]
  %21 = phi i32 [ %22, %19 ], [ %8, %7 ]
  %22 = add nsw i32 %21, -1
  %23 = shl i32 %20, 1
  %24 = and i32 %23, %5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %53, label %19

26:                                               ; preds = %1
  %27 = trunc nuw i64 %0 to i32
  %28 = icmp eq i64 %0, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %26
  %30 = icmp samesign ult i64 %0, 16777216
  br i1 %30, label %36, label %31

31:                                               ; preds = %36, %29
  %32 = phi i32 [ 8, %29 ], [ %40, %36 ]
  %33 = phi i32 [ -16777216, %29 ], [ %39, %36 ]
  %34 = and i32 %33, %27
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %50, label %43

36:                                               ; preds = %29, %36
  %37 = phi i32 [ %39, %36 ], [ -16777216, %29 ]
  %38 = phi i32 [ %40, %36 ], [ 8, %29 ]
  %39 = lshr i32 %37, 8
  %40 = add nuw nsw i32 %38, 8
  %41 = and i32 %39, %27
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %36, label %31

43:                                               ; preds = %31, %43
  %44 = phi i32 [ %47, %43 ], [ %33, %31 ]
  %45 = phi i32 [ %46, %43 ], [ %32, %31 ]
  %46 = add nsw i32 %45, -1
  %47 = shl i32 %44, 1
  %48 = and i32 %47, %27
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %43

50:                                               ; preds = %43, %26, %31
  %51 = phi i32 [ 32, %26 ], [ %32, %31 ], [ %46, %43 ]
  %52 = add nsw i32 %51, 32
  br label %53

53:                                               ; preds = %19, %7, %50
  %54 = phi i32 [ %52, %50 ], [ %8, %7 ], [ %22, %19 ]
  ret i32 %54
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_u32_api(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %81, label %4

4:                                                ; preds = %2
  %5 = icmp ult i32 %1, 16777216
  br i1 %5, label %11, label %6

6:                                                ; preds = %11, %4
  %7 = phi i32 [ 8, %4 ], [ %15, %11 ]
  %8 = phi i32 [ -16777216, %4 ], [ %14, %11 ]
  %9 = and i32 %8, %1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %18

11:                                               ; preds = %4, %11
  %12 = phi i32 [ %14, %11 ], [ -16777216, %4 ]
  %13 = phi i32 [ %15, %11 ], [ 8, %4 ]
  %14 = lshr i32 %12, 8
  %15 = add nuw nsw i32 %13, 8
  %16 = and i32 %14, %1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %11, label %6

18:                                               ; preds = %6, %18
  %19 = phi i32 [ %22, %18 ], [ %8, %6 ]
  %20 = phi i32 [ %21, %18 ], [ %7, %6 ]
  %21 = add nsw i32 %20, -1
  %22 = shl i32 %19, 1
  %23 = and i32 %22, %1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %18

25:                                               ; preds = %18, %6
  %26 = phi i32 [ %7, %6 ], [ %21, %18 ]
  %27 = sub nsw i32 31, %26
  %28 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %1)
  %29 = icmp samesign ult i32 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = trunc i32 %27 to i8
  br label %60

32:                                               ; preds = %25
  %33 = lshr exact i32 -2147483648, %26
  %34 = zext i32 %33 to i64
  %35 = shl nuw i64 %34, 32
  %36 = zext i32 %1 to i64
  %37 = udiv i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = mul i32 %1, %38
  %40 = add i32 %39, %1
  %41 = icmp ult i32 %40, %33
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = trunc i32 %27 to i8
  br label %55

44:                                               ; preds = %32
  %45 = sub i32 0, %39
  %46 = shl i32 %38, 1
  %47 = shl i32 %45, 1
  %48 = icmp uge i32 %47, %1
  %49 = icmp slt i32 %45, 0
  %50 = or i1 %49, %48
  %51 = zext i1 %50 to i32
  %52 = or disjoint i32 %46, %51
  %53 = trunc i32 %27 to i8
  %54 = or i8 %53, 64
  br label %55

55:                                               ; preds = %42, %44
  %56 = phi i32 [ %52, %44 ], [ %38, %42 ]
  %57 = phi i8 [ %54, %44 ], [ %43, %42 ]
  %58 = add i32 %56, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %30, %55
  %61 = phi i8 [ %31, %30 ], [ %57, %55 ]
  %62 = zext nneg i8 %61 to i32
  %63 = lshr i32 %0, %62
  br label %81

64:                                               ; preds = %55
  %65 = zext i32 %58 to i64
  %66 = zext i32 %0 to i64
  %67 = mul nuw i64 %65, %66
  %68 = lshr i64 %67, 32
  %69 = trunc nuw i64 %68 to i32
  %70 = zext i8 %57 to i32
  %71 = and i32 %70, 64
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %64
  %74 = sub i32 %0, %69
  %75 = lshr i32 %74, 1
  %76 = add i32 %75, %69
  %77 = and i32 %70, 31
  %78 = lshr i32 %76, %77
  br label %81

79:                                               ; preds = %64
  %80 = lshr i32 %69, %70
  br label %81

81:                                               ; preds = %79, %73, %60, %2
  %82 = phi i32 [ 0, %2 ], [ %63, %60 ], [ %78, %73 ], [ %80, %79 ]
  ret i32 %82
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_s32_api(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %107, label %4

4:                                                ; preds = %2
  %5 = icmp slt i32 %1, 0
  %6 = tail call i32 @llvm.abs.i32(i32 range(i32 1, 0) %1, i1 false)
  %7 = icmp ult i32 %6, 16777216
  br i1 %7, label %13, label %8

8:                                                ; preds = %13, %4
  %9 = phi i32 [ 8, %4 ], [ %17, %13 ]
  %10 = phi i32 [ -16777216, %4 ], [ %16, %13 ]
  %11 = and i32 %10, %6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %20

13:                                               ; preds = %4, %13
  %14 = phi i32 [ %16, %13 ], [ -16777216, %4 ]
  %15 = phi i32 [ %17, %13 ], [ 8, %4 ]
  %16 = lshr i32 %14, 8
  %17 = add nuw nsw i32 %15, 8
  %18 = and i32 %16, %6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %13, label %8

20:                                               ; preds = %8, %20
  %21 = phi i32 [ %24, %20 ], [ %10, %8 ]
  %22 = phi i32 [ %23, %20 ], [ %9, %8 ]
  %23 = add nsw i32 %22, -1
  %24 = shl i32 %21, 1
  %25 = and i32 %24, %6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %20

27:                                               ; preds = %20, %8
  %28 = phi i32 [ %9, %8 ], [ %23, %20 ]
  %29 = sub nsw i32 31, %28
  %30 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %6)
  %31 = icmp samesign ult i32 %30, 2
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = lshr i32 %1, 24
  %34 = and i32 %33, 128
  %35 = or i32 %29, %34
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 31
  br label %73

38:                                               ; preds = %27
  %39 = sub i32 30, %28
  %40 = shl nuw i32 1, %39
  %41 = zext i32 %40 to i64
  %42 = shl nuw i64 %41, 32
  %43 = zext i32 %6 to i64
  %44 = udiv i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = mul i32 %6, %45
  %47 = add i32 %46, %6
  %48 = lshr exact i32 -2147483648, %28
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = trunc i32 %39 to i8
  br label %63

52:                                               ; preds = %38
  %53 = sub i32 0, %46
  %54 = shl i32 %45, 1
  %55 = shl i32 %53, 1
  %56 = icmp uge i32 %55, %6
  %57 = icmp slt i32 %53, 0
  %58 = or i1 %57, %56
  %59 = zext i1 %58 to i32
  %60 = or disjoint i32 %54, %59
  %61 = trunc i32 %29 to i8
  %62 = or i8 %61, 64
  br label %63

63:                                               ; preds = %50, %52
  %64 = phi i32 [ %60, %52 ], [ %45, %50 ]
  %65 = phi i8 [ %62, %52 ], [ %51, %50 ]
  %66 = add i32 %64, 1
  %67 = or i8 %65, -128
  %68 = xor i32 %64, -1
  %69 = select i1 %5, i8 %67, i8 %65
  %70 = select i1 %5, i32 %68, i32 %66
  %71 = and i8 %69, 31
  %72 = icmp eq i32 %70, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %32, %63
  %74 = phi i8 [ %37, %32 ], [ %71, %63 ]
  %75 = phi i8 [ %36, %32 ], [ %69, %63 ]
  %76 = ashr i8 %75, 7
  %77 = sext i8 %76 to i32
  %78 = zext nneg i8 %74 to i32
  %79 = shl nsw i32 -1, %78
  %80 = xor i32 %79, -1
  %81 = icmp slt i32 %0, 0
  %82 = select i1 %81, i32 %80, i32 0
  %83 = add i32 %82, %0
  %84 = ashr i32 %83, %78
  %85 = xor i32 %84, %77
  %86 = sub i32 %85, %77
  br label %107

87:                                               ; preds = %63
  %88 = sext i32 %70 to i64
  %89 = sext i32 %0 to i64
  %90 = mul nsw i64 %88, %89
  %91 = lshr i64 %90, 32
  %92 = trunc nuw i64 %91 to i32
  %93 = and i8 %69, 64
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %87
  %96 = ashr i8 %69, 7
  %97 = sext i8 %96 to i32
  %98 = xor i32 %0, %97
  %99 = sub i32 %98, %97
  %100 = add i32 %99, %92
  br label %101

101:                                              ; preds = %95, %87
  %102 = phi i32 [ %100, %95 ], [ %92, %87 ]
  %103 = zext nneg i8 %71 to i32
  %104 = ashr i32 %102, %103
  %105 = lshr i32 %104, 31
  %106 = add nsw i32 %105, %104
  br label %107

107:                                              ; preds = %101, %73, %2
  %108 = phi i32 [ 0, %2 ], [ %106, %101 ], [ %86, %73 ]
  ret i32 %108
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_u32_gen_magic(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %50, label %3

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 16777216
  br i1 %4, label %10, label %5

5:                                                ; preds = %10, %3
  %6 = phi i32 [ 8, %3 ], [ %14, %10 ]
  %7 = phi i32 [ -16777216, %3 ], [ %13, %10 ]
  %8 = and i32 %7, %0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %17

10:                                               ; preds = %3, %10
  %11 = phi i32 [ %13, %10 ], [ -16777216, %3 ]
  %12 = phi i32 [ %14, %10 ], [ 8, %3 ]
  %13 = lshr i32 %11, 8
  %14 = add nuw nsw i32 %12, 8
  %15 = and i32 %13, %0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %10, label %5

17:                                               ; preds = %5, %17
  %18 = phi i32 [ %21, %17 ], [ %7, %5 ]
  %19 = phi i32 [ %20, %17 ], [ %6, %5 ]
  %20 = add nsw i32 %19, -1
  %21 = shl i32 %18, 1
  %22 = and i32 %21, %0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %17

24:                                               ; preds = %17, %5
  %25 = phi i32 [ %6, %5 ], [ %20, %17 ]
  %26 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %0)
  %27 = icmp samesign ult i32 %26, 2
  br i1 %27, label %50, label %28

28:                                               ; preds = %24
  %29 = lshr exact i32 -2147483648, %25
  %30 = zext i32 %29 to i64
  %31 = shl nuw i64 %30, 32
  %32 = zext i32 %0 to i64
  %33 = udiv i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = mul i32 %0, %34
  %36 = add i32 %35, %0
  %37 = icmp ult i32 %36, %29
  br i1 %37, label %47, label %38

38:                                               ; preds = %28
  %39 = sub i32 0, %35
  %40 = shl i32 %34, 1
  %41 = shl i32 %39, 1
  %42 = icmp uge i32 %41, %0
  %43 = icmp slt i32 %39, 0
  %44 = or i1 %43, %42
  %45 = zext i1 %44 to i32
  %46 = or disjoint i32 %40, %45
  br label %47

47:                                               ; preds = %28, %38
  %48 = phi i32 [ %46, %38 ], [ %34, %28 ]
  %49 = add i32 %48, 1
  br label %50

50:                                               ; preds = %47, %24, %1
  %51 = phi i32 [ 0, %1 ], [ %49, %47 ], [ 0, %24 ]
  ret i32 %51
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local zeroext i8 @target_u32_gen_more(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %44, label %3

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 16777216
  br i1 %4, label %10, label %5

5:                                                ; preds = %10, %3
  %6 = phi i32 [ 8, %3 ], [ %14, %10 ]
  %7 = phi i32 [ -16777216, %3 ], [ %13, %10 ]
  %8 = and i32 %7, %0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %17

10:                                               ; preds = %3, %10
  %11 = phi i32 [ %13, %10 ], [ -16777216, %3 ]
  %12 = phi i32 [ %14, %10 ], [ 8, %3 ]
  %13 = lshr i32 %11, 8
  %14 = add nuw nsw i32 %12, 8
  %15 = and i32 %13, %0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %10, label %5

17:                                               ; preds = %5, %17
  %18 = phi i32 [ %21, %17 ], [ %7, %5 ]
  %19 = phi i32 [ %20, %17 ], [ %6, %5 ]
  %20 = add nsw i32 %19, -1
  %21 = shl i32 %18, 1
  %22 = and i32 %21, %0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %17

24:                                               ; preds = %17, %5
  %25 = phi i32 [ %6, %5 ], [ %20, %17 ]
  %26 = sub nsw i32 31, %25
  %27 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %0)
  %28 = icmp samesign ult i32 %27, 2
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = trunc i32 %26 to i8
  br label %44

31:                                               ; preds = %24
  %32 = lshr exact i32 -2147483648, %25
  %33 = zext i32 %32 to i64
  %34 = shl nuw i64 %33, 32
  %35 = zext i32 %0 to i64
  %36 = udiv i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = add i32 %37, 1
  %39 = mul i32 %38, %0
  %40 = icmp ult i32 %39, %32
  %41 = trunc i32 %26 to i8
  %42 = or i8 %41, 64
  %43 = select i1 %40, i8 %41, i8 %42
  br label %44

44:                                               ; preds = %31, %29, %1
  %45 = phi i8 [ 0, %1 ], [ %30, %29 ], [ %43, %31 ]
  ret i8 %45
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64_gen_magic(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %81, label %3

3:                                                ; preds = %1
  %4 = icmp ult i64 %0, 4294967296
  br i1 %4, label %28, label %5

5:                                                ; preds = %3
  %6 = lshr i64 %0, 32
  %7 = trunc nuw i64 %6 to i32
  %8 = icmp ult i64 %0, 72057594037927936
  br i1 %8, label %14, label %9

9:                                                ; preds = %14, %5
  %10 = phi i32 [ 8, %5 ], [ %18, %14 ]
  %11 = phi i32 [ -16777216, %5 ], [ %17, %14 ]
  %12 = and i32 %11, %7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %53, label %21

14:                                               ; preds = %5, %14
  %15 = phi i32 [ %17, %14 ], [ -16777216, %5 ]
  %16 = phi i32 [ %18, %14 ], [ 8, %5 ]
  %17 = lshr i32 %15, 8
  %18 = add nuw nsw i32 %16, 8
  %19 = and i32 %17, %7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %14, label %9

21:                                               ; preds = %9, %21
  %22 = phi i32 [ %25, %21 ], [ %11, %9 ]
  %23 = phi i32 [ %24, %21 ], [ %10, %9 ]
  %24 = add nsw i32 %23, -1
  %25 = shl i32 %22, 1
  %26 = and i32 %25, %7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %53, label %21

28:                                               ; preds = %3
  %29 = trunc nuw i64 %0 to i32
  %30 = icmp samesign ult i64 %0, 16777216
  br i1 %30, label %36, label %31

31:                                               ; preds = %36, %28
  %32 = phi i32 [ 8, %28 ], [ %40, %36 ]
  %33 = phi i32 [ -16777216, %28 ], [ %39, %36 ]
  %34 = and i32 %33, %29
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %50, label %43

36:                                               ; preds = %28, %36
  %37 = phi i32 [ %39, %36 ], [ -16777216, %28 ]
  %38 = phi i32 [ %40, %36 ], [ 8, %28 ]
  %39 = lshr i32 %37, 8
  %40 = add nuw nsw i32 %38, 8
  %41 = and i32 %39, %29
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %36, label %31

43:                                               ; preds = %31, %43
  %44 = phi i32 [ %47, %43 ], [ %33, %31 ]
  %45 = phi i32 [ %46, %43 ], [ %32, %31 ]
  %46 = add nsw i32 %45, -1
  %47 = shl i32 %44, 1
  %48 = and i32 %47, %29
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %43

50:                                               ; preds = %43, %31
  %51 = phi i32 [ %32, %31 ], [ %46, %43 ]
  %52 = add nsw i32 %51, 32
  br label %53

53:                                               ; preds = %21, %50, %9
  %54 = phi i32 [ %52, %50 ], [ %10, %9 ], [ %24, %21 ]
  %55 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %0)
  %56 = icmp samesign ult i64 %55, 2
  br i1 %56, label %81, label %57

57:                                               ; preds = %53
  %58 = sub nsw i32 63, %54
  %59 = zext nneg i32 %58 to i64
  %60 = shl nuw i64 1, %59
  %61 = zext i64 %60 to i128
  %62 = shl nuw i128 %61, 64
  %63 = zext i64 %0 to i128
  %64 = udiv i128 %62, %63
  %65 = trunc i128 %64 to i64
  %66 = mul i64 %0, %65
  %67 = add i64 %66, %0
  %68 = icmp ult i64 %67, %60
  br i1 %68, label %78, label %69

69:                                               ; preds = %57
  %70 = sub i64 0, %66
  %71 = shl i64 %65, 1
  %72 = shl i64 %70, 1
  %73 = icmp uge i64 %72, %0
  %74 = icmp slt i64 %70, 0
  %75 = or i1 %74, %73
  %76 = zext i1 %75 to i64
  %77 = or disjoint i64 %71, %76
  br label %78

78:                                               ; preds = %57, %69
  %79 = phi i64 [ %77, %69 ], [ %65, %57 ]
  %80 = add i64 %79, 1
  br label %81

81:                                               ; preds = %78, %53, %1
  %82 = phi i64 [ 0, %1 ], [ %80, %78 ], [ 0, %53 ]
  ret i64 %82
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local zeroext i8 @target_u64_gen_more(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %74, label %3

3:                                                ; preds = %1
  %4 = icmp ult i64 %0, 4294967296
  br i1 %4, label %28, label %5

5:                                                ; preds = %3
  %6 = lshr i64 %0, 32
  %7 = trunc nuw i64 %6 to i32
  %8 = icmp ult i64 %0, 72057594037927936
  br i1 %8, label %14, label %9

9:                                                ; preds = %14, %5
  %10 = phi i32 [ 8, %5 ], [ %18, %14 ]
  %11 = phi i32 [ -16777216, %5 ], [ %17, %14 ]
  %12 = and i32 %11, %7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %53, label %21

14:                                               ; preds = %5, %14
  %15 = phi i32 [ %17, %14 ], [ -16777216, %5 ]
  %16 = phi i32 [ %18, %14 ], [ 8, %5 ]
  %17 = lshr i32 %15, 8
  %18 = add nuw nsw i32 %16, 8
  %19 = and i32 %17, %7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %14, label %9

21:                                               ; preds = %9, %21
  %22 = phi i32 [ %25, %21 ], [ %11, %9 ]
  %23 = phi i32 [ %24, %21 ], [ %10, %9 ]
  %24 = add nsw i32 %23, -1
  %25 = shl i32 %22, 1
  %26 = and i32 %25, %7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %53, label %21

28:                                               ; preds = %3
  %29 = trunc nuw i64 %0 to i32
  %30 = icmp samesign ult i64 %0, 16777216
  br i1 %30, label %36, label %31

31:                                               ; preds = %36, %28
  %32 = phi i32 [ 8, %28 ], [ %40, %36 ]
  %33 = phi i32 [ -16777216, %28 ], [ %39, %36 ]
  %34 = and i32 %33, %29
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %50, label %43

36:                                               ; preds = %28, %36
  %37 = phi i32 [ %39, %36 ], [ -16777216, %28 ]
  %38 = phi i32 [ %40, %36 ], [ 8, %28 ]
  %39 = lshr i32 %37, 8
  %40 = add nuw nsw i32 %38, 8
  %41 = and i32 %39, %29
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %36, label %31

43:                                               ; preds = %31, %43
  %44 = phi i32 [ %47, %43 ], [ %33, %31 ]
  %45 = phi i32 [ %46, %43 ], [ %32, %31 ]
  %46 = add nsw i32 %45, -1
  %47 = shl i32 %44, 1
  %48 = and i32 %47, %29
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %43

50:                                               ; preds = %43, %31
  %51 = phi i32 [ %32, %31 ], [ %46, %43 ]
  %52 = add nsw i32 %51, 32
  br label %53

53:                                               ; preds = %21, %50, %9
  %54 = phi i32 [ %52, %50 ], [ %10, %9 ], [ %24, %21 ]
  %55 = sub nsw i32 63, %54
  %56 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %0)
  %57 = icmp samesign ult i64 %56, 2
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = trunc i32 %55 to i8
  br label %74

60:                                               ; preds = %53
  %61 = zext nneg i32 %55 to i64
  %62 = shl nuw i64 1, %61
  %63 = zext i64 %62 to i128
  %64 = shl nuw i128 %63, 64
  %65 = zext i64 %0 to i128
  %66 = udiv i128 %64, %65
  %67 = trunc i128 %66 to i64
  %68 = add i64 %67, 1
  %69 = mul i64 %68, %0
  %70 = icmp ult i64 %69, %62
  %71 = trunc i32 %55 to i8
  %72 = or i8 %71, 64
  %73 = select i1 %70, i8 %71, i8 %72
  br label %74

74:                                               ; preds = %60, %58, %1
  %75 = phi i8 [ 0, %1 ], [ %59, %58 ], [ %73, %60 ]
  ret i8 %75
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
!7 = distinct !{!7, !6}
