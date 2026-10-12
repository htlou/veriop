; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/70d2a45/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/70d2a45/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_u32(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %55, label %4

4:                                                ; preds = %2
  %5 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %1, i1 true)
  %6 = xor i32 %5, 31
  %7 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %1)
  %8 = icmp samesign ult i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = trunc nuw nsw i32 %6 to i8
  br label %35

11:                                               ; preds = %4
  %12 = shl nuw i32 1, %6
  %13 = tail call { i32, i32 } asm "divl $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 0) %1, i32 0, i32 %12) #3
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = extractvalue { i32, i32 } %13, 1
  %16 = sub i32 %1, %15
  %17 = icmp ult i32 %16, %12
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = trunc nuw nsw i32 %6 to i8
  br label %30

20:                                               ; preds = %11
  %21 = shl i32 %14, 1
  %22 = shl i32 %15, 1
  %23 = icmp uge i32 %22, %1
  %24 = icmp slt i32 %15, 0
  %25 = or i1 %24, %23
  %26 = zext i1 %25 to i32
  %27 = or disjoint i32 %21, %26
  %28 = trunc nuw nsw i32 %6 to i8
  %29 = or disjoint i8 %28, 64
  br label %30

30:                                               ; preds = %18, %20
  %31 = phi i32 [ %27, %20 ], [ %14, %18 ]
  %32 = phi i8 [ %29, %20 ], [ %19, %18 ]
  %33 = add i32 %31, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %9, %30
  %36 = phi i8 [ %10, %9 ], [ %32, %30 ]
  %37 = zext nneg i8 %36 to i32
  %38 = lshr i32 %0, %37
  br label %55

39:                                               ; preds = %30
  %40 = zext i32 %33 to i64
  %41 = zext i32 %0 to i64
  %42 = mul nuw i64 %40, %41
  %43 = lshr i64 %42, 32
  %44 = trunc nuw i64 %43 to i32
  %45 = zext nneg i8 %32 to i32
  %46 = icmp samesign ult i8 %32, 64
  br i1 %46, label %53, label %47

47:                                               ; preds = %39
  %48 = sub i32 %0, %44
  %49 = lshr i32 %48, 1
  %50 = add i32 %49, %44
  %51 = and i32 %45, 31
  %52 = lshr i32 %50, %51
  br label %55

53:                                               ; preds = %39
  %54 = lshr i32 %44, %45
  br label %55

