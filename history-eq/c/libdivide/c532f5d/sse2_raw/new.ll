; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c532f5d/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c532f5d/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_u32_raw(<2 x i64> noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = zext i8 %2 to i32
  %5 = icmp sgt i8 %2, -1
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = and i32 %4, 31
  %8 = bitcast <2 x i64> %0 to <4 x i32>
  %9 = insertelement <4 x i32> poison, i32 %7, i64 0
  %10 = shufflevector <4 x i32> %9, <4 x i32> poison, <4 x i32> zeroinitializer
  %11 = lshr <4 x i32> %8, %10
  br label %38

12:                                               ; preds = %3
  %13 = insertelement <4 x i32> poison, i32 %1, i64 0
  %14 = shufflevector <4 x i32> %13, <4 x i32> poison, <4 x i32> zeroinitializer
  %15 = bitcast <4 x i32> %14 to <2 x i64>
  %16 = and <2 x i64> %0, splat (i64 4294967295)
  %17 = and <2 x i64> %15, splat (i64 4294967295)
  %18 = mul nuw <2 x i64> %17, %16
  %19 = lshr <2 x i64> %18, splat (i64 32)
  %20 = lshr <2 x i64> %0, splat (i64 32)
  %21 = mul nuw <2 x i64> %17, %20
  %22 = and <2 x i64> %21, splat (i64 -4294967296)
  %23 = or disjoint <2 x i64> %19, %22
  %24 = icmp samesign ult i8 %2, 64
  br i1 %24, label %35, label %25

25:                                               ; preds = %12
  %26 = and i32 %4, 31
  %27 = bitcast <2 x i64> %0 to <4 x i32>
  %28 = bitcast <2 x i64> %23 to <4 x i32>
  %29 = sub <4 x i32> %27, %28
  %30 = lshr <4 x i32> %29, splat (i32 1)
  %31 = add <4 x i32> %30, %28
  %32 = insertelement <4 x i32> poison, i32 %26, i64 0
  %33 = shufflevector <4 x i32> %32, <4 x i32> poison, <4 x i32> zeroinitializer
  %34 = lshr <4 x i32> %31, %33
  br label %38

35:                                               ; preds = %12
  %36 = bitcast <2 x i64> %23 to <4 x i32>
  %37 = tail call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %36, i32 range(i32 0, 256) %4)
  br label %38

