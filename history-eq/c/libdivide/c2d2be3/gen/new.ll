; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c2d2be3/wrap_gen.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/c2d2be3/wrap_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_u64_gen_magic(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %61, label %3

3:                                                ; preds = %1
  %4 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %0, i1 true)
  %5 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %0)
  %6 = icmp samesign ult i64 %5, 2
  br i1 %6, label %61, label %7

7:                                                ; preds = %3
  %8 = xor i64 %4, 63
  %9 = shl nuw i64 1, %8
  %10 = icmp ult i64 %9, %0
  br i1 %10, label %11, label %45

11:                                               ; preds = %7
  %12 = shl i64 %0, %4
  %13 = shl i64 %9, %4
  %14 = lshr i64 %12, 32
  %15 = udiv i64 %13, %14
  %16 = urem i64 %13, %14
  %17 = and i64 %12, 4294967295
  %18 = mul i64 %15, %17
  %19 = shl nuw i64 %16, 32
  %20 = icmp ugt i64 %18, %19
  %21 = sub nuw i64 %18, %19
  %22 = icmp ugt i64 %21, %12
  %23 = select i1 %22, i64 4294967294, i64 4294967295
  %24 = select i1 %20, i64 %23, i64 0
  %25 = add i64 %24, %15
  %26 = shl i64 %13, 32
  %27 = and i64 %25, 4294967295
  %28 = mul i64 %27, %12
  %29 = sub i64 %26, %28
  %30 = udiv i64 %29, %14
  %31 = urem i64 %29, %14
  %32 = mul i64 %30, %17
  %33 = shl nuw i64 %31, 32
  %34 = icmp ugt i64 %32, %33
  %35 = sub nuw i64 %32, %33
  %36 = icmp ugt i64 %35, %12
  %37 = select i1 %36, i64 4294967294, i64 4294967295
  %38 = select i1 %34, i64 %37, i64 0
  %39 = add i64 %38, %30
  %40 = shl nuw i64 %27, 32
  %41 = and i64 %39, 4294967295
  %42 = or disjoint i64 %41, %40
  %43 = mul i64 %0, %42
  %44 = sub i64 0, %43
  br label %45

45:                                               ; preds = %7, %11
  %46 = phi i64 [ %44, %11 ], [ -1, %7 ]
  %47 = phi i64 [ %42, %11 ], [ -1, %7 ]
  %48 = sub i64 %0, %46
  %49 = icmp ult i64 %48, %9
  br i1 %49, label %58, label %50

50:                                               ; preds = %45
  %51 = shl i64 %47, 1
  %52 = shl i64 %46, 1
  %53 = icmp uge i64 %52, %0
  %54 = icmp slt i64 %46, 0
  %55 = or i1 %54, %53
  %56 = zext i1 %55 to i64
  %57 = or disjoint i64 %51, %56
  br label %58

58:                                               ; preds = %45, %50
  %59 = phi i64 [ %57, %50 ], [ %47, %45 ]
  %60 = add i64 %59, 1
  br label %61

61:                                               ; preds = %58, %3, %1
  %62 = phi i64 [ 0, %1 ], [ %60, %58 ], [ 0, %3 ]
  ret i64 %62
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext range(i8 0, -128) i8 @target_u64_gen_more(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %55, label %3

3:                                                ; preds = %1
  %4 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %0, i1 true)
  %5 = trunc nuw nsw i64 %4 to i32
  %6 = xor i32 %5, 63
  %7 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %0)
  %8 = icmp samesign ult i64 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = trunc nuw nsw i32 %6 to i8
  br label %55

11:                                               ; preds = %3
  %12 = zext nneg i32 %6 to i64
  %13 = shl nuw i64 1, %12
  %14 = icmp ult i64 %13, %0
  br i1 %14, label %15, label %48

