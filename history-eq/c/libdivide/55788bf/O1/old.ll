; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/55788bf/wrap.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/55788bf/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @target_default_then_divide(i32 noundef returned %0) local_unnamed_addr #0 {
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @target_default_then_divide_s64(i64 noundef returned %0) local_unnamed_addr #0 {
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_default_then_assign(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %60, label %4

4:                                                ; preds = %2
  %5 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %1)
  %6 = icmp samesign ult i32 %5, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 1, 0) %1, i1 true)
  %9 = or disjoint i32 %8, 128
  br label %37

10:                                               ; preds = %4
  %11 = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %1, i1 true)
  %12 = xor i32 %11, 31
  %13 = shl nuw i32 1, %12
  %14 = zext i32 %13 to i64
  %15 = shl nuw i64 %14, 32
  %16 = zext i32 %1 to i64
  %17 = udiv i64 %15, %16
  %18 = trunc i64 %17 to i32
  %19 = mul i32 %1, %18
  %20 = add i32 %19, %1
  %21 = icmp ult i32 %20, %13
  br i1 %21, label %32, label %22

22:                                               ; preds = %10
  %23 = sub i32 0, %19
  %24 = shl i64 %17, 1
  %25 = shl i32 %23, 1
  %26 = icmp uge i32 %25, %1
  %27 = icmp slt i32 %23, 0
  %28 = or i1 %27, %26
  %29 = zext i1 %28 to i64
  %30 = or disjoint i64 %24, %29
  %31 = or disjoint i32 %12, 64
  br label %32

32:                                               ; preds = %22, %10
  %33 = phi i32 [ %31, %22 ], [ %12, %10 ]
  %34 = phi i64 [ %30, %22 ], [ %17, %10 ]
  %35 = add i64 %34, 1
  %36 = and i64 %35, 4294967295
  br label %37

37:                                               ; preds = %7, %32
  %38 = phi i64 [ 0, %7 ], [ %36, %32 ]
  %39 = phi i32 [ %9, %7 ], [ %33, %32 ]
  %40 = and i32 %39, 255
  %41 = and i32 %39, 128
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = and i32 %39, 31
  %45 = lshr i32 %0, %44
  br label %60

46:                                               ; preds = %37
  %47 = zext i32 %0 to i64
  %48 = mul nuw i64 %38, %47
  %49 = lshr i64 %48, 32
  %50 = trunc nuw i64 %49 to i32
  %51 = icmp ult i32 %39, 64
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = sub i32 %0, %50
  %54 = lshr i32 %53, 1
  %55 = add i32 %54, %50
  %56 = and i32 %39, 31
  %57 = lshr i32 %55, %56
  br label %60

58:                                               ; preds = %46
  %59 = lshr i32 %50, %40
  br label %60

60:                                               ; preds = %58, %52, %43, %2
  %61 = phi i32 [ 0, %2 ], [ %45, %43 ], [ %57, %52 ], [ %59, %58 ]
  ret i32 %61
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_array_init(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %113, label %4

4:                                                ; preds = %2
  %5 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %1)
  %6 = icmp samesign ult i64 %5, 2
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1, i1 true)
  %9 = trunc nuw nsw i64 %8 to i8
  %10 = or disjoint i8 %9, -128
  br label %87

11:                                               ; preds = %4
  %12 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true)
  %13 = trunc nuw nsw i64 %12 to i32
  %14 = xor i32 %13, 63
  %15 = zext nneg i32 %14 to i64
  %16 = shl nuw i64 1, %15
  %17 = icmp ult i64 %16, %1
  br i1 %17, label %18, label %66

18:                                               ; preds = %11
  %19 = shl i64 %1, %12
  %20 = shl i64 %16, %12
  %21 = lshr i64 %19, 32
  %22 = and i64 %19, 4294967295
  %23 = udiv i64 %20, %21
  %24 = mul i64 %23, %21
  %25 = urem i64 %20, %21
  br label %26