38:                                               ; preds = %6, %25, %35
  %39 = phi <4 x i32> [ %11, %6 ], [ %34, %25 ], [ %37, %35 ]
  %40 = bitcast <4 x i32> %39 to <2 x i64>
  ret <2 x i64> %40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_u32_bf_raw(<2 x i64> noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = insertelement <4 x i32> poison, i32 %1, i64 0
  %5 = shufflevector <4 x i32> %4, <4 x i32> poison, <4 x i32> zeroinitializer
  %6 = bitcast <4 x i32> %5 to <2 x i64>
  %7 = and <2 x i64> %0, splat (i64 4294967295)
  %8 = and <2 x i64> %6, splat (i64 4294967295)
  %9 = mul nuw <2 x i64> %8, %7
  %10 = lshr <2 x i64> %9, splat (i64 32)
  %11 = lshr <2 x i64> %0, splat (i64 32)
  %12 = mul nuw <2 x i64> %8, %11
  %13 = and <2 x i64> %12, splat (i64 -4294967296)
  %14 = or disjoint <2 x i64> %10, %13
  %15 = bitcast <2 x i64> %0 to <4 x i32>
  %16 = bitcast <2 x i64> %14 to <4 x i32>
  %17 = sub <4 x i32> %15, %16
  %18 = lshr <4 x i32> %17, splat (i32 1)
  %19 = add <4 x i32> %18, %16
  %20 = zext i8 %2 to i32
  %21 = tail call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %19, i32 range(i32 0, 256) %20)
  %22 = bitcast <4 x i32> %21 to <2 x i64>
  ret <2 x i64> %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_s32_raw(<2 x i64> noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = zext i8 %2 to i32
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = and i32 %4, 31
  %9 = shl nsw i32 -1, %8
  %10 = xor i32 %9, -1
  %11 = insertelement <4 x i32> poison, i32 %10, i64 0
  %12 = shufflevector <4 x i32> %11, <4 x i32> poison, <4 x i32> zeroinitializer
  %13 = bitcast <2 x i64> %0 to <4 x i32>
  %14 = icmp slt <4 x i32> %13, zeroinitializer
  %15 = select <4 x i1> %14, <4 x i32> %12, <4 x i32> zeroinitializer
  %16 = add <4 x i32> %15, %13
  %17 = insertelement <4 x i32> poison, i32 %8, i64 0
  %18 = shufflevector <4 x i32> %17, <4 x i32> poison, <4 x i32> zeroinitializer
  %19 = ashr <4 x i32> %16, %18
  %20 = ashr i8 %2, 7
  %21 = sext i8 %20 to i32
  %22 = insertelement <4 x i32> poison, i32 %21, i64 0
  %23 = shufflevector <4 x i32> %22, <4 x i32> poison, <4 x i32> zeroinitializer
  %24 = xor <4 x i32> %19, %23
  %25 = sub <4 x i32> %24, %23
  br label %64

26:                                               ; preds = %3
  %27 = insertelement <4 x i32> poison, i32 %1, i64 0
  %28 = shufflevector <4 x i32> %27, <4 x i32> poison, <4 x i32> zeroinitializer
  %29 = bitcast <4 x i32> %28 to <2 x i64>
  %30 = and <2 x i64> %0, splat (i64 4294967295)
  %31 = and <2 x i64> %29, splat (i64 4294967295)
  %32 = mul nuw <2 x i64> %31, %30
  %33 = lshr <2 x i64> %32, splat (i64 32)
  %34 = lshr <2 x i64> %0, splat (i64 32)
  %35 = mul nuw <2 x i64> %31, %34
  %36 = and <2 x i64> %35, splat (i64 -4294967296)
  %37 = or disjoint <2 x i64> %33, %36
  %38 = bitcast <2 x i64> %0 to <4 x i32>
  %39 = bitcast <2 x i64> %37 to <4 x i32>
  %40 = icmp slt <4 x i32> %38, zeroinitializer
  %41 = select <4 x i1> %40, <4 x i32> %28, <4 x i32> zeroinitializer
  %42 = icmp slt <4 x i32> %28, zeroinitializer
  %43 = select <4 x i1> %42, <4 x i32> %38, <4 x i32> zeroinitializer
  %44 = add <4 x i32> %43, %41
  %45 = sub <4 x i32> %39, %44
  %46 = and i32 %4, 64
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %26
  %49 = ashr i8 %2, 7
  %50 = sext i8 %49 to i32
  %51 = insertelement <4 x i32> poison, i32 %50, i64 0
  %52 = shufflevector <4 x i32> %51, <4 x i32> poison, <4 x i32> zeroinitializer
  %53 = xor <4 x i32> %52, %38
  %54 = sub <4 x i32> %53, %52
  %55 = add <4 x i32> %54, %45
  br label %56

56:                                               ; preds = %48, %26
  %57 = phi <4 x i32> [ %55, %48 ], [ %45, %26 ]
  %58 = and i32 %4, 31
  %59 = insertelement <4 x i32> poison, i32 %58, i64 0
  %60 = shufflevector <4 x i32> %59, <4 x i32> poison, <4 x i32> zeroinitializer
  %61 = ashr <4 x i32> %57, %60
  %62 = lshr <4 x i32> %61, splat (i32 31)
  %63 = add <4 x i32> %62, %61
  br label %64

64:                                               ; preds = %7, %56
  %65 = phi <4 x i32> [ %25, %7 ], [ %63, %56 ]
  %66 = bitcast <4 x i32> %65 to <2 x i64>
  ret <2 x i64> %66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_s32_bf_raw(<2 x i64> noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = and i8 %2, 31
  %5 = ashr i8 %2, 7
  %6 = sext i8 %5 to i32
  %7 = insertelement <4 x i32> poison, i32 %6, i64 0
  %8 = shufflevector <4 x i32> %7, <4 x i32> poison, <4 x i32> zeroinitializer
  %9 = insertelement <4 x i32> poison, i32 %1, i64 0
  %10 = shufflevector <4 x i32> %9, <4 x i32> poison, <4 x i32> zeroinitializer
  %11 = bitcast <4 x i32> %10 to <2 x i64>
  %12 = and <2 x i64> %0, splat (i64 4294967295)
  %13 = and <2 x i64> %11, splat (i64 4294967295)
  %14 = mul nuw <2 x i64> %13, %12
  %15 = lshr <2 x i64> %14, splat (i64 32)
  %16 = lshr <2 x i64> %0, splat (i64 32)
  %17 = mul nuw <2 x i64> %13, %16
  %18 = and <2 x i64> %17, splat (i64 -4294967296)
  %19 = or disjoint <2 x i64> %15, %18
  %20 = bitcast <2 x i64> %0 to <4 x i32>
  %21 = bitcast <2 x i64> %19 to <4 x i32>
  %22 = icmp slt <4 x i32> %20, zeroinitializer
  %23 = select <4 x i1> %22, <4 x i32> %10, <4 x i32> zeroinitializer
  %24 = icmp slt <4 x i32> %10, zeroinitializer
  %25 = select <4 x i1> %24, <4 x i32> %20, <4 x i32> zeroinitializer
  %26 = add <4 x i32> %23, %25
  %27 = sub <4 x i32> %20, %26
  %28 = add <4 x i32> %27, %21
  %29 = icmp eq i32 %1, 0
  %30 = sext i1 %29 to i32
  %31 = zext nneg i8 %4 to i32
  %32 = shl nuw i32 1, %31
  %33 = add i32 %32, %30
  %34 = insertelement <4 x i32> poison, i32 %33, i64 0
  %35 = shufflevector <4 x i32> %34, <4 x i32> poison, <4 x i32> zeroinitializer
  %36 = icmp slt <4 x i32> %28, zeroinitializer
  %37 = select <4 x i1> %36, <4 x i32> %35, <4 x i32> zeroinitializer
  %38 = add <4 x i32> %37, %28
  %39 = insertelement <4 x i32> poison, i32 %31, i64 0
  %40 = shufflevector <4 x i32> %39, <4 x i32> poison, <4 x i32> zeroinitializer
  %41 = ashr <4 x i32> %38, %40
  %42 = xor <4 x i32> %41, %8
  %43 = sub <4 x i32> %42, %8
  %44 = bitcast <4 x i32> %43 to <2 x i64>
  ret <2 x i64> %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_u64_raw(<2 x i64> noundef %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = zext i8 %2 to i32
  %5 = icmp sgt i8 %2, -1
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = and i32 %4, 63
  %8 = zext nneg i32 %7 to i64
  %9 = insertelement <2 x i64> poison, i64 %8, i64 0
  %10 = shufflevector <2 x i64> %9, <2 x i64> poison, <2 x i32> zeroinitializer
  %11 = lshr <2 x i64> %0, %10
  br label %49

12:                                               ; preds = %3
  %13 = insertelement <2 x i64> poison, i64 %1, i64 0
  %14 = shufflevector <2 x i64> %13, <2 x i64> poison, <2 x i32> zeroinitializer
  %15 = bitcast <2 x i64> %0 to <4 x i32>
  %16 = shufflevector <4 x i32> %15, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %17 = bitcast <4 x i32> %16 to <2 x i64>
  %18 = bitcast <2 x i64> %14 to <4 x i32>
  %19 = shufflevector <4 x i32> %18, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %20 = bitcast <4 x i32> %19 to <2 x i64>
  %21 = and <2 x i64> %0, splat (i64 4294967295)
  %22 = and <2 x i64> %14, splat (i64 4294967295)
  %23 = mul nuw <2 x i64> %22, %21
  %24 = and <2 x i64> %20, splat (i64 4294967295)
  %25 = mul nuw <2 x i64> %24, %21
  %26 = and <2 x i64> %17, splat (i64 4294967295)
  %27 = mul nuw <2 x i64> %26, %22
  %28 = mul nuw <2 x i64> %24, %26
  %29 = lshr <2 x i64> %23, splat (i64 32)
  %30 = add nuw <2 x i64> %25, %29
  %31 = and <2 x i64> %30, splat (i64 4294967295)
  %32 = lshr <2 x i64> %30, splat (i64 32)
  %33 = add nuw <2 x i64> %31, %27
  %34 = lshr <2 x i64> %33, splat (i64 32)
  %35 = add nuw <2 x i64> %32, %28
  %36 = add nuw <2 x i64> %35, %34
  %37 = icmp samesign ult i8 %2, 64
  br i1 %37, label %47, label %38

38:                                               ; preds = %12
  %39 = and i32 %4, 63
  %40 = sub <2 x i64> %0, %36
  %41 = lshr <2 x i64> %40, splat (i64 1)
  %42 = add <2 x i64> %41, %36
  %43 = zext nneg i32 %39 to i64
  %44 = insertelement <2 x i64> poison, i64 %43, i64 0
  %45 = shufflevector <2 x i64> %44, <2 x i64> poison, <2 x i32> zeroinitializer
  %46 = lshr <2 x i64> %42, %45
  br label %49

47:                                               ; preds = %12
  %48 = tail call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %36, i32 range(i32 0, 256) %4)
  br label %49

49:                                               ; preds = %6, %38, %47
  %50 = phi <2 x i64> [ %11, %6 ], [ %46, %38 ], [ %48, %47 ]
  ret <2 x i64> %50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_u64_bf_raw(<2 x i64> noundef %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = insertelement <2 x i64> poison, i64 %1, i64 0
  %5 = shufflevector <2 x i64> %4, <2 x i64> poison, <2 x i32> zeroinitializer
  %6 = bitcast <2 x i64> %0 to <4 x i32>
  %7 = shufflevector <4 x i32> %6, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %8 = bitcast <4 x i32> %7 to <2 x i64>
  %9 = bitcast <2 x i64> %5 to <4 x i32>
  %10 = shufflevector <4 x i32> %9, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %11 = bitcast <4 x i32> %10 to <2 x i64>
  %12 = and <2 x i64> %0, splat (i64 4294967295)
  %13 = and <2 x i64> %5, splat (i64 4294967295)
  %14 = mul nuw <2 x i64> %13, %12
  %15 = and <2 x i64> %11, splat (i64 4294967295)
  %16 = mul nuw <2 x i64> %15, %12
  %17 = and <2 x i64> %8, splat (i64 4294967295)
  %18 = mul nuw <2 x i64> %17, %13
  %19 = mul nuw <2 x i64> %15, %17
  %20 = lshr <2 x i64> %14, splat (i64 32)
  %21 = add nuw <2 x i64> %16, %20
  %22 = and <2 x i64> %21, splat (i64 4294967295)
  %23 = lshr <2 x i64> %21, splat (i64 32)
  %24 = add nuw <2 x i64> %22, %18
  %25 = lshr <2 x i64> %24, splat (i64 32)
  %26 = add nuw <2 x i64> %23, %19
  %27 = add nuw <2 x i64> %26, %25
  %28 = sub <2 x i64> %0, %27
  %29 = lshr <2 x i64> %28, splat (i64 1)
  %30 = add <2 x i64> %29, %27
  %31 = zext i8 %2 to i32
  %32 = tail call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %30, i32 range(i32 0, 256) %31)
  ret <2 x i64> %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_s64_raw(<2 x i64> noundef %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %5, label %35

5:                                                ; preds = %3
  %6 = and i8 %2, 63
  %7 = zext nneg i8 %6 to i64
  %8 = shl nsw i64 -1, %7
  %9 = xor i64 %8, -1
  %10 = insertelement <2 x i64> poison, i64 %9, i64 0
  %11 = shufflevector <2 x i64> %10, <2 x i64> poison, <2 x i32> zeroinitializer
  %12 = bitcast <2 x i64> %0 to <4 x i32>
  %13 = ashr <4 x i32> %12, <i32 0, i32 31, i32 0, i32 31>
  %14 = shufflevector <4 x i32> %13, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %15 = bitcast <4 x i32> %14 to <2 x i64>
  %16 = and <2 x i64> %11, %15
  %17 = add <2 x i64> %16, %0
  %18 = xor i8 %6, 63
  %19 = zext nneg i8 %18 to i64
  %20 = shl nuw i64 1, %19
  %21 = insertelement <2 x i64> poison, i64 %20, i64 0
  %22 = shufflevector <2 x i64> %21, <2 x i64> poison, <2 x i32> zeroinitializer
  %23 = insertelement <2 x i64> poison, i64 %7, i64 0
  %24 = shufflevector <2 x i64> %23, <2 x i64> poison, <2 x i32> zeroinitializer
  %25 = lshr <2 x i64> %17, %24
  %26 = xor <2 x i64> %25, %22
  %27 = sub <2 x i64> %26, %22
  %28 = ashr i8 %2, 7
  %29 = sext i8 %28 to i32
  %30 = insertelement <4 x i32> poison, i32 %29, i64 0
  %31 = shufflevector <4 x i32> %30, <4 x i32> poison, <4 x i32> zeroinitializer
  %32 = bitcast <4 x i32> %31 to <2 x i64>
  %33 = xor <2 x i64> %27, %32
  %34 = sub <2 x i64> %33, %32
  br label %98

35:                                               ; preds = %3
  %36 = insertelement <2 x i64> poison, i64 %1, i64 0
  %37 = shufflevector <2 x i64> %36, <2 x i64> poison, <2 x i32> zeroinitializer
  %38 = bitcast <2 x i64> %0 to <4 x i32>
  %39 = shufflevector <4 x i32> %38, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %40 = bitcast <4 x i32> %39 to <2 x i64>
  %41 = bitcast <2 x i64> %37 to <4 x i32>
  %42 = shufflevector <4 x i32> %41, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %43 = bitcast <4 x i32> %42 to <2 x i64>
  %44 = and <2 x i64> %0, splat (i64 4294967295)
  %45 = and <2 x i64> %37, splat (i64 4294967295)
  %46 = mul nuw <2 x i64> %45, %44
  %47 = and <2 x i64> %43, splat (i64 4294967295)
  %48 = mul nuw <2 x i64> %47, %44
  %49 = and <2 x i64> %40, splat (i64 4294967295)
  %50 = mul nuw <2 x i64> %49, %45
  %51 = mul nuw <2 x i64> %47, %49
  %52 = lshr <2 x i64> %46, splat (i64 32)
  %53 = add nuw <2 x i64> %48, %52
  %54 = and <2 x i64> %53, splat (i64 4294967295)
  %55 = lshr <2 x i64> %53, splat (i64 32)
  %56 = add nuw <2 x i64> %54, %50
  %57 = lshr <2 x i64> %56, splat (i64 32)
  %58 = ashr <4 x i32> %38, <i32 0, i32 31, i32 0, i32 31>
  %59 = shufflevector <4 x i32> %58, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %60 = bitcast <4 x i32> %59 to <2 x i64>
  %61 = and <2 x i64> %37, %60
  %62 = ashr <4 x i32> %41, <i32 0, i32 31, i32 0, i32 31>
  %63 = shufflevector <4 x i32> %62, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %64 = bitcast <4 x i32> %63 to <2 x i64>
  %65 = and <2 x i64> %0, %64
  %66 = add <2 x i64> %65, %61
  %67 = sub <2 x i64> %51, %66
  %68 = add <2 x i64> %67, %55
  %69 = add <2 x i64> %68, %57
  %70 = zext i8 %2 to i32
  %71 = and i32 %70, 64
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %35
  %74 = ashr i8 %2, 7
  %75 = sext i8 %74 to i32
  %76 = insertelement <4 x i32> poison, i32 %75, i64 0
  %77 = shufflevector <4 x i32> %76, <4 x i32> poison, <4 x i32> zeroinitializer
  %78 = bitcast <4 x i32> %77 to <2 x i64>
  %79 = xor <2 x i64> %0, %78
  %80 = sub <2 x i64> %79, %78
  %81 = add <2 x i64> %80, %69
  br label %82

82:                                               ; preds = %73, %35
  %83 = phi <2 x i64> [ %81, %73 ], [ %69, %35 ]
  %84 = and i32 %70, 63
  %85 = xor i32 %84, 63
  %86 = zext nneg i32 %85 to i64
  %87 = shl nuw i64 1, %86
  %88 = insertelement <2 x i64> poison, i64 %87, i64 0
  %89 = shufflevector <2 x i64> %88, <2 x i64> poison, <2 x i32> zeroinitializer
  %90 = zext nneg i32 %84 to i64
  %91 = insertelement <2 x i64> poison, i64 %90, i64 0
  %92 = shufflevector <2 x i64> %91, <2 x i64> poison, <2 x i32> zeroinitializer
  %93 = lshr <2 x i64> %83, %92
  %94 = xor <2 x i64> %93, %89
  %95 = sub <2 x i64> %94, %89
  %96 = lshr <2 x i64> %95, splat (i64 63)
  %97 = add <2 x i64> %96, %95
  br label %98

98:                                               ; preds = %5, %82
  %99 = phi <2 x i64> [ %34, %5 ], [ %97, %82 ]
  ret <2 x i64> %99
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x i64> @target_s64_bf_raw(<2 x i64> noundef %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = and i8 %2, 63
  %5 = ashr i8 %2, 7
  %6 = sext i8 %5 to i32
  %7 = insertelement <4 x i32> poison, i32 %6, i64 0
  %8 = shufflevector <4 x i32> %7, <4 x i32> poison, <4 x i32> zeroinitializer
  %9 = bitcast <4 x i32> %8 to <2 x i64>
  %10 = insertelement <2 x i64> poison, i64 %1, i64 0
  %11 = shufflevector <2 x i64> %10, <2 x i64> poison, <2 x i32> zeroinitializer
  %12 = bitcast <2 x i64> %0 to <4 x i32>
  %13 = shufflevector <4 x i32> %12, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %14 = bitcast <4 x i32> %13 to <2 x i64>
  %15 = bitcast <2 x i64> %11 to <4 x i32>
  %16 = shufflevector <4 x i32> %15, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %17 = bitcast <4 x i32> %16 to <2 x i64>
  %18 = and <2 x i64> %0, splat (i64 4294967295)
  %19 = and <2 x i64> %11, splat (i64 4294967295)
  %20 = mul nuw <2 x i64> %19, %18
  %21 = and <2 x i64> %17, splat (i64 4294967295)
  %22 = mul nuw <2 x i64> %21, %18
  %23 = and <2 x i64> %14, splat (i64 4294967295)
  %24 = mul nuw <2 x i64> %23, %19
  %25 = mul nuw <2 x i64> %21, %23
  %26 = lshr <2 x i64> %20, splat (i64 32)
  %27 = add nuw <2 x i64> %22, %26
  %28 = and <2 x i64> %27, splat (i64 4294967295)
  %29 = lshr <2 x i64> %27, splat (i64 32)
  %30 = add nuw <2 x i64> %28, %24
  %31 = lshr <2 x i64> %30, splat (i64 32)
  %32 = ashr <4 x i32> %12, <i32 0, i32 31, i32 0, i32 31>
  %33 = shufflevector <4 x i32> %32, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %34 = bitcast <4 x i32> %33 to <2 x i64>
  %35 = and <2 x i64> %11, %34
  %36 = ashr <4 x i32> %15, <i32 0, i32 31, i32 0, i32 31>
  %37 = shufflevector <4 x i32> %36, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %38 = bitcast <4 x i32> %37 to <2 x i64>
  %39 = and <2 x i64> %0, %38
  %40 = add <2 x i64> %35, %39
  %41 = sub <2 x i64> %0, %40
  %42 = add <2 x i64> %41, %25
  %43 = add <2 x i64> %42, %29
  %44 = add <2 x i64> %43, %31
  %45 = icmp eq i64 %1, 0
  %46 = bitcast <2 x i64> %44 to <4 x i32>
  %47 = ashr <4 x i32> %46, <i32 0, i32 31, i32 0, i32 31>
  %48 = shufflevector <4 x i32> %47, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %49 = bitcast <4 x i32> %48 to <2 x i64>
  %50 = zext nneg i8 %4 to i64
  %51 = shl nuw i64 1, %50
  %52 = sext i1 %45 to i64
  %53 = add i64 %51, %52
  %54 = insertelement <2 x i64> poison, i64 %53, i64 0
  %55 = shufflevector <2 x i64> %54, <2 x i64> poison, <2 x i32> zeroinitializer
  %56 = and <2 x i64> %55, %49
  %57 = add <2 x i64> %56, %44
  %58 = xor i8 %4, 63
  %59 = zext nneg i8 %58 to i64
  %60 = shl nuw i64 1, %59
  %61 = insertelement <2 x i64> poison, i64 %60, i64 0
  %62 = shufflevector <2 x i64> %61, <2 x i64> poison, <2 x i32> zeroinitializer
  %63 = insertelement <2 x i64> poison, i64 %50, i64 0
  %64 = shufflevector <2 x i64> %63, <2 x i64> poison, <2 x i32> zeroinitializer
  %65 = lshr <2 x i64> %57, %64
  %66 = xor <2 x i64> %65, %62
  %67 = sub <2 x i64> %66, %62
  %68 = xor <2 x i64> %67, %9
  %69 = sub <2 x i64> %68, %9
  ret <2 x i64> %69
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
