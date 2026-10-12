; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/ef645e2/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/ef645e2/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i16 @target_u16(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq i16 %1, 0
  br i1 %3, label %61, label %4

4:                                                ; preds = %2
  %5 = zext i16 %1 to i32
  %6 = tail call range(i16 0, 16) i16 @llvm.ctlz.i16(i16 range(i16 1, 0) %1, i1 true)
  %7 = trunc nuw nsw i16 %6 to i8
  %8 = xor i8 %7, 15
  %9 = add nuw nsw i32 %5, 65535
  %10 = and i32 %9, %5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %4
  %13 = zext nneg i8 %8 to i32
  %14 = shl nuw i32 65536, %13
  %15 = udiv i32 %14, %5
  %16 = trunc i32 %15 to i16
  %17 = mul i16 %1, %16
  %18 = add i16 %17, %1
  %19 = zext i16 %18 to i32
  %20 = lshr i32 %19, %13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %12
  %23 = sub i16 0, %17
  %24 = shl i16 %16, 1
  %25 = shl i16 %23, 1
  %26 = icmp uge i16 %25, %1
  %27 = icmp slt i16 %23, 0
  %28 = or i1 %27, %26
  %29 = zext i1 %28 to i16
  %30 = or disjoint i16 %24, %29
  %31 = or disjoint i8 %8, 64
  br label %32

32:                                               ; preds = %12, %22
  %33 = phi i16 [ %30, %22 ], [ %16, %12 ]
  %34 = phi i8 [ %31, %22 ], [ %8, %12 ]
  %35 = add i16 %33, 1
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %4, %32
  %38 = phi i8 [ %34, %32 ], [ %8, %4 ]
  %39 = zext i16 %0 to i32
  %40 = zext nneg i8 %38 to i32
  %41 = lshr i32 %39, %40
  br label %58

42:                                               ; preds = %32
  %43 = zext i16 %35 to i32
  %44 = zext i16 %0 to i32
  %45 = mul nuw i32 %43, %44
  %46 = lshr i32 %45, 16
  %47 = zext nneg i8 %34 to i32
  %48 = icmp samesign ult i8 %34, 64
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = sub nsw i32 %44, %46
  %51 = lshr i32 %50, 1
  %52 = add nuw i32 %51, %46
  %53 = and i32 %52, 65535
  %54 = and i32 %47, 31
  %55 = lshr i32 %53, %54
  br label %58

56:                                               ; preds = %42
  %57 = lshr i32 %46, %47
  br label %58

58:                                               ; preds = %37, %49, %56
  %59 = phi i32 [ %41, %37 ], [ %55, %49 ], [ %57, %56 ]
  %60 = trunc nuw i32 %59 to i16
  br label %61

61:                                               ; preds = %2, %58
  %62 = phi i16 [ %60, %58 ], [ 0, %2 ]
  ret i16 %62
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i16 @target_s16(i16 noundef signext %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp eq i16 %1, 0
  br i1 %3, label %95, label %4

4:                                                ; preds = %2
  %5 = icmp slt i16 %1, 0
  %6 = tail call i16 @llvm.abs.i16(i16 range(i16 1, 0) %1, i1 false)
  %7 = tail call range(i16 0, 16) i16 @llvm.ctlz.i16(i16 %6, i1 true)
  %8 = xor i16 %7, 15
  %9 = zext i16 %6 to i32
  %10 = add nuw nsw i32 %9, 65535
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = lshr i16 %1, 8
  %15 = and i16 %14, 128
  %16 = or disjoint i16 %8, %15
  %17 = trunc nuw i16 %16 to i8
  %18 = and i8 %17, 15
  br label %53

19:                                               ; preds = %4
  %20 = zext nneg i16 %8 to i32
  %21 = shl nuw nsw i32 32768, %20
  %22 = udiv i32 %21, %9
  %23 = trunc i32 %22 to i16
  %24 = mul i16 %6, %23
  %25 = add i16 %24, %6
  %26 = zext i16 %25 to i32
  %27 = lshr i32 %26, %20
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = trunc nuw nsw i16 %7 to i8
  %31 = sub nsw i8 14, %30
  br label %43

32:                                               ; preds = %19
  %33 = sub i16 0, %24
  %34 = shl i16 %23, 1
  %35 = shl i16 %33, 1
  %36 = icmp uge i16 %35, %6
  %37 = icmp slt i16 %33, 0
  %38 = or i1 %37, %36
  %39 = zext i1 %38 to i16
  %40 = or disjoint i16 %34, %39
  %41 = trunc nuw nsw i16 %8 to i8
  %42 = or disjoint i8 %41, 64
  br label %43

43:                                               ; preds = %29, %32
  %44 = phi i16 [ %40, %32 ], [ %23, %29 ]
  %45 = phi i8 [ %42, %32 ], [ %31, %29 ]
  %46 = add i16 %44, 1
  %47 = or i8 %45, -128
  %48 = xor i16 %44, -1
  %49 = select i1 %5, i8 %47, i8 %45
  %50 = select i1 %5, i16 %48, i16 %46
  %51 = and i8 %49, 31
  %52 = icmp eq i16 %50, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %13, %43
  %54 = phi i8 [ %18, %13 ], [ %51, %43 ]
  %55 = phi i8 [ %17, %13 ], [ %49, %43 ]
  %56 = zext nneg i8 %54 to i32
  %57 = shl nsw i32 -1, %56
  %58 = sext i16 %0 to i32
  %59 = lshr i32 %58, 15
  %60 = xor i32 %57, -1
  %61 = and i32 %59, %60
  %62 = trunc i32 %61 to i16
  %63 = add i16 %0, %62
  %64 = sext i16 %63 to i32
  %65 = ashr i32 %64, %56
  %66 = icmp slt i8 %55, 0
  %67 = select i1 %66, i32 65535, i32 0
  %68 = xor i32 %65, %67
  %69 = sub nsw i32 %68, %67
  br label %92

70:                                               ; preds = %43
  %71 = sext i16 %50 to i32
  %72 = sext i16 %0 to i32
  %73 = mul nsw i32 %71, %72
  %74 = lshr i32 %73, 16
  %75 = and i8 %49, 64
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = ashr i8 %49, 7
  %79 = zext i16 %0 to i32
  %80 = sext i8 %78 to i32
  %81 = xor i32 %80, %79
  %82 = sub nsw i32 %74, %80
  %83 = add nsw i32 %82, %81
  br label %84

84:                                               ; preds = %77, %70
  %85 = phi i32 [ %83, %77 ], [ %74, %70 ]
  %86 = zext nneg i8 %51 to i32
  %87 = shl i32 %85, 16
  %88 = ashr exact i32 %87, 16
  %89 = ashr i32 %88, %86
  %90 = lshr i32 %89, 31
  %91 = add nsw i32 %90, %89
  br label %92

92:                                               ; preds = %53, %84
  %93 = phi i32 [ %91, %84 ], [ %69, %53 ]
  %94 = trunc i32 %93 to i16
  br label %95

95:                                               ; preds = %2, %92
  %96 = phi i16 [ %94, %92 ], [ 0, %2 ]
  ret i16 %96
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
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
  %15 = tail call { i64, i64 } asm "divq $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %1, i64 0, i64 %14) #4
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
define dso_local i64 @target_s64(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
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
  %23 = tail call { i64, i64 } asm "divq $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i64 %6, i64 0, i64 %22) #4
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
define dso_local i64 @target_u64_recover(i64 noundef %0) local_unnamed_addr #1 {
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
  %14 = tail call { i64, i64 } asm "divq $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %0, i64 0, i64 %13) #4
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
  %47 = tail call { i64, i64 } asm "divq $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i64 %34, i64 0, i64 %45) #4
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

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i64 @target_s64_recover(i64 noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %75, label %3

3:                                                ; preds = %1
  %4 = icmp slt i64 %0, 0
  %5 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %0, i1 false)
  %6 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %5, i1 true)
  %7 = trunc nuw nsw i64 %6 to i32
  %8 = xor i32 %7, 63
  %9 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %5)
  %10 = icmp samesign ult i64 %9, 2
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = lshr i64 %0, 56
  %13 = trunc nuw nsw i64 %12 to i32
  %14 = and i32 %13, 128
  %15 = or disjoint i32 %8, %14
  %16 = trunc nuw i32 %15 to i8
  %17 = and i8 %16, 63
  br label %51

18:                                               ; preds = %3
  %19 = sub nsw i32 62, %7
  %20 = zext nneg i32 %19 to i64
  %21 = shl nuw i64 1, %20
  %22 = tail call { i64, i64 } asm "divq $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i64 %5, i64 0, i64 %21) #4
  %23 = extractvalue { i64, i64 } %22, 0
  %24 = extractvalue { i64, i64 } %22, 1
  %25 = sub i64 %5, %24
  %26 = zext nneg i32 %8 to i64
  %27 = lshr i64 %25, %26
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = trunc nsw i32 %19 to i8
  br label %41

31:                                               ; preds = %18
  %32 = shl i64 %23, 1
  %33 = shl i64 %24, 1
  %34 = icmp uge i64 %33, %5
  %35 = icmp slt i64 %24, 0
  %36 = or i1 %35, %34
  %37 = zext i1 %36 to i64
  %38 = or disjoint i64 %32, %37
  %39 = trunc nuw nsw i32 %8 to i8
  %40 = or disjoint i8 %39, 64
  br label %41

41:                                               ; preds = %29, %31
  %42 = phi i64 [ %38, %31 ], [ %23, %29 ]
  %43 = phi i8 [ %40, %31 ], [ %30, %29 ]
  %44 = add i64 %42, 1
  %45 = or i8 %43, -128
  %46 = xor i64 %42, -1
  %47 = select i1 %4, i8 %45, i8 %43
  %48 = select i1 %4, i64 %46, i64 %44
  %49 = and i8 %47, 63
  %50 = icmp eq i64 %48, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %11, %41
  %52 = phi i8 [ %17, %11 ], [ %49, %41 ]
  %53 = phi i8 [ %16, %11 ], [ %47, %41 ]
  %54 = zext nneg i8 %52 to i64
  %55 = shl nuw i64 1, %54
  %56 = sub i64 0, %55
  %57 = icmp slt i8 %53, 0
  %58 = select i1 %57, i64 %56, i64 %55
  br label %75

59:                                               ; preds = %41
  %60 = and i8 %47, 64
  %61 = icmp eq i8 %60, 0
  %62 = icmp slt i64 %48, 1
  %63 = icmp sgt i64 %48, -1
  %64 = select i1 %61, i1 %63, i1 %62
  %65 = sub nsw i64 0, %48
  %66 = select i1 %64, i64 %48, i64 %65
  %67 = zext nneg i8 %49 to i64
  %68 = shl nuw i64 1, %67
  %69 = tail call { i64, i64 } asm "divq $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i64 %66, i64 0, i64 %68) #4
  %70 = extractvalue { i64, i64 } %69, 0
  %71 = add i64 %70, 1
  %72 = xor i64 %70, -1
  %73 = icmp slt i8 %47, 0
  %74 = select i1 %73, i64 %72, i64 %71
  br label %75

75:                                               ; preds = %59, %51, %1
  %76 = phi i64 [ 0, %1 ], [ %58, %51 ], [ %74, %59 ]
  ret i64 %76
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i16 @target_div_32_16(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = zext i16 %0 to i32
  %5 = shl nuw i32 %4, 16
  %6 = zext i16 %1 to i32
  %7 = or disjoint i32 %5, %6
  %8 = zext i16 %2 to i32
  %9 = udiv i32 %7, %8
  %10 = trunc i32 %9 to i16
  %11 = mul i16 %2, %10
  %12 = sub i16 %1, %11
  %13 = xor i16 %12, %10
  ret i16 %13
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i64 @target_div_128_64(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
  %4 = tail call { i64, i64 } asm "divq $2", "={ax},={dx},r,{ax},{dx},~{dirflag},~{fpsr},~{flags}"(i64 %2, i64 %1, i64 %0) #4
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  %7 = mul i64 %6, 3
  %8 = xor i64 %7, %5
  ret i64 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_div_128_128(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = zext i64 %0 to i128
  %6 = zext i64 %2 to i128
  %7 = shl nuw i128 %5, 64
  %8 = zext i64 %1 to i128
  %9 = or disjoint i128 %7, %8
  %10 = shl nuw i128 %6, 64
  %11 = zext i64 %3 to i128
  %12 = or disjoint i128 %10, %11
  %13 = udiv i128 %9, %12
  %14 = trunc i128 %13 to i64
  %15 = and i128 %13, 18446744073709551615
  %16 = mul i128 %15, %12
  %17 = sub i128 %9, %16
  %18 = trunc i128 %17 to i64
  %19 = lshr i128 %17, 64
  %20 = trunc nuw i128 %19 to i64
  %21 = mul i64 %20, 3
  %22 = mul i64 %18, 5
  %23 = xor i64 %22, %14
  %24 = xor i64 %23, %21
  ret i64 %24
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 406191}