55:                                               ; preds = %53, %47, %35, %2
  %56 = phi i32 [ 0, %2 ], [ %38, %35 ], [ %52, %47 ], [ %54, %53 ]
  ret i32 %56
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_s32(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %82, label %4

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
  %16 = and i8 %15, 31
  br label %48

17:                                               ; preds = %4
  %18 = sub nsw i32 30, %7
  %19 = shl nuw nsw i32 1, %18
  %20 = tail call { i32, i32 } asm "divl $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i32 %6, i32 0, i32 %19) #3
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  %23 = sub i32 %6, %22
  %24 = lshr i32 %23, %8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = trunc nsw i32 %18 to i8
  br label %38

28:                                               ; preds = %17
  %29 = shl i32 %21, 1
  %30 = shl i32 %22, 1
  %31 = icmp uge i32 %30, %6
  %32 = icmp slt i32 %22, 0
  %33 = or i1 %32, %31
  %34 = zext i1 %33 to i32
  %35 = or disjoint i32 %29, %34
  %36 = trunc nuw nsw i32 %8 to i8
  %37 = or disjoint i8 %36, 64
  br label %38

38:                                               ; preds = %26, %28
  %39 = phi i32 [ %35, %28 ], [ %21, %26 ]
  %40 = phi i8 [ %37, %28 ], [ %27, %26 ]
  %41 = add i32 %39, 1
  %42 = or i8 %40, -128
  %43 = xor i32 %39, -1
  %44 = select i1 %5, i8 %42, i8 %40
  %45 = select i1 %5, i32 %43, i32 %41
  %46 = and i8 %44, 31
  %47 = icmp eq i32 %45, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %11, %38
  %49 = phi i8 [ %16, %11 ], [ %46, %38 ]
  %50 = phi i8 [ %15, %11 ], [ %44, %38 ]
  %51 = ashr i8 %50, 7
  %52 = sext i8 %51 to i32
  %53 = zext nneg i8 %49 to i32
  %54 = shl nsw i32 -1, %53
  %55 = xor i32 %54, -1
  %56 = icmp slt i32 %0, 0
  %57 = select i1 %56, i32 %55, i32 0
  %58 = add i32 %57, %0
  %59 = ashr i32 %58, %53
  %60 = xor i32 %59, %52
  %61 = sub i32 %60, %52
  br label %82

62:                                               ; preds = %38
  %63 = sext i32 %45 to i64
  %64 = sext i32 %0 to i64
  %65 = mul nsw i64 %63, %64
  %66 = lshr i64 %65, 32
  %67 = trunc nuw i64 %66 to i32
  %68 = and i8 %44, 64
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %62
  %71 = ashr i8 %44, 7
  %72 = sext i8 %71 to i32
  %73 = xor i32 %0, %72
  %74 = sub i32 %73, %72
  %75 = add i32 %74, %67
  br label %76

76:                                               ; preds = %70, %62
  %77 = phi i32 [ %75, %70 ], [ %67, %62 ]
  %78 = zext nneg i8 %46 to i32
  %79 = ashr i32 %77, %78
  %80 = lshr i32 %79, 31
  %81 = add nsw i32 %80, %79
  br label %82

82:                                               ; preds = %76, %48, %2
  %83 = phi i32 [ 0, %2 ], [ %81, %76 ], [ %61, %48 ]
  ret i32 %83
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %58, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %6 = trunc nuw nsw i64 %5 to i32
  %7 = xor i32 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %9 = icmp samesign ult i64 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = trunc nuw nsw i32 %7 to i8
  br label %37

12:                                               ; preds = %4
  %13 = zext nneg i32 %7 to i64
  %14 = shl nuw i64 1, %13
  %15 = tail call { i64, i64 } asm "divq $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %1, i64 0, i64 %14) #3
  %16 = extractvalue { i64, i64 } %15, 0
  %17 = extractvalue { i64, i64 } %15, 1
  %18 = sub i64 %1, %17
  %19 = icmp ult i64 %18, %14
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = trunc nuw nsw i32 %7 to i8
  br label %32

22:                                               ; preds = %12
  %23 = shl i64 %16, 1
  %24 = shl i64 %17, 1
  %25 = icmp uge i64 %24, %1
  %26 = icmp slt i64 %17, 0
  %27 = or i1 %26, %25
  %28 = zext i1 %27 to i64
  %29 = or disjoint i64 %23, %28
  %30 = trunc nuw nsw i32 %7 to i8
  %31 = or disjoint i8 %30, 64
  br label %32

32:                                               ; preds = %20, %22
  %33 = phi i8 [ %31, %22 ], [ %21, %20 ]
  %34 = phi i64 [ %29, %22 ], [ %16, %20 ]
  %35 = add i64 %34, 1
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %10, %32
  %38 = phi i8 [ %11, %10 ], [ %33, %32 ]
  %39 = zext nneg i8 %38 to i64
  %40 = lshr i64 %0, %39
  br label %58

41:                                               ; preds = %32
  %42 = zext i64 %35 to i128
  %43 = zext i64 %0 to i128
  %44 = mul nuw i128 %42, %43
  %45 = lshr i128 %44, 64
  %46 = trunc nuw i128 %45 to i64
  %47 = icmp samesign ult i8 %33, 64
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = sub i64 %0, %46
  %50 = lshr i64 %49, 1
  %51 = add i64 %50, %46
  %52 = and i8 %33, 63
  %53 = zext nneg i8 %52 to i64
  %54 = lshr i64 %51, %53
  br label %58

55:                                               ; preds = %41
  %56 = zext nneg i8 %33 to i64
  %57 = lshr i64 %46, %56
  br label %58

58:                                               ; preds = %55, %48, %37, %2
  %59 = phi i64 [ 0, %2 ], [ %40, %37 ], [ %54, %48 ], [ %57, %55 ]
  ret i64 %59
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i64 @target_s64(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %86, label %4

4:                                                ; preds = %2
  %5 = icmp slt i64 %1, 0
  %6 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %1, i1 false)
  %7 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %6, i1 true)
  %8 = trunc nuw nsw i64 %7 to i32
  %9 = xor i32 %8, 63
  %10 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %6)
  %11 = icmp samesign ult i64 %10, 2
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = lshr i64 %1, 56
  %14 = trunc nuw nsw i64 %13 to i32
  %15 = and i32 %14, 128
  %16 = or disjoint i32 %9, %15
  %17 = trunc nuw i32 %16 to i8
  %18 = and i8 %17, 63
  br label %52