15:                                               ; preds = %11
  %16 = shl i64 %0, %4
  %17 = shl i64 %13, %4
  %18 = lshr i64 %16, 32
  %19 = udiv i64 %17, %18
  %20 = urem i64 %17, %18
  %21 = and i64 %16, 4294967295
  %22 = mul i64 %19, %21
  %23 = shl nuw i64 %20, 32
  %24 = icmp ugt i64 %22, %23
  %25 = sub nuw i64 %22, %23
  %26 = icmp ugt i64 %25, %16
  %27 = select i1 %26, i64 4294967294, i64 4294967295
  %28 = select i1 %24, i64 %27, i64 0
  %29 = add i64 %28, %19
  %30 = shl i64 %17, 32
  %31 = and i64 %29, 4294967295
  %32 = mul i64 %31, %16
  %33 = sub i64 %30, %32
  %34 = udiv i64 %33, %18
  %35 = urem i64 %33, %18
  %36 = mul i64 %34, %21
  %37 = shl nuw i64 %35, 32
  %38 = icmp ugt i64 %36, %37
  %39 = sub nuw i64 %36, %37
  %40 = icmp ugt i64 %39, %16
  %41 = select i1 %40, i64 4294967294, i64 4294967295
  %42 = select i1 %38, i64 %41, i64 0
  %43 = add i64 %42, %34
  %44 = shl i64 %29, 32
  %45 = and i64 %43, 4294967295
  %46 = or disjoint i64 %45, %44
  %47 = mul i64 %46, %0
  br label %48

48:                                               ; preds = %11, %15
  %49 = phi i64 [ %47, %15 ], [ 1, %11 ]
  %50 = add i64 %49, %0
  %51 = icmp ult i64 %50, %13
  %52 = trunc nuw nsw i32 %6 to i8
  %53 = or disjoint i8 %52, 64
  %54 = select i1 %51, i8 %52, i8 %53
  br label %55

55:                                               ; preds = %48, %9, %1
  %56 = phi i8 [ 0, %1 ], [ %10, %9 ], [ %54, %48 ]
  ret i8 %56
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64_gen_magic(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %68, label %3

3:                                                ; preds = %1
  %4 = icmp slt i64 %0, 0
  %5 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %0, i1 false)
  %6 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %5, i1 true)
  %7 = xor i64 %6, 63
  %8 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %5)
  %9 = icmp samesign ult i64 %8, 2
  br i1 %9, label %68, label %10

10:                                               ; preds = %3
  %11 = sub nsw i64 62, %6
  %12 = and i64 %11, 4294967295
  %13 = shl nuw i64 1, %12
  %14 = icmp ult i64 %13, %5
  br i1 %14, label %15, label %49

15:                                               ; preds = %10
  %16 = shl i64 %5, %6
  %17 = shl i64 %13, %6
  %18 = lshr i64 %16, 32
  %19 = udiv i64 %17, %18
  %20 = urem i64 %17, %18
  %21 = and i64 %16, 4294967295
  %22 = mul i64 %19, %21
  %23 = shl nuw i64 %20, 32
  %24 = icmp ugt i64 %22, %23
  %25 = sub nuw i64 %22, %23
  %26 = icmp ugt i64 %25, %16
  %27 = select i1 %26, i64 4294967294, i64 4294967295
  %28 = select i1 %24, i64 %27, i64 0
  %29 = add i64 %28, %19
  %30 = shl i64 %17, 32
  %31 = and i64 %29, 4294967295
  %32 = mul i64 %31, %16
  %33 = sub i64 %30, %32
  %34 = udiv i64 %33, %18
  %35 = urem i64 %33, %18
  %36 = mul i64 %34, %21
  %37 = shl nuw i64 %35, 32
  %38 = icmp ugt i64 %36, %37
  %39 = sub nuw i64 %36, %37
  %40 = icmp ugt i64 %39, %16
  %41 = select i1 %40, i64 4294967294, i64 4294967295
  %42 = select i1 %38, i64 %41, i64 0
  %43 = add i64 %42, %34
  %44 = shl nuw i64 %31, 32
  %45 = and i64 %43, 4294967295
  %46 = or disjoint i64 %45, %44
  %47 = mul i64 %5, %46
  %48 = sub i64 0, %47
  br label %49

