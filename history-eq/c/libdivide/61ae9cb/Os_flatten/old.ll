; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/61ae9cb/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/61ae9cb/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @target_u32(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %59, label %4

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
  br i1 %38, label %39, label %43

39:                                               ; preds = %9, %34
  %40 = phi i8 [ %10, %9 ], [ %36, %34 ]
  %41 = zext nneg i8 %40 to i32
  %42 = lshr i32 %0, %41
  br label %59

43:                                               ; preds = %34
  %44 = zext i32 %37 to i64
  %45 = zext i32 %0 to i64
  %46 = mul nuw i64 %44, %45
  %47 = lshr i64 %46, 32
  %48 = trunc nuw i64 %47 to i32
  %49 = zext nneg i8 %36 to i32
  %50 = icmp samesign ult i8 %36, 64
  br i1 %50, label %57, label %51

51:                                               ; preds = %43
  %52 = sub i32 %0, %48
  %53 = lshr i32 %52, 1
  %54 = add i32 %53, %48
  %55 = and i32 %49, 31
  %56 = lshr i32 %54, %55
  br label %59

57:                                               ; preds = %43
  %58 = lshr i32 %48, %49
  br label %59

59:                                               ; preds = %57, %51, %39, %2
  %60 = phi i32 [ 0, %2 ], [ %42, %39 ], [ %56, %51 ], [ %58, %57 ]
  ret i32 %60
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @target_s32(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %86, label %4

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
  br label %52

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

42:                                               ; preds = %29, %31
  %43 = phi i32 [ %39, %31 ], [ %24, %29 ]
  %44 = phi i8 [ %41, %31 ], [ %30, %29 ]
  %45 = add i32 %43, 1
  %46 = or i8 %44, -128
  %47 = xor i32 %43, -1
  %48 = select i1 %5, i8 %46, i8 %44
  %49 = select i1 %5, i32 %47, i32 %45
  %50 = and i8 %48, 31
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %11, %42
  %53 = phi i8 [ %16, %11 ], [ %50, %42 ]
  %54 = phi i8 [ %15, %11 ], [ %48, %42 ]
  %55 = ashr i8 %54, 7
  %56 = sext i8 %55 to i32
  %57 = zext nneg i8 %53 to i32
  %58 = shl nsw i32 -1, %57
  %59 = xor i32 %58, -1
  %60 = icmp slt i32 %0, 0
  %61 = select i1 %60, i32 %59, i32 0
  %62 = add i32 %61, %0
  %63 = ashr i32 %62, %57
  %64 = xor i32 %63, %56
  %65 = sub i32 %64, %56
  br label %86

66:                                               ; preds = %42
  %67 = sext i32 %49 to i64
  %68 = sext i32 %0 to i64
  %69 = mul nsw i64 %67, %68
  %70 = lshr i64 %69, 32
  %71 = trunc nuw i64 %70 to i32
  %72 = and i8 %48, 64
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %66
  %75 = ashr i8 %48, 7
  %76 = sext i8 %75 to i32
  %77 = xor i32 %0, %76
  %78 = sub i32 %77, %76
  %79 = add i32 %78, %71
  br label %80

80:                                               ; preds = %74, %66
  %81 = phi i32 [ %79, %74 ], [ %71, %66 ]
  %82 = zext nneg i8 %50 to i32
  %83 = ashr i32 %81, %82
  %84 = lshr i32 %83, 31
  %85 = add nsw i32 %84, %83
  br label %86

86:                                               ; preds = %80, %52, %2
  %87 = phi i32 [ 0, %2 ], [ %85, %80 ], [ %65, %52 ]
  ret i32 %87
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define dso_local i64 @target_u64(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %58, label %5

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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %14 = zext nneg i32 %8 to i64
  %15 = shl nuw i64 1, %14
  %16 = call fastcc i64 @libdivide_128_div_64_to_64(i64 noundef %15, i64 noundef range(i64 1, 0) %1, ptr noundef %3) #7
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
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %11, %32
  %38 = phi i8 [ %12, %11 ], [ %33, %32 ]
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

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define dso_local i64 @target_s64(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %86, label %5

5:                                                ; preds = %2
  %6 = icmp slt i64 %1, 0
  %7 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %1, i1 false)
  %8 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %7, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %10 = xor i32 %9, 63
  %11 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %7)
  %12 = icmp samesign ult i64 %11, 2
  br i1 %12, label %13, label %20

13:                                               ; preds = %5
  %14 = lshr i64 %1, 56
  %15 = trunc nuw nsw i64 %14 to i32
  %16 = and i32 %15, 128
  %17 = or disjoint i32 %10, %16
  %18 = trunc nuw i32 %17 to i8
  %19 = and i8 %18, 63
  br label %52

20:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %21 = sub nsw i32 62, %9
  %22 = zext nneg i32 %21 to i64
  %23 = shl nuw i64 1, %22
  %24 = call fastcc i64 @libdivide_128_div_64_to_64(i64 noundef %23, i64 noundef %7, ptr noundef %3) #7
  %25 = load i64, ptr %3, align 8
  %26 = sub i64 %7, %25
  %27 = zext nneg i32 %10 to i64
  %28 = lshr i64 %26, %27
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = trunc nsw i32 %21 to i8
  br label %42

32:                                               ; preds = %20
  %33 = shl i64 %24, 1
  %34 = shl i64 %25, 1
  %35 = icmp uge i64 %34, %7
  %36 = icmp slt i64 %25, 0
  %37 = or i1 %36, %35
  %38 = zext i1 %37 to i64
  %39 = or disjoint i64 %33, %38
  %40 = trunc nuw nsw i32 %10 to i8
  %41 = or disjoint i8 %40, 64
  br label %42

42:                                               ; preds = %30, %32
  %43 = phi i64 [ %39, %32 ], [ %24, %30 ]
  %44 = phi i8 [ %41, %32 ], [ %31, %30 ]
  %45 = add i64 %43, 1
  %46 = or i8 %44, -128
  %47 = xor i64 %43, -1
  %48 = select i1 %6, i8 %46, i8 %44
  %49 = select i1 %6, i64 %47, i64 %45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %50 = and i8 %48, 63
  %51 = icmp eq i64 %49, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %13, %42
  %53 = phi i8 [ %19, %13 ], [ %50, %42 ]
  %54 = phi i8 [ %18, %13 ], [ %48, %42 ]
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @target_u32_bf(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i32 %1, 2
  br i1 %3, label %40, label %4

4:                                                ; preds = %2
  %5 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 2, 0) %1, i1 true)
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

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define dso_local i64 @target_u64_bf(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = icmp ult i64 %1, 2
  br i1 %4, label %39, label %5

5:                                                ; preds = %2
  %6 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, 0) %1, i1 true)
  %7 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %1)
  %8 = icmp samesign ult i64 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = sub nuw nsw i64 62, %6
  br label %27