19:                                               ; preds = %4
  %20 = sub nsw i32 62, %8
  %21 = zext nneg i32 %20 to i64
  %22 = shl nuw i64 1, %21
  %23 = tail call { i64, i64 } asm "divq $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i64 %6, i64 0, i64 %22) #3
  %24 = extractvalue { i64, i64 } %23, 0
  %25 = extractvalue { i64, i64 } %23, 1
  %26 = sub i64 %6, %25
  %27 = zext nneg i32 %9 to i64
  %28 = lshr i64 %26, %27
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = trunc nsw i32 %20 to i8
  br label %42

32:                                               ; preds = %19
  %33 = shl i64 %24, 1
  %34 = shl i64 %25, 1
  %35 = icmp uge i64 %34, %6
  %36 = icmp slt i64 %25, 0
  %37 = or i1 %36, %35
  %38 = zext i1 %37 to i64
  %39 = or disjoint i64 %33, %38
  %40 = trunc nuw nsw i32 %9 to i8
  %41 = or disjoint i8 %40, 64
  br label %42

42:                                               ; preds = %30, %32
  %43 = phi i64 [ %39, %32 ], [ %24, %30 ]
  %44 = phi i8 [ %41, %32 ], [ %31, %30 ]
  %45 = add i64 %43, 1
  %46 = or i8 %44, -128
  %47 = xor i64 %43, -1
  %48 = select i1 %5, i8 %46, i8 %44
  %49 = select i1 %5, i64 %47, i64 %45
  %50 = and i8 %48, 63
  %51 = icmp eq i64 %49, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %12, %42
  %53 = phi i8 [ %18, %12 ], [ %50, %42 ]
  %54 = phi i8 [ %17, %12 ], [ %48, %42 ]
  %55 = zext nneg i8 %53 to i64
  %56 = shl nsw i64 -1, %55
  %57 = xor i64 %56, -1
  %58 = icmp slt i64 %0, 0
  %59 = select i1 %58, i64 %57, i64 0
  %60 = add i64 %59, %0
  %61 = ashr i64 %60, %55
  %62 = ashr i8 %54, 7
  %63 = sext i8 %62 to i64
  %64 = xor i64 %61, %63
  %65 = sub nsw i64 %64, %63
  br label %86

66:                                               ; preds = %42
  %67 = sext i64 %49 to i128
  %68 = sext i64 %0 to i128
  %69 = mul nsw i128 %67, %68
  %70 = lshr i128 %69, 64
  %71 = trunc nuw i128 %70 to i64
  %72 = and i8 %48, 64
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %66
  %75 = ashr i8 %48, 7
  %76 = sext i8 %75 to i64
  %77 = xor i64 %0, %76
  %78 = sub i64 %77, %76
  %79 = add i64 %78, %71
  br label %80

80:                                               ; preds = %74, %66
  %81 = phi i64 [ %79, %74 ], [ %71, %66 ]
  %82 = zext nneg i8 %50 to i64
  %83 = ashr i64 %81, %82
  %84 = lshr i64 %83, 63
  %85 = add nsw i64 %84, %83
  br label %86

86:                                               ; preds = %80, %52, %2
  %87 = phi i64 [ 0, %2 ], [ %85, %80 ], [ %65, %52 ]
  ret i64 %87
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_u32_bf(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i32 %1, 2
  br i1 %3, label %36, label %4

4:                                                ; preds = %2
  %5 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 2, 0) %1, i1 true)
  %6 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 2, 0) %1)
  %7 = icmp samesign ult i32 %6, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = sub nuw nsw i32 30, %5
  br label %25

10:                                               ; preds = %4
  %11 = xor i32 %5, 31
  %12 = shl nuw i32 1, %11
  %13 = tail call { i32, i32 } asm "divl $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 2, 0) %1, i32 0, i32 %12) #3
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = extractvalue { i32, i32 } %13, 1
  %16 = shl i32 %14, 1
  %17 = shl i32 %15, 1
  %18 = icmp uge i32 %17, %1
  %19 = icmp slt i32 %15, 0
  %20 = or i1 %19, %18
  %21 = zext i1 %20 to i32
  %22 = or disjoint i32 %16, 1
  %23 = add i32 %22, %21
  %24 = zext i32 %23 to i64
  br label %25

