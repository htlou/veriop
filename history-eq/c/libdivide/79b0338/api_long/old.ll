; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/79b0338/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/79b0338/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_bf_api(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %61, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @llvm.abs.i32(i32 range(i32 1, 0) %1, i1 true)
  %6 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %5, i1 true)
  %7 = xor i32 %6, 31
  %8 = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %5)
  %9 = icmp samesign ult i32 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = lshr i32 %1, 24
  %12 = and i32 %11, 128
  %13 = or disjoint i32 %7, %12
  %14 = trunc nuw i32 %13 to i8
  br label %38

15:                                               ; preds = %4
  %16 = icmp slt i32 %1, 0
  %17 = sub nsw i32 30, %6
  %18 = shl nuw nsw i32 1, %17
  %19 = zext nneg i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 32
  %21 = zext nneg i32 %5 to i64
  %22 = udiv i64 %20, %21
  %23 = trunc i64 %22 to i32
  %24 = mul i32 %5, %23
  %25 = sub i32 0, %24
  %26 = shl nuw nsw i64 %22, 1
  %27 = shl i32 %25, 1
  %28 = icmp uge i32 %27, %5
  %29 = icmp slt i32 %25, 0
  %30 = or i1 %29, %28
  %31 = zext i1 %30 to i64
  %32 = trunc nuw nsw i32 %7 to i8
  %33 = or disjoint i64 %26, 1
  %34 = add nuw nsw i64 %33, %31
  %35 = select i1 %16, i8 -64, i8 64
  %36 = or disjoint i8 %35, %32
  %37 = trunc i64 %34 to i32
  br label %38

38:                                               ; preds = %10, %15
  %39 = phi i32 [ 0, %10 ], [ %37, %15 ]
  %40 = phi i8 [ %14, %10 ], [ %36, %15 ]
  %41 = and i8 %40, 31
  %42 = ashr i8 %40, 7
  %43 = sext i8 %42 to i32
  %44 = sext i32 %39 to i64
  %45 = sext i32 %0 to i64
  %46 = mul nsw i64 %44, %45
  %47 = lshr i64 %46, 32
  %48 = trunc nuw i64 %47 to i32
  %49 = add nsw i32 %0, %48
  %50 = icmp eq i32 %39, 0
  %51 = sext i1 %50 to i32
  %52 = zext nneg i8 %41 to i32
  %53 = shl nuw i32 1, %52
  %54 = add i32 %53, %51
  %55 = icmp slt i32 %49, 0
  %56 = select i1 %55, i32 %54, i32 0
  %57 = add i32 %56, %49
  %58 = ashr i32 %57, %52
  %59 = xor i32 %58, %43
  %60 = sub nsw i32 %59, %43
  br label %61

61:                                               ; preds = %2, %38
  %62 = phi i32 [ %60, %38 ], [ 0, %2 ]
  ret i32 %62
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_bf_api_not_pm1(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, 1
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %62, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @llvm.abs.i32(i32 range(i32 1, 0) %1, i1 true)
  %7 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %6, i1 true)
  %8 = xor i32 %7, 31
  %9 = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %6)
  %10 = icmp samesign ult i32 %9, 2
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = lshr i32 %1, 24
  %13 = and i32 %12, 128
  %14 = or disjoint i32 %8, %13
  %15 = trunc nuw i32 %14 to i8
  br label %39

16:                                               ; preds = %5
  %17 = icmp slt i32 %1, 0
  %18 = sub nuw nsw i32 30, %7
  %19 = shl nuw nsw i32 1, %18
  %20 = zext nneg i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 32
  %22 = zext nneg i32 %6 to i64
  %23 = udiv i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = mul i32 %6, %24
  %26 = sub i32 0, %25
  %27 = shl nuw nsw i64 %23, 1
  %28 = shl i32 %26, 1
  %29 = icmp uge i32 %28, %6
  %30 = icmp slt i32 %26, 0
  %31 = or i1 %30, %29
  %32 = zext i1 %31 to i64
  %33 = trunc nuw nsw i32 %8 to i8
  %34 = or disjoint i64 %27, 1
  %35 = add nuw nsw i64 %34, %32
  %36 = select i1 %17, i8 -64, i8 64
  %37 = or disjoint i8 %36, %33
  %38 = trunc i64 %35 to i32
  br label %39

39:                                               ; preds = %11, %16
  %40 = phi i32 [ 0, %11 ], [ %38, %16 ]
  %41 = phi i8 [ %15, %11 ], [ %37, %16 ]
  %42 = and i8 %41, 31
  %43 = ashr i8 %41, 7
  %44 = sext i8 %43 to i32
  %45 = sext i32 %40 to i64
  %46 = sext i32 %0 to i64
  %47 = mul nsw i64 %45, %46
  %48 = lshr i64 %47, 32
  %49 = trunc nuw i64 %48 to i32
  %50 = add nsw i32 %0, %49
  %51 = icmp eq i32 %40, 0
  %52 = sext i1 %51 to i32
  %53 = zext nneg i8 %42 to i32
  %54 = shl nuw i32 1, %53
  %55 = add i32 %54, %52
  %56 = icmp slt i32 %50, 0
  %57 = select i1 %56, i32 %55, i32 0
  %58 = add i32 %57, %50
  %59 = ashr i32 %58, %53
  %60 = xor i32 %59, %44
  %61 = sub nsw i32 %60, %44
  br label %62

62:                                               ; preds = %2, %39
  %63 = phi i32 [ %61, %39 ], [ 0, %2 ]
  ret i32 %63
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #2

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