11:                                               ; preds = %5
  %12 = trunc nuw nsw i64 %6 to i32
  %13 = xor i32 %12, 63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %14 = zext nneg i32 %13 to i64
  %15 = shl nuw i64 1, %14
  %16 = call fastcc i64 @libdivide_128_div_64_to_64(i64 noundef %15, i64 noundef range(i64 2, 0) %1, ptr noundef %3) #7
  %17 = load i64, ptr %3, align 8
  %18 = shl i64 %16, 1
  %19 = shl i64 %17, 1
  %20 = icmp uge i64 %19, %1
  %21 = icmp slt i64 %17, 0
  %22 = or i1 %21, %20
  %23 = zext i1 %22 to i64
  %24 = zext nneg i32 %13 to i64
  %25 = or disjoint i64 %18, 1
  %26 = add i64 %25, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  br label %27

27:                                               ; preds = %9, %11
  %28 = phi i64 [ 0, %9 ], [ %26, %11 ]
  %29 = phi i64 [ %10, %9 ], [ %24, %11 ]
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @target_s32_bf(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %60, label %4

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
  %43 = sext i32 %38 to i64
  %44 = sext i32 %0 to i64
  %45 = mul nsw i64 %43, %44
  %46 = lshr i64 %45, 32
  %47 = trunc nuw i64 %46 to i32
  %48 = add nsw i32 %0, %47
  %49 = icmp eq i32 %38, 0
  %50 = sext i1 %49 to i32
  %51 = zext nneg i8 %40 to i32
  %52 = shl nuw i32 1, %51
  %53 = add i32 %52, %50
  %54 = icmp slt i32 %48, 0
  %55 = select i1 %54, i32 %53, i32 0
  %56 = add i32 %55, %48
  %57 = ashr i32 %56, %51
  %58 = xor i32 %57, %42
  %59 = sub nsw i32 %58, %42
  br label %60

60:                                               ; preds = %2, %37
  %61 = phi i32 [ %59, %37 ], [ 0, %2 ]
  ret i32 %61
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define dso_local i64 @target_s64_bf(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %59, label %5

5:                                                ; preds = %2
  %6 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %1, i1 false)
  %7 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %6, i1 true)
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %20 = sub nsw i64 62, %7
  %21 = and i64 %20, 4294967295
  %22 = shl nuw i64 1, %21
  %23 = call fastcc i64 @libdivide_128_div_64_to_64(i64 noundef %22, i64 noundef %6, ptr noundef %3) #7
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
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  br label %36