25:                                               ; preds = %8, %10
  %26 = phi i64 [ 0, %8 ], [ %24, %10 ]
  %27 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %28 = zext i32 %0 to i64
  %29 = mul nuw i64 %26, %28
  %30 = lshr i64 %29, 32
  %31 = trunc nuw i64 %30 to i32
  %32 = sub i32 %0, %31
  %33 = lshr i32 %32, 1
  %34 = add i32 %33, %31
  %35 = lshr i32 %34, %27
  br label %36

36:                                               ; preds = %2, %25
  %37 = phi i32 [ %35, %25 ], [ 0, %2 ]
  ret i32 %37
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64_bf(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i64 %1, 2
  br i1 %3, label %39, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, 0) %1, i1 true)
  %6 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %1)
  %7 = icmp samesign ult i64 %6, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = sub nuw nsw i64 62, %5
  br label %27

10:                                               ; preds = %4
  %11 = trunc nuw nsw i64 %5 to i32
  %12 = xor i32 %11, 63
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = tail call { i64, i64 } asm "divq $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 2, 0) %1, i64 0, i64 %14) #3
  %16 = extractvalue { i64, i64 } %15, 0
  %17 = extractvalue { i64, i64 } %15, 1
  %18 = shl i64 %16, 1
  %19 = shl i64 %17, 1
  %20 = icmp uge i64 %19, %1
  %21 = icmp slt i64 %17, 0
  %22 = or i1 %21, %20
  %23 = zext i1 %22 to i64
  %24 = zext nneg i32 %12 to i64
  %25 = or disjoint i64 %18, 1
  %26 = add i64 %25, %23
  br label %27

27:                                               ; preds = %8, %10
  %28 = phi i64 [ 0, %8 ], [ %26, %10 ]
  %29 = phi i64 [ %9, %8 ], [ %24, %10 ]
  %30 = zext i64 %28 to i128
  %31 = zext i64 %0 to i128
  %32 = mul nuw i128 %30, %31
  %33 = lshr i128 %32, 64
  %34 = trunc nuw i128 %33 to i64
  %35 = sub i64 %0, %34
  %36 = lshr i64 %35, 1
  %37 = add i64 %36, %34
  %38 = lshr i64 %37, %29
  br label %39

