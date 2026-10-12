; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/947f8b2/wrap_u32api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/947f8b2/wrap_u32api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_u32_api(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

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