36:                                               ; preds = %12, %18
  %37 = phi i64 [ 0, %12 ], [ %33, %18 ]
  %38 = phi i8 [ %17, %12 ], [ %35, %18 ]
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @target_u32_recover(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %70, label %3

3:                                                ; preds = %1
  %4 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %0, i1 true)
  %5 = xor i32 %4, 31
  %6 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %0)
  %7 = icmp samesign ult i32 %6, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = trunc nuw nsw i32 %5 to i8
  br label %39

10:                                               ; preds = %3
  %11 = shl nuw i32 1, %5
  %12 = zext i32 %11 to i64
  %13 = shl nuw i64 %12, 32
  %14 = zext i32 %0 to i64
  %15 = udiv i64 %13, %14
  %16 = trunc i64 %15 to i32
  %17 = mul i32 %0, %16
  %18 = add i32 %17, %0
  %19 = icmp ult i32 %18, %11
  br i1 %19, label %20, label %22

20:                                               ; preds = %10
  %21 = trunc nuw nsw i32 %5 to i8
  br label %33

22:                                               ; preds = %10
  %23 = sub i32 0, %17
  %24 = shl i32 %16, 1
  %25 = shl i32 %23, 1
  %26 = icmp uge i32 %25, %0
  %27 = icmp slt i32 %23, 0
  %28 = or i1 %27, %26
  %29 = zext i1 %28 to i32
  %30 = or disjoint i32 %24, %29
  %31 = trunc nuw nsw i32 %5 to i8
  %32 = or disjoint i8 %31, 64
  br label %33

33:                                               ; preds = %20, %22
  %34 = phi i32 [ %30, %22 ], [ %16, %20 ]
  %35 = phi i8 [ %32, %22 ], [ %21, %20 ]
  %36 = add i32 %34, 1
  %37 = and i8 %35, 31
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %8, %33
  %40 = phi i8 [ %9, %8 ], [ %37, %33 ]
  %41 = zext nneg i8 %40 to i32
  %42 = shl nuw i32 1, %41
  br label %70

43:                                               ; preds = %33
  %44 = and i8 %35, 64
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = zext nneg i8 %37 to i32
  %48 = shl nuw i32 1, %47
  %49 = zext i32 %48 to i64
  %50 = shl nuw i64 %49, 32
  %51 = zext i32 %36 to i64
  %52 = udiv i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = add i32 %53, 1
  br label %70

55:                                               ; preds = %43
  %56 = or disjoint i8 %37, 32
  %57 = zext nneg i8 %56 to i64
  %58 = shl nuw i64 1, %57
  %59 = zext i32 %36 to i64
  %60 = or disjoint i64 %59, 4294967296
  %61 = udiv i64 %58, %60
  %62 = trunc nuw i64 %61 to i32
  %63 = urem i64 %58, %60
  %64 = shl i32 %62, 1
  %65 = shl nuw nsw i64 %63, 1
  %66 = icmp samesign uge i64 %65, %60
  %67 = zext i1 %66 to i32
  %68 = or disjoint i32 %64, 1
  %69 = add i32 %68, %67
  br label %70

70:                                               ; preds = %55, %46, %39, %1
  %71 = phi i32 [ 0, %1 ], [ %69, %55 ], [ %54, %46 ], [ %42, %39 ]
  ret i32 %71
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define dso_local i64 @target_u64_recover(i64 noundef %0) local_unnamed_addr #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %75, label %5

5:                                                ; preds = %1
  %6 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %0, i1 true)
  %7 = trunc nuw nsw i64 %6 to i32
  %8 = xor i32 %7, 63
  %9 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %0)
  %10 = icmp samesign ult i64 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = trunc nuw nsw i32 %8 to i8
  br label %38

13:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %14 = zext nneg i32 %8 to i64
  %15 = shl nuw i64 1, %14
  %16 = call fastcc i64 @libdivide_128_div_64_to_64(i64 noundef %15, i64 noundef range(i64 1, 0) %0, ptr noundef %2) #7
  %17 = load i64, ptr %2, align 8
  %18 = sub i64 %0, %17
  %19 = icmp ult i64 %18, %15
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = trunc nuw nsw i32 %8 to i8
  br label %32

