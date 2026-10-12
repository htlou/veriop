; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/947f8b2/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/947f8b2/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_u32_do_ptr(i32 noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = icmp sgt i8 %4, -1
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = and i32 %5, 31
  %9 = lshr i32 %0, %8
  br label %26

10:                                               ; preds = %2
  %11 = load i32, ptr %1, align 4
  %12 = zext i32 %11 to i64
  %13 = zext i32 %0 to i64
  %14 = mul nuw i64 %12, %13
  %15 = lshr i64 %14, 32
  %16 = trunc nuw i64 %15 to i32
  %17 = icmp samesign ult i8 %4, 64
  br i1 %17, label %24, label %18

18:                                               ; preds = %10
  %19 = sub i32 %0, %16
  %20 = lshr i32 %19, 1
  %21 = add i32 %20, %16
  %22 = and i32 %5, 31
  %23 = lshr i32 %21, %22
  br label %26

24:                                               ; preds = %10
  %25 = lshr i32 %16, %5
  br label %26

26:                                               ; preds = %7, %18, %24
  %27 = phi i32 [ %9, %7 ], [ %23, %18 ], [ %25, %24 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_s32_do_ptr(i32 noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %4 = load i8, ptr %3, align 4
  %5 = ashr i8 %4, 7
  %6 = sext i8 %5 to i32
  %7 = zext i8 %4 to i32
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = and i8 %4, 31
  %12 = zext nneg i8 %11 to i32
  %13 = shl nsw i32 -1, %12
  %14 = xor i32 %13, -1
  %15 = icmp slt i32 %0, 0
  %16 = select i1 %15, i32 %14, i32 0
  %17 = add i32 %16, %0
  %18 = ashr i32 %17, %12
  %19 = xor i32 %18, %6
  %20 = sub i32 %19, %6
  br label %38

21:                                               ; preds = %2
  %22 = load i32, ptr %1, align 4
  %23 = sext i32 %22 to i64
  %24 = sext i32 %0 to i64
  %25 = mul nsw i64 %23, %24
  %26 = lshr i64 %25, 32
  %27 = trunc nuw i64 %26 to i32
  %28 = and i32 %7, 64
  %29 = icmp eq i32 %28, 0
  %30 = xor i32 %0, %6
  %31 = sub i32 %30, %6
  %32 = select i1 %29, i32 0, i32 %31
  %33 = add i32 %32, %27
  %34 = and i32 %7, 31
  %35 = ashr i32 %33, %34
  %36 = lshr i32 %35, 31
  %37 = add nsw i32 %36, %35
  br label %38

38:                                               ; preds = %10, %21
  %39 = phi i32 [ %20, %10 ], [ %37, %21 ]
  ret i32 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_u64_do_ptr(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %4 = load i8, ptr %3, align 8
  %5 = zext i8 %4 to i32
  %6 = icmp sgt i8 %4, -1
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = and i32 %5, 63
  %9 = zext nneg i32 %8 to i64
  %10 = lshr i64 %0, %9
  br label %29

11:                                               ; preds = %2
  %12 = load i64, ptr %1, align 8
  %13 = zext i64 %12 to i128
  %14 = zext i64 %0 to i128
  %15 = mul nuw i128 %13, %14
  %16 = lshr i128 %15, 64
  %17 = trunc nuw i128 %16 to i64
  %18 = icmp samesign ult i8 %4, 64
  br i1 %18, label %26, label %19

19:                                               ; preds = %11
  %20 = sub i64 %0, %17
  %21 = lshr i64 %20, 1
  %22 = add i64 %21, %17
  %23 = and i32 %5, 63
  %24 = zext nneg i32 %23 to i64
  %25 = lshr i64 %22, %24
  br label %29

26:                                               ; preds = %11
  %27 = zext nneg i8 %4 to i64
  %28 = lshr i64 %17, %27
  br label %29

29:                                               ; preds = %7, %19, %26
  %30 = phi i64 [ %10, %7 ], [ %25, %19 ], [ %28, %26 ]
  ret i64 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_s64_do_ptr(i64 noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %4 = load i8, ptr %3, align 8
  %5 = load i64, ptr %1, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = and i8 %4, 63
  %9 = zext nneg i8 %8 to i64
  %10 = shl nsw i64 -1, %9
  %11 = xor i64 %10, -1
  %12 = icmp slt i64 %0, 0
  %13 = select i1 %12, i64 %11, i64 0
  %14 = add i64 %13, %0
  %15 = ashr i64 %14, %9
  %16 = ashr i8 %4, 7
  %17 = sext i8 %16 to i64
  %18 = xor i64 %15, %17
  %19 = sub nsw i64 %18, %17
  br label %42

20:                                               ; preds = %2
  %21 = sext i64 %5 to i128
  %22 = sext i64 %0 to i128
  %23 = mul nsw i128 %21, %22
  %24 = lshr i128 %23, 64
  %25 = trunc nuw i128 %24 to i64
  %26 = zext i8 %4 to i32
  %27 = and i32 %26, 64
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %20
  %30 = ashr i8 %4, 7
  %31 = sext i8 %30 to i64
  %32 = xor i64 %0, %31
  %33 = sub i64 %32, %31
  %34 = add i64 %33, %25
  br label %35

35:                                               ; preds = %29, %20
  %36 = phi i64 [ %34, %29 ], [ %25, %20 ]
  %37 = and i32 %26, 63
  %38 = zext nneg i32 %37 to i64
  %39 = ashr i64 %36, %38
  %40 = lshr i64 %39, 63
  %41 = add nsw i64 %40, %39
  br label %42

42:                                               ; preds = %7, %35
  %43 = phi i64 [ %19, %7 ], [ %41, %35 ]
  ret i64 %43
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_u32_api(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %58, label %4

4:                                                ; preds = %2
  %5 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %1, i1 true)
  %6 = xor i32 %5, 31
  %7 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %1)
  %8 = icmp samesign ult i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = or disjoint i32 %6, 128
  br label %36

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
  br i1 %20, label %31, label %21

21:                                               ; preds = %11
  %22 = sub i32 0, %18
  %23 = shl nuw nsw i64 %16, 1
  %24 = shl i32 %22, 1
  %25 = icmp uge i32 %24, %1
  %26 = icmp slt i32 %22, 0
  %27 = or i1 %26, %25
  %28 = zext i1 %27 to i64
  %29 = or disjoint i64 %23, %28
  %30 = or disjoint i32 %6, 64
  br label %31

31:                                               ; preds = %21, %11
  %32 = phi i32 [ %30, %21 ], [ %6, %11 ]
  %33 = phi i64 [ %29, %21 ], [ %16, %11 ]
  %34 = add nuw nsw i64 %33, 1
  %35 = and i64 %34, 4294967295
  br label %36

36:                                               ; preds = %9, %31
  %37 = phi i64 [ 0, %9 ], [ %35, %31 ]
  %38 = phi i32 [ %10, %9 ], [ %32, %31 ]
  %39 = and i32 %38, 128
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = and i32 %38, 31
  %43 = lshr i32 %0, %42
  br label %58

44:                                               ; preds = %36
  %45 = zext i32 %0 to i64
  %46 = mul nuw i64 %37, %45
  %47 = lshr i64 %46, 32
  %48 = trunc nuw i64 %47 to i32
  %49 = icmp samesign ult i32 %38, 64
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = sub i32 %0, %48
  %52 = lshr i32 %51, 1
  %53 = add i32 %52, %48
  %54 = and i32 %38, 31
  %55 = lshr i32 %53, %54
  br label %58

56:                                               ; preds = %44
  %57 = lshr i32 %48, %38
  br label %58

58:                                               ; preds = %56, %50, %41, %2
  %59 = phi i32 [ 0, %2 ], [ %43, %41 ], [ %55, %50 ], [ %57, %56 ]
  ret i32 %59
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_api(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %85, label %4

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
  br label %51

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
  %43 = phi i8 [ %41, %31 ], [ %30, %29 ]
  %44 = phi i32 [ %39, %31 ], [ %24, %29 ]
  %45 = add i32 %44, 1
  %46 = or i8 %43, -128
  %47 = xor i32 %44, -1
  %48 = select i1 %5, i8 %46, i8 %43
  %49 = select i1 %5, i32 %47, i32 %45
  %50 = sext i32 %49 to i64
  br label %51

51:                                               ; preds = %11, %42
  %52 = phi i64 [ 0, %11 ], [ %50, %42 ]
  %53 = phi i8 [ %16, %11 ], [ %48, %42 ]
  %54 = ashr i8 %53, 7
  %55 = sext i8 %54 to i32
  %56 = zext i8 %53 to i32
  %57 = and i32 %56, 32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %51
  %60 = and i8 %53, 31
  %61 = zext nneg i8 %60 to i32
  %62 = shl nsw i32 -1, %61
  %63 = xor i32 %62, -1
  %64 = icmp slt i32 %0, 0
  %65 = select i1 %64, i32 %63, i32 0
  %66 = add i32 %65, %0
  %67 = ashr i32 %66, %61
  %68 = xor i32 %67, %55
  %69 = sub i32 %68, %55
  br label %85

70:                                               ; preds = %51
  %71 = sext i32 %0 to i64
  %72 = mul nsw i64 %52, %71
  %73 = lshr i64 %72, 32
  %74 = trunc nuw i64 %73 to i32
  %75 = and i32 %56, 64
  %76 = icmp eq i32 %75, 0
  %77 = xor i32 %0, %55
  %78 = sub i32 %77, %55
  %79 = select i1 %76, i32 0, i32 %78
  %80 = add i32 %79, %74
  %81 = and i32 %56, 31
  %82 = ashr i32 %80, %81
  %83 = lshr i32 %82, 31
  %84 = add nsw i32 %83, %82
  br label %85

85:                                               ; preds = %70, %59, %2
  %86 = phi i32 [ 0, %2 ], [ %69, %59 ], [ %84, %70 ]
  ret i32 %86
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64_api(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %97, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %9 = icmp samesign ult i64 %8, 2
  %10 = zext nneg i32 %7 to i64
  br i1 %9, label %67, label %11

11:                                               ; preds = %4
  %12 = shl nuw i64 1, %10
  %13 = icmp ult i64 %12, %1
  br i1 %13, label %14, label %62

14:                                               ; preds = %11
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
  %60 = shl i64 %35, 32
  %61 = add i64 %55, %60
  br label %62

62:                                               ; preds = %54, %11
  %63 = phi i64 [ %59, %54 ], [ -1, %11 ]
  %64 = phi i64 [ %61, %54 ], [ -1, %11 ]
  %65 = sub i64 %1, %63
  %66 = icmp ult i64 %65, %12
  br i1 %66, label %88, label %69

67:                                               ; preds = %4
  %68 = lshr i64 %0, %10
  br label %97

69:                                               ; preds = %62
  %70 = shl i64 %64, 1
  %71 = icmp slt i64 %63, 0
  %72 = shl i64 %63, 1
  %73 = icmp uge i64 %72, %1
  %74 = or i1 %71, %73
  %75 = zext i1 %74 to i64
  %76 = or disjoint i64 %70, %75
  %77 = add i64 %76, 1
  %78 = zext i64 %77 to i128
  %79 = zext i64 %0 to i128
  %80 = mul nuw i128 %78, %79
  %81 = lshr i128 %80, 64
  %82 = trunc nuw i128 %81 to i64
  %83 = zext nneg i32 %7 to i64
  %84 = sub i64 %0, %82
  %85 = lshr i64 %84, 1
  %86 = add i64 %85, %82
  %87 = lshr i64 %86, %83
  br label %97

88:                                               ; preds = %62
  %89 = zext nneg i32 %7 to i64
  %90 = add i64 %64, 1
  %91 = zext i64 %90 to i128
  %92 = zext i64 %0 to i128
  %93 = mul nuw i128 %91, %92
  %94 = lshr i128 %93, 64
  %95 = trunc nuw i128 %94 to i64
  %96 = lshr i64 %95, %89
  br label %97

97:                                               ; preds = %88, %69, %67, %2
  %98 = phi i64 [ 0, %2 ], [ %68, %67 ], [ %87, %69 ], [ %96, %88 ]
  ret i64 %98
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_s64_api(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %135, label %4

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
  br label %99

18:                                               ; preds = %4
  %19 = sub nsw i32 62, %8
  %20 = zext nneg i32 %19 to i64
  %21 = shl nuw i64 1, %20
  %22 = icmp ult i64 %21, %6
  br i1 %22, label %23, label %71

23:                                               ; preds = %18
  %24 = shl i64 %6, %7
  %25 = shl i64 %21, %7
  %26 = lshr i64 %24, 32
  %27 = and i64 %24, 4294967295
  %28 = udiv i64 %25, %26
  %29 = mul i64 %28, %26
  %30 = urem i64 %25, %26
  br label %31

31:                                               ; preds = %39, %23
  %32 = phi i64 [ %28, %23 ], [ %40, %39 ]
  %33 = phi i64 [ %30, %23 ], [ %41, %39 ]
  %34 = icmp ugt i64 %32, 4294967295
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = mul nuw i64 %32, %27
  %37 = shl i64 %33, 32
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35, %31
  %40 = add i64 %32, -1
  %41 = add i64 %33, %26
  %42 = icmp ult i64 %41, 4294967296
  br i1 %42, label %31, label %43

43:                                               ; preds = %39, %35
  %44 = phi i64 [ %40, %39 ], [ %32, %35 ]
  %45 = shl i64 %25, 32
  %46 = mul i64 %44, %24
  %47 = sub i64 %45, %46
  %48 = udiv i64 %47, %26
  %49 = mul i64 %48, %26
  %50 = urem i64 %47, %26
  br label %51

51:                                               ; preds = %59, %43
  %52 = phi i64 [ %48, %43 ], [ %60, %59 ]
  %53 = phi i64 [ %50, %43 ], [ %61, %59 ]
  %54 = icmp ugt i64 %52, 4294967295
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = mul nuw i64 %52, %27
  %57 = shl i64 %53, 32
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55, %51
  %60 = add i64 %52, -1
  %61 = add i64 %53, %26
  %62 = icmp ult i64 %61, 4294967296
  br i1 %62, label %51, label %63

63:                                               ; preds = %59, %55
  %64 = phi i64 [ %60, %59 ], [ %52, %55 ]
  %65 = shl i64 %47, 32
  %66 = mul i64 %64, %24
  %67 = sub i64 %65, %66
  %68 = lshr i64 %67, %7
  %69 = shl i64 %44, 32
  %70 = add i64 %64, %69
  br label %71

71:                                               ; preds = %63, %18
  %72 = phi i64 [ %68, %63 ], [ -1, %18 ]
  %73 = phi i64 [ %70, %63 ], [ -1, %18 ]
  %74 = sub i64 %6, %72
  %75 = zext nneg i32 %9 to i64
  %76 = lshr i64 %74, %75
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = trunc nsw i32 %19 to i8
  br label %90

80:                                               ; preds = %71
  %81 = shl i64 %73, 1
  %82 = shl i64 %72, 1
  %83 = icmp uge i64 %82, %6
  %84 = icmp slt i64 %72, 0
  %85 = or i1 %84, %83
  %86 = zext i1 %85 to i64
  %87 = or disjoint i64 %81, %86
  %88 = trunc nuw nsw i32 %9 to i8
  %89 = or disjoint i8 %88, 64
  br label %90

90:                                               ; preds = %78, %80
  %91 = phi i8 [ %89, %80 ], [ %79, %78 ]
  %92 = phi i64 [ %87, %80 ], [ %73, %78 ]
  %93 = add i64 %92, 1
  %94 = or i8 %91, -128
  %95 = xor i64 %92, -1
  %96 = select i1 %5, i8 %94, i8 %91
  %97 = select i1 %5, i64 %95, i64 %93
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %12, %90
  %100 = phi i8 [ %17, %12 ], [ %96, %90 ]
  %101 = and i8 %100, 63
  %102 = zext nneg i8 %101 to i64
  %103 = shl nsw i64 -1, %102
  %104 = xor i64 %103, -1
  %105 = icmp slt i64 %0, 0
  %106 = select i1 %105, i64 %104, i64 0
  %107 = add i64 %106, %0
  %108 = ashr i64 %107, %102
  %109 = ashr i8 %100, 7
  %110 = sext i8 %109 to i64
  %111 = xor i64 %108, %110
  %112 = sub nsw i64 %111, %110
  br label %135

113:                                              ; preds = %90
  %114 = sext i64 %97 to i128
  %115 = sext i64 %0 to i128
  %116 = mul nsw i128 %114, %115
  %117 = lshr i128 %116, 64
  %118 = trunc nuw i128 %117 to i64
  %119 = zext i8 %96 to i32
  %120 = and i32 %119, 64
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %113
  %123 = ashr i8 %96, 7
  %124 = sext i8 %123 to i64
  %125 = xor i64 %0, %124
  %126 = sub i64 %125, %124
  %127 = add i64 %126, %118
  br label %128

128:                                              ; preds = %122, %113
  %129 = phi i64 [ %127, %122 ], [ %118, %113 ]
  %130 = and i32 %119, 63
  %131 = zext nneg i32 %130 to i64
  %132 = ashr i64 %129, %131
  %133 = lshr i64 %132, 63
  %134 = add nsw i64 %133, %132
  br label %135

135:                                              ; preds = %128, %99, %2
  %136 = phi i64 [ 0, %2 ], [ %112, %99 ], [ %134, %128 ]
  ret i64 %136
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @target_sizeof_u32_t() local_unnamed_addr #1 {
  ret i32 8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
