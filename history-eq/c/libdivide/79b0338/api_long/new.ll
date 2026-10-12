; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/79b0338/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/79b0338/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_bf_api(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %63, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @llvm.abs.i32(i32 range(i32 1, 0) %1, i1 true)
  %6 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %5, i1 true)
  %7 = xor i32 %6, 31
  %8 = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %5)
  %9 = icmp samesign ult i32 %8, 2
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = lshr i32 %1, 24
  %12 = and i32 %11, 128
  %13 = or disjoint i32 %7, %12
  %14 = trunc nuw i32 %13 to i8
  %15 = or disjoint i8 %14, 32
  br label %40

16:                                               ; preds = %4
  %17 = icmp slt i32 %1, 0
  %18 = sub nsw i32 30, %6
  %19 = shl nuw nsw i32 1, %18
  %20 = zext nneg i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 32
  %22 = zext nneg i32 %5 to i64
  %23 = udiv i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = mul i32 %5, %24
  %26 = sub i32 0, %25
  %27 = shl nuw nsw i64 %23, 1
  %28 = shl i32 %26, 1
  %29 = icmp uge i32 %28, %5
  %30 = icmp slt i32 %26, 0
  %31 = or i1 %30, %29
  %32 = zext i1 %31 to i64
  %33 = trunc nuw nsw i32 %7 to i8
  %34 = or disjoint i64 %27, 1
  %35 = add nuw nsw i64 %34, %32
  %36 = select i1 %17, i8 -64, i8 64
  %37 = or disjoint i8 %36, %33
  %38 = shl i64 %35, 32
  %39 = ashr exact i64 %38, 32
  br label %40

40:                                               ; preds = %10, %16
  %41 = phi i64 [ 0, %10 ], [ %39, %16 ]
  %42 = phi i8 [ %15, %10 ], [ %37, %16 ]
  %43 = and i8 %42, 31
  %44 = ashr i8 %42, 7
  %45 = sext i8 %44 to i32
  %46 = sext i32 %0 to i64
  %47 = mul nsw i64 %41, %46
  %48 = lshr i64 %47, 32
  %49 = trunc nuw i64 %48 to i32
  %50 = add nsw i32 %0, %49
  %51 = lshr i8 %42, 5
  %52 = and i8 %51, 1
  %53 = zext nneg i8 %52 to i32
  %54 = zext nneg i8 %43 to i32
  %55 = shl nuw i32 1, %54
  %56 = sub nuw i32 %55, %53
  %57 = icmp slt i32 %50, 0
  %58 = select i1 %57, i32 %56, i32 0
  %59 = add i32 %58, %50
  %60 = ashr i32 %59, %54
  %61 = xor i32 %60, %45
  %62 = sub nsw i32 %61, %45
  br label %63

63:                                               ; preds = %2, %40
  %64 = phi i32 [ %62, %40 ], [ 0, %2 ]
  ret i32 %64
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_bf_api_not_pm1(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, 1
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %64, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @llvm.abs.i32(i32 range(i32 1, 0) %1, i1 true)
  %7 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %6, i1 true)
  %8 = xor i32 %7, 31
  %9 = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %6)
  %10 = icmp samesign ult i32 %9, 2
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = lshr i32 %1, 24
  %13 = and i32 %12, 128
  %14 = or disjoint i32 %8, %13
  %15 = trunc nuw i32 %14 to i8
  %16 = or disjoint i8 %15, 32
  br label %41

17:                                               ; preds = %5
  %18 = icmp slt i32 %1, 0
  %19 = sub nuw nsw i32 30, %7
  %20 = shl nuw nsw i32 1, %19
  %21 = zext nneg i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 32
  %23 = zext nneg i32 %6 to i64
  %24 = udiv i64 %22, %23
  %25 = trunc i64 %24 to i32
  %26 = mul i32 %6, %25
  %27 = sub i32 0, %26
  %28 = shl nuw nsw i64 %24, 1
  %29 = shl i32 %27, 1
  %30 = icmp uge i32 %29, %6
  %31 = icmp slt i32 %27, 0
  %32 = or i1 %31, %30
  %33 = zext i1 %32 to i64
  %34 = trunc nuw nsw i32 %8 to i8
  %35 = or disjoint i64 %28, 1
  %36 = add nuw nsw i64 %35, %33
  %37 = select i1 %18, i8 -64, i8 64
  %38 = or disjoint i8 %37, %34
  %39 = shl i64 %36, 32
  %40 = ashr exact i64 %39, 32
  br label %41

41:                                               ; preds = %11, %17
  %42 = phi i64 [ 0, %11 ], [ %40, %17 ]
  %43 = phi i8 [ %16, %11 ], [ %38, %17 ]
  %44 = and i8 %43, 31
  %45 = ashr i8 %43, 7
  %46 = sext i8 %45 to i32
  %47 = sext i32 %0 to i64
  %48 = mul nsw i64 %42, %47
  %49 = lshr i64 %48, 32
  %50 = trunc nuw i64 %49 to i32
  %51 = add nsw i32 %0, %50
  %52 = lshr i8 %43, 5
  %53 = and i8 %52, 1
  %54 = zext nneg i8 %53 to i32
  %55 = zext nneg i8 %44 to i32
  %56 = shl nuw i32 1, %55
  %57 = sub nuw i32 %56, %54
  %58 = icmp slt i32 %51, 0
  %59 = select i1 %58, i32 %57, i32 0
  %60 = add i32 %59, %51
  %61 = ashr i32 %60, %55
  %62 = xor i32 %61, %46
  %63 = sub nsw i32 %62, %46
  br label %64

64:                                               ; preds = %2, %41
  %65 = phi i32 [ %63, %41 ], [ 0, %2 ]
  ret i32 %65
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