22:                                               ; preds = %13
  %23 = shl i64 %16, 1
  %24 = shl i64 %17, 1
  %25 = icmp uge i64 %24, %0
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
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  %36 = and i8 %33, 63
  %37 = icmp eq i64 %35, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %11, %32
  %39 = phi i8 [ %12, %11 ], [ %36, %32 ]
  %40 = zext nneg i8 %39 to i64
  %41 = shl nuw i64 1, %40
  br label %75

42:                                               ; preds = %32
  %43 = and i8 %33, 64
  %44 = icmp eq i8 %43, 0
  %45 = zext nneg i8 %36 to i64
  %46 = shl nuw i64 1, %45
  br i1 %44, label %47, label %50

47:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %48 = call fastcc i64 @libdivide_128_div_64_to_64(i64 noundef %46, i64 noundef %35, ptr noundef %3) #7
  %49 = add i64 %48, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  br label %75

50:                                               ; preds = %42
  %51 = zext i64 %46 to i128
  %52 = shl nuw i128 %51, 64
  %53 = zext i64 %35 to i128
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
  %67 = icmp uge i64 %65, %35
  %68 = select i1 %66, i1 %67, i1 false
  %69 = zext i1 %68 to i64
  br label %70

70:                                               ; preds = %64, %50
  %71 = phi i64 [ 1, %50 ], [ %69, %64 ]
  %72 = shl i64 %56, 1
  %73 = or disjoint i64 %72, 1
  %74 = add i64 %73, %71
  br label %75

75:                                               ; preds = %70, %47, %38, %1
  %76 = phi i64 [ 0, %1 ], [ %74, %70 ], [ %49, %47 ], [ %41, %38 ]
  ret i64 %76
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @target_s32_recover(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %77, label %3

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, 0
  %5 = tail call i32 @llvm.abs.i32(i32 range(i32 1, 0) %0, i1 false)
  %6 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %5, i1 true)
  %7 = xor i32 %6, 31
  %8 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %5)
  %9 = icmp samesign ult i32 %8, 2
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = lshr i32 %0, 24
  %12 = and i32 %11, 128
  %13 = or disjoint i32 %7, %12
  %14 = trunc nuw i32 %13 to i8
  %15 = and i8 %14, 31
  br label %51

16:                                               ; preds = %3
  %17 = sub nsw i32 30, %6
  %18 = shl nuw nsw i32 1, %17
  %19 = zext nneg i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 32
  %21 = zext i32 %5 to i64
  %22 = udiv i64 %20, %21
  %23 = trunc i64 %22 to i32
  %24 = mul i32 %5, %23
  %25 = add i32 %24, %5
  %26 = lshr i32 %25, %7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = trunc nsw i32 %17 to i8
  br label %41

30:                                               ; preds = %16
  %31 = sub i32 0, %24
  %32 = shl i32 %23, 1
  %33 = shl i32 %31, 1
  %34 = icmp uge i32 %33, %5
  %35 = icmp slt i32 %31, 0
  %36 = or i1 %35, %34
  %37 = zext i1 %36 to i32
  %38 = or disjoint i32 %32, %37
  %39 = trunc nuw nsw i32 %7 to i8
  %40 = or disjoint i8 %39, 64
  br label %41

41:                                               ; preds = %28, %30
  %42 = phi i32 [ %38, %30 ], [ %23, %28 ]
  %43 = phi i8 [ %40, %30 ], [ %29, %28 ]
  %44 = add i32 %42, 1
  %45 = or i8 %43, -128
  %46 = xor i32 %42, -1
  %47 = select i1 %4, i8 %45, i8 %43
  %48 = select i1 %4, i32 %46, i32 %44
  %49 = and i8 %47, 31
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %10, %41
  %52 = phi i8 [ %15, %10 ], [ %49, %41 ]
  %53 = phi i8 [ %14, %10 ], [ %47, %41 ]
  %54 = zext nneg i8 %52 to i32
  %55 = shl nuw i32 1, %54
  %56 = sub i32 0, %55
  %57 = icmp slt i8 %53, 0
  %58 = select i1 %57, i32 %56, i32 %55
  br label %77

59:                                               ; preds = %41
  %60 = and i8 %47, 64
  %61 = icmp eq i8 %60, 0
  %62 = icmp slt i32 %48, 1
  %63 = icmp sgt i32 %48, -1
  %64 = select i1 %61, i1 %63, i1 %62
  %65 = sub nsw i32 0, %48
  %66 = select i1 %64, i32 %48, i32 %65
  %67 = or disjoint i8 %49, 32
  %68 = zext nneg i8 %67 to i64
  %69 = shl nuw i64 1, %68
  %70 = zext i32 %66 to i64
  %71 = udiv i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = add nsw i32 %72, 1
  %74 = xor i32 %72, -1
  %75 = icmp slt i8 %47, 0
  %76 = select i1 %75, i32 %74, i32 %73
  br label %77