39:                                               ; preds = %2, %27
  %40 = phi i64 [ %38, %27 ], [ 0, %2 ]
  ret i64 %40
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_s32_bf(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %56, label %4

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
  br label %33

15:                                               ; preds = %4
  %16 = icmp slt i32 %1, 0
  %17 = sub nsw i32 30, %6
  %18 = shl nuw nsw i32 1, %17
  %19 = tail call { i32, i32 } asm "divl $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i32 %5, i32 0, i32 %18) #3
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = extractvalue { i32, i32 } %19, 1
  %22 = shl i32 %20, 1
  %23 = shl i32 %21, 1
  %24 = icmp uge i32 %23, %5
  %25 = icmp slt i32 %21, 0
  %26 = or i1 %25, %24
  %27 = zext i1 %26 to i32
  %28 = trunc nuw nsw i32 %7 to i8
  %29 = or disjoint i32 %22, 1
  %30 = add i32 %29, %27
  %31 = select i1 %16, i8 -64, i8 64
  %32 = or disjoint i8 %31, %28
  br label %33

33:                                               ; preds = %10, %15
  %34 = phi i32 [ 0, %10 ], [ %30, %15 ]
  %35 = phi i8 [ %14, %10 ], [ %32, %15 ]
  %36 = and i8 %35, 31
  %37 = ashr i8 %35, 7
  %38 = sext i8 %37 to i32
  %39 = sext i32 %34 to i64
  %40 = sext i32 %0 to i64
  %41 = mul nsw i64 %39, %40
  %42 = lshr i64 %41, 32
  %43 = trunc nuw i64 %42 to i32
  %44 = add nsw i32 %0, %43
  %45 = icmp eq i32 %34, 0
  %46 = sext i1 %45 to i32
  %47 = zext nneg i8 %36 to i32
  %48 = shl nuw i32 1, %47
  %49 = add i32 %48, %46
  %50 = icmp slt i32 %44, 0
  %51 = select i1 %50, i32 %49, i32 0
  %52 = add i32 %51, %44
  %53 = ashr i32 %52, %47
  %54 = xor i32 %53, %38
  %55 = sub nsw i32 %54, %38
  br label %56

56:                                               ; preds = %2, %33
  %57 = phi i32 [ %55, %33 ], [ 0, %2 ]
  ret i32 %57
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i64 @target_s64_bf(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %59, label %4

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
  br label %36

17:                                               ; preds = %4
  %18 = icmp slt i64 %1, 0
  %19 = sub nsw i64 62, %6
  %20 = and i64 %19, 4294967295
  %21 = shl nuw i64 1, %20
  %22 = tail call { i64, i64 } asm "divq $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i64 %5, i64 0, i64 %21) #3
  %23 = extractvalue { i64, i64 } %22, 0
  %24 = extractvalue { i64, i64 } %22, 1
  %25 = shl i64 %23, 1
  %26 = shl i64 %24, 1
  %27 = icmp uge i64 %26, %5
  %28 = icmp slt i64 %24, 0
  %29 = or i1 %28, %27
  %30 = zext i1 %29 to i64
  %31 = trunc nuw nsw i32 %8 to i8
  %32 = or disjoint i64 %25, 1
  %33 = add i64 %32, %30
  %34 = select i1 %18, i8 -64, i8 64
  %35 = or disjoint i8 %34, %31
  br label %36

36:                                               ; preds = %11, %17
  %37 = phi i64 [ 0, %11 ], [ %33, %17 ]
  %38 = phi i8 [ %16, %11 ], [ %35, %17 ]
  %39 = and i8 %38, 63
  %40 = ashr i8 %38, 7
  %41 = sext i8 %40 to i64
  %42 = sext i64 %37 to i128
  %43 = sext i64 %0 to i128
  %44 = mul nsw i128 %42, %43
  %45 = lshr i128 %44, 64
  %46 = trunc nuw i128 %45 to i64
  %47 = add nsw i64 %0, %46
  %48 = icmp eq i64 %37, 0
  %49 = sext i1 %48 to i64
  %50 = zext nneg i8 %39 to i64
  %51 = shl nuw i64 1, %50
  %52 = add i64 %51, %49
  %53 = icmp slt i64 %47, 0
  %54 = select i1 %53, i64 %52, i64 0
  %55 = add i64 %54, %47
  %56 = ashr i64 %55, %50
  %57 = xor i64 %56, %41
  %58 = sub nsw i64 %57, %41
  br label %59

59:                                               ; preds = %2, %36
  %60 = phi i64 [ %58, %36 ], [ 0, %2 ]
  ret i64 %60
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_u32_recover(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %63, label %3

3:                                                ; preds = %1
  %4 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %0, i1 true)
  %5 = xor i32 %4, 31
  %6 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %0)
  %7 = icmp samesign ult i32 %6, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = trunc nuw nsw i32 %5 to i8
  br label %35

10:                                               ; preds = %3
  %11 = shl nuw i32 1, %5
  %12 = tail call { i32, i32 } asm "divl $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 0) %0, i32 0, i32 %11) #3
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = extractvalue { i32, i32 } %12, 1
  %15 = sub i32 %0, %14
  %16 = icmp ult i32 %15, %11
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = trunc nuw nsw i32 %5 to i8
  br label %29

19:                                               ; preds = %10
  %20 = shl i32 %13, 1
  %21 = shl i32 %14, 1
  %22 = icmp uge i32 %21, %0
  %23 = icmp slt i32 %14, 0
  %24 = or i1 %23, %22
  %25 = zext i1 %24 to i32
  %26 = or disjoint i32 %20, %25
  %27 = trunc nuw nsw i32 %5 to i8
  %28 = or disjoint i8 %27, 64
  br label %29

29:                                               ; preds = %17, %19
  %30 = phi i32 [ %26, %19 ], [ %13, %17 ]
  %31 = phi i8 [ %28, %19 ], [ %18, %17 ]
  %32 = add i32 %30, 1
  %33 = and i8 %31, 31
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %8, %29
  %36 = phi i8 [ %9, %8 ], [ %33, %29 ]
  %37 = zext nneg i8 %36 to i32
  %38 = shl nuw i32 1, %37
  br label %63

39:                                               ; preds = %29
  %40 = and i8 %31, 64
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = zext nneg i8 %33 to i32
  %44 = shl nuw i32 1, %43
  %45 = tail call { i32, i32 } asm "divl $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i32 %32, i32 0, i32 %44) #3
  %46 = extractvalue { i32, i32 } %45, 0
  %47 = add i32 %46, 1
  br label %63

48:                                               ; preds = %39
  %49 = or disjoint i8 %33, 32
  %50 = zext nneg i8 %49 to i64
  %51 = shl nuw i64 1, %50
  %52 = zext i32 %32 to i64
  %53 = or disjoint i64 %52, 4294967296
  %54 = udiv i64 %51, %53
  %55 = trunc nuw i64 %54 to i32
  %56 = urem i64 %51, %53
  %57 = shl i32 %55, 1
  %58 = shl nuw nsw i64 %56, 1
  %59 = icmp samesign uge i64 %58, %53
  %60 = zext i1 %59 to i32
  %61 = or disjoint i32 %57, 1
  %62 = add i32 %61, %60
  br label %63

63:                                               ; preds = %48, %42, %35, %1
  %64 = phi i32 [ 0, %1 ], [ %62, %48 ], [ %47, %42 ], [ %38, %35 ]
  ret i32 %64
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64_recover(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %75, label %3

3:                                                ; preds = %1
  %4 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %0, i1 true)
  %5 = trunc nuw nsw i64 %4 to i32
  %6 = xor i32 %5, 63
  %7 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %0)
  %8 = icmp samesign ult i64 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = trunc nuw nsw i32 %6 to i8
  br label %37