26:                                               ; preds = %34, %18
  %27 = phi i64 [ %23, %18 ], [ %35, %34 ]
  %28 = phi i64 [ %25, %18 ], [ %36, %34 ]
  %29 = icmp ugt i64 %27, 4294967295
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = mul nuw i64 %27, %22
  %32 = shl i64 %28, 32
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30, %26
  %35 = add i64 %27, -1
  %36 = add i64 %28, %21
  %37 = icmp ult i64 %36, 4294967296
  br i1 %37, label %26, label %38

38:                                               ; preds = %34, %30
  %39 = phi i64 [ %35, %34 ], [ %27, %30 ]
  %40 = shl i64 %20, 32
  %41 = mul i64 %39, %19
  %42 = sub i64 %40, %41
  %43 = udiv i64 %42, %21
  %44 = mul i64 %43, %21
  %45 = urem i64 %42, %21
  br label %46

46:                                               ; preds = %54, %38
  %47 = phi i64 [ %43, %38 ], [ %55, %54 ]
  %48 = phi i64 [ %45, %38 ], [ %56, %54 ]
  %49 = icmp ugt i64 %47, 4294967295
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = mul nuw i64 %47, %22
  %52 = shl i64 %48, 32
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50, %46
  %55 = add i64 %47, -1
  %56 = add i64 %48, %21
  %57 = icmp ult i64 %56, 4294967296
  br i1 %57, label %46, label %58

58:                                               ; preds = %54, %50
  %59 = phi i64 [ %55, %54 ], [ %47, %50 ]
  %60 = shl i64 %42, 32
  %61 = mul i64 %59, %19
  %62 = sub i64 %60, %61
  %63 = lshr i64 %62, %12
  %64 = shl i64 %39, 32
  %65 = add i64 %59, %64
  br label %66

66:                                               ; preds = %58, %11
  %67 = phi i64 [ %63, %58 ], [ -1, %11 ]
  %68 = phi i64 [ %65, %58 ], [ -1, %11 ]
  %69 = sub i64 %1, %67
  %70 = icmp ult i64 %69, %16
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = trunc nuw nsw i32 %14 to i8
  br label %83

73:                                               ; preds = %66
  %74 = shl i64 %68, 1
  %75 = shl i64 %67, 1
  %76 = icmp uge i64 %75, %1
  %77 = icmp slt i64 %67, 0
  %78 = or i1 %77, %76
  %79 = zext i1 %78 to i64
  %80 = or disjoint i64 %74, %79
  %81 = trunc nuw nsw i32 %14 to i8
  %82 = or disjoint i8 %81, 64
  br label %83

83:                                               ; preds = %73, %71
  %84 = phi i64 [ %68, %71 ], [ %80, %73 ]
  %85 = phi i8 [ %72, %71 ], [ %82, %73 ]
  %86 = add i64 %84, 1
  br label %87

87:                                               ; preds = %7, %83
  %88 = phi i64 [ 0, %7 ], [ %86, %83 ]
  %89 = phi i8 [ %10, %7 ], [ %85, %83 ]
  %90 = zext i8 %89 to i32
  %91 = icmp sgt i8 %89, -1
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = and i32 %90, 63
  %94 = zext nneg i32 %93 to i64
  %95 = lshr i64 %0, %94
  br label %113

96:                                               ; preds = %87
  %97 = zext i64 %88 to i128
  %98 = zext i64 %0 to i128
  %99 = mul nuw i128 %97, %98
  %100 = lshr i128 %99, 64
  %101 = trunc nuw i128 %100 to i64
  %102 = icmp ult i8 %89, 64
  br i1 %102, label %110, label %103

103:                                              ; preds = %96
  %104 = sub i64 %0, %101
  %105 = lshr i64 %104, 1
  %106 = add i64 %105, %101
  %107 = and i32 %90, 63
  %108 = zext nneg i32 %107 to i64
  %109 = lshr i64 %106, %108
  br label %113

110:                                              ; preds = %96
  %111 = zext nneg i8 %89 to i64
  %112 = lshr i64 %101, %111
  br label %113

113:                                              ; preds = %110, %103, %92, %2
  %114 = phi i64 [ 0, %2 ], [ %95, %92 ], [ %109, %103 ], [ %112, %110 ]
  ret i64 %114
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #2

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