77:                                               ; preds = %59, %51, %1
  %78 = phi i32 [ 0, %1 ], [ %58, %51 ], [ %76, %59 ]
  ret i32 %78
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define dso_local i64 @target_s64_recover(i64 noundef %0) local_unnamed_addr #2 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %75, label %5

5:                                                ; preds = %1
  %6 = icmp slt i64 %0, 0
  %7 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %0, i1 false)
  %8 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %7, i1 true)
  %9 = trunc nuw nsw i64 %8 to i32
  %10 = xor i32 %9, 63
  %11 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %7)
  %12 = icmp samesign ult i64 %11, 2
  br i1 %12, label %13, label %20

13:                                               ; preds = %5
  %14 = lshr i64 %0, 56
  %15 = trunc nuw nsw i64 %14 to i32
  %16 = and i32 %15, 128
  %17 = or disjoint i32 %10, %16
  %18 = trunc nuw i32 %17 to i8
  %19 = and i8 %18, 63
  br label %52

20:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %21 = sub nsw i32 62, %9
  %22 = zext nneg i32 %21 to i64
  %23 = shl nuw i64 1, %22
  %24 = call fastcc i64 @libdivide_128_div_64_to_64(i64 noundef %23, i64 noundef %7, ptr noundef %2) #7
  %25 = load i64, ptr %2, align 8
  %26 = sub i64 %7, %25
  %27 = zext nneg i32 %10 to i64
  %28 = lshr i64 %26, %27
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = trunc nsw i32 %21 to i8
  br label %42

32:                                               ; preds = %20
  %33 = shl i64 %24, 1
  %34 = shl i64 %25, 1
  %35 = icmp uge i64 %34, %7
  %36 = icmp slt i64 %25, 0
  %37 = or i1 %36, %35
  %38 = zext i1 %37 to i64
  %39 = or disjoint i64 %33, %38
  %40 = trunc nuw nsw i32 %10 to i8
  %41 = or disjoint i8 %40, 64
  br label %42

42:                                               ; preds = %30, %32
  %43 = phi i64 [ %39, %32 ], [ %24, %30 ]
  %44 = phi i8 [ %41, %32 ], [ %31, %30 ]
  %45 = add i64 %43, 1
  %46 = or i8 %44, -128
  %47 = xor i64 %43, -1
  %48 = select i1 %6, i8 %46, i8 %44
  %49 = select i1 %6, i64 %47, i64 %45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  %50 = and i8 %48, 63
  %51 = icmp eq i64 %49, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %13, %42
  %53 = phi i8 [ %19, %13 ], [ %50, %42 ]
  %54 = phi i8 [ %18, %13 ], [ %48, %42 ]
  %55 = zext nneg i8 %53 to i64
  %56 = shl nuw i64 1, %55
  %57 = sub i64 0, %56
  %58 = icmp slt i8 %54, 0
  %59 = select i1 %58, i64 %57, i64 %56
  br label %75

60:                                               ; preds = %42
  %61 = and i8 %48, 64
  %62 = icmp eq i8 %61, 0
  %63 = icmp slt i64 %49, 1
  %64 = icmp sgt i64 %49, -1
  %65 = select i1 %62, i1 %64, i1 %63
  %66 = sub nsw i64 0, %49
  %67 = select i1 %65, i64 %49, i64 %66
  %68 = zext nneg i8 %50 to i64
  %69 = shl nuw i64 1, %68
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %70 = call fastcc i64 @libdivide_128_div_64_to_64(i64 noundef %69, i64 noundef %67, ptr noundef %3) #7
  %71 = add i64 %70, 1
  %72 = xor i64 %70, -1
  %73 = icmp slt i8 %48, 0
  %74 = select i1 %73, i64 %72, i64 %71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  br label %75

75:                                               ; preds = %60, %52, %1
  %76 = phi i64 [ 0, %1 ], [ %59, %52 ], [ %74, %60 ]
  ret i64 %76
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal fastcc i64 @libdivide_128_div_64_to_64(i64 noundef %0, i64 noundef %1, ptr noundef nonnull writeonly %2) unnamed_addr #4 {
  %4 = icmp ult i64 %0, %1
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  store i64 -1, ptr %2, align 8
  br label %55

6:                                                ; preds = %3
  %7 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 true)
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
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { optsize }

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
