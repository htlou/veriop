; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/703a791/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/703a791/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_u32_bfx(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i32 %1, 2
  br i1 %3, label %59, label %4

4:                                                ; preds = %2
  %5 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 2, 0) %1)
  %6 = icmp samesign ult i32 %5, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 2, 0) %1, i1 true)
  %9 = or disjoint i32 %8, 128
  br label %37

10:                                               ; preds = %4
  %11 = tail call range(i32 0, 31) i32 @llvm.ctlz.i32(i32 range(i32 2, 0) %1, i1 true)
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
  %24 = shl nuw nsw i64 %17, 1
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
  %35 = add nuw nsw i64 %34, 1
  %36 = and i64 %35, 4294967295
  br label %37

37:                                               ; preds = %7, %32
  %38 = phi i64 [ 0, %7 ], [ %36, %32 ]
  %39 = phi i32 [ %9, %7 ], [ %33, %32 ]
  %40 = and i32 %39, 128
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = and i32 %39, 31
  %44 = lshr i32 %0, %43
  br label %59

45:                                               ; preds = %37
  %46 = zext i32 %0 to i64
  %47 = mul nuw i64 %38, %46
  %48 = lshr i64 %47, 32
  %49 = trunc nuw i64 %48 to i32
  %50 = icmp samesign ult i32 %39, 64
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = sub i32 %0, %49
  %53 = lshr i32 %52, 1
  %54 = add i32 %53, %49
  %55 = and i32 %39, 31
  %56 = lshr i32 %54, %55
  br label %59

57:                                               ; preds = %45
  %58 = lshr i32 %49, %39
  br label %59

59:                                               ; preds = %57, %51, %42, %2
  %60 = phi i32 [ 0, %2 ], [ %44, %42 ], [ %56, %51 ], [ %58, %57 ]
  ret i32 %60
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

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