11:                                               ; preds = %3
  %12 = zext nneg i32 %6 to i64
  %13 = shl nuw i64 1, %12
  %14 = tail call { i64, i64 } asm "divq $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %0, i64 0, i64 %13) #3
  %15 = extractvalue { i64, i64 } %14, 0
  %16 = extractvalue { i64, i64 } %14, 1
  %17 = sub i64 %0, %16
  %18 = icmp ult i64 %17, %13
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = trunc nuw nsw i32 %6 to i8
  br label %31

21:                                               ; preds = %11
  %22 = shl i64 %15, 1
  %23 = shl i64 %16, 1
  %24 = icmp uge i64 %23, %0
  %25 = icmp slt i64 %16, 0
  %26 = or i1 %25, %24
  %27 = zext i1 %26 to i64
  %28 = or disjoint i64 %22, %27
  %29 = trunc nuw nsw i32 %6 to i8
  %30 = or disjoint i8 %29, 64
  br label %31

31:                                               ; preds = %19, %21
  %32 = phi i8 [ %30, %21 ], [ %20, %19 ]
  %33 = phi i64 [ %28, %21 ], [ %15, %19 ]
  %34 = add i64 %33, 1
  %35 = and i8 %32, 63
  %36 = icmp eq i64 %34, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %9, %31
  %38 = phi i8 [ %10, %9 ], [ %35, %31 ]
  %39 = zext nneg i8 %38 to i64
  %40 = shl nuw i64 1, %39
  br label %75

41:                                               ; preds = %31
  %42 = and i8 %32, 64
  %43 = icmp eq i8 %42, 0
  %44 = zext nneg i8 %35 to i64
  %45 = shl nuw i64 1, %44
  br i1 %43, label %46, label %50

46:                                               ; preds = %41
  %47 = tail call { i64, i64 } asm "divq $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i64 %34, i64 0, i64 %45) #3
  %48 = extractvalue { i64, i64 } %47, 0
  %49 = add i64 %48, 1
  br label %75

50:                                               ; preds = %41
  %51 = zext i64 %45 to i128
  %52 = shl nuw i128 %51, 64
  %53 = zext i64 %34 to i128
  %54 = or disjoint i128 %53, 18446744073709551616
  %55 = udiv i128 %52, %54
  %56 = trunc nuw i128 %55 to i64
  %57 = mul nuw i128 %55, %54
  %58 = sub i128 %52, %57
  %59 = trunc i128 %58 to i64
  %60 = lshr i128 %58, 64
  %61 = trunc nuw i128 %60 to i64
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %59, i64 1)
  %63 = icmp ugt i64 %62, 1
  br i1 %63, label %70, label %64

64:                                               ; preds = %50
  %65 = shl i64 %59, 1
  %66 = icmp eq i64 %62, 1
  %67 = icmp uge i64 %65, %34
  %68 = select i1 %66, i1 %67, i1 false
  %69 = zext i1 %68 to i64
  br label %70

70:                                               ; preds = %64, %50
  %71 = phi i64 [ 1, %50 ], [ %69, %64 ]
  %72 = shl i64 %56, 1
  %73 = or disjoint i64 %72, 1
  %74 = add i64 %73, %71
  br label %75

75:                                               ; preds = %70, %46, %37, %1
  %76 = phi i64 [ 0, %1 ], [ %74, %70 ], [ %49, %46 ], [ %40, %37 ]
  ret i64 %76
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #2

attributes #0 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 355583}
!6 = !{i64 356539}