49:                                               ; preds = %10, %15
  %50 = phi i64 [ %48, %15 ], [ -1, %10 ]
  %51 = phi i64 [ %46, %15 ], [ -1, %10 ]
  %52 = sub i64 %5, %50
  %53 = lshr i64 %52, %7
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %49
  %56 = shl i64 %51, 1
  %57 = shl i64 %50, 1
  %58 = icmp uge i64 %57, %5
  %59 = icmp slt i64 %50, 0
  %60 = or i1 %59, %58
  %61 = zext i1 %60 to i64
  %62 = or disjoint i64 %56, %61
  br label %63

63:                                               ; preds = %49, %55
  %64 = phi i64 [ %62, %55 ], [ %51, %49 ]
  %65 = add i64 %64, 1
  %66 = xor i64 %64, -1
  %67 = select i1 %4, i64 %66, i64 %65
  br label %68

68:                                               ; preds = %63, %3, %1
  %69 = phi i64 [ 0, %1 ], [ %67, %63 ], [ 0, %3 ]
  ret i64 %69
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i8 @target_s64_gen_more(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %67, label %3

3:                                                ; preds = %1
  %4 = icmp slt i64 %0, 0
  %5 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %0, i1 false)
  %6 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %5, i1 true)
  %7 = trunc nuw nsw i64 %6 to i32
  %8 = xor i32 %7, 63
  %9 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %5)
  %10 = icmp samesign ult i64 %9, 2
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = lshr i64 %0, 56
  %13 = trunc nuw nsw i64 %12 to i32
  %14 = and i32 %13, 128
  %15 = or disjoint i32 %8, %14
  %16 = trunc nuw i32 %15 to i8
  br label %67

17:                                               ; preds = %3
  %18 = sub nsw i32 62, %7
  %19 = zext nneg i32 %18 to i64
  %20 = shl nuw i64 1, %19
  %21 = icmp ult i64 %20, %5
  br i1 %21, label %22, label %55

22:                                               ; preds = %17
  %23 = shl i64 %5, %6
  %24 = shl i64 %20, %6
  %25 = lshr i64 %23, 32
  %26 = udiv i64 %24, %25
  %27 = urem i64 %24, %25
  %28 = and i64 %23, 4294967295
  %29 = mul i64 %26, %28
  %30 = shl nuw i64 %27, 32
  %31 = icmp ugt i64 %29, %30
  %32 = sub nuw i64 %29, %30
  %33 = icmp ugt i64 %32, %23
  %34 = select i1 %33, i64 4294967294, i64 4294967295
  %35 = select i1 %31, i64 %34, i64 0
  %36 = add i64 %35, %26
  %37 = shl i64 %24, 32
  %38 = and i64 %36, 4294967295
  %39 = mul i64 %38, %23
  %40 = sub i64 %37, %39
  %41 = udiv i64 %40, %25
  %42 = urem i64 %40, %25
  %43 = mul i64 %41, %28
  %44 = shl nuw i64 %42, 32
  %45 = icmp ugt i64 %43, %44
  %46 = sub nuw i64 %43, %44
  %47 = icmp ugt i64 %46, %23
  %48 = select i1 %47, i64 4294967294, i64 4294967295
  %49 = select i1 %45, i64 %48, i64 0
  %50 = add i64 %49, %41
  %51 = shl i64 %36, 32
  %52 = and i64 %50, 4294967295
  %53 = or disjoint i64 %52, %51
  %54 = mul i64 %53, %5
  br label %55

55:                                               ; preds = %17, %22
  %56 = phi i64 [ %54, %22 ], [ 1, %17 ]
  %57 = add i64 %56, %5
  %58 = zext nneg i32 %8 to i64
  %59 = lshr i64 %57, %58
  %60 = icmp eq i64 %59, 0
  %61 = trunc nuw nsw i32 %8 to i8
  %62 = or disjoint i8 %61, 64
  %63 = trunc nsw i32 %18 to i8
  %64 = select i1 %60, i8 %63, i8 %62
  %65 = or i8 %64, -128
  %66 = select i1 %4, i8 %65, i8 %64
  br label %67

67:                                               ; preds = %55, %11, %1
  %68 = phi i8 [ 0, %1 ], [ %16, %11 ], [ %66, %55 ]
  ret i8 %68
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
