; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/292ddc3/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/292ddc3/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_bfx(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, 1
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %62, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @llvm.abs.i32(i32 range(i32 2, -1) %1, i1 true)
  %7 = tail call range(i32 0, 31) i32 @llvm.ctlz.i32(i32 range(i32 2, -1) %6, i1 true)
  %8 = xor i32 %7, 31
  %9 = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %6)
  %10 = icmp samesign ult i32 %9, 2
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = lshr i32 %1, 24
  %13 = and i32 %12, 128
  %14 = or disjoint i32 %8, %13
  %15 = trunc nuw i32 %14 to i8
  br label %40

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
  %27 = shl i32 %24, 1
  %28 = shl i32 %26, 1
  %29 = icmp uge i32 %28, %6
  %30 = icmp slt i32 %26, 0
  %31 = or i1 %30, %29
  %32 = zext i1 %31 to i32
  %33 = or disjoint i32 %27, %32
  %34 = trunc nuw nsw i32 %8 to i8
  %35 = add i32 %33, 1
  %36 = xor i32 %33, -1
  %37 = select i1 %17, i32 %36, i32 %35
  %38 = select i1 %17, i8 -64, i8 64
  %39 = or disjoint i8 %38, %34
  br label %40

40:                                               ; preds = %11, %16
  %41 = phi i32 [ 0, %11 ], [ %37, %16 ]
  %42 = phi i8 [ %15, %11 ], [ %39, %16 ]
  %43 = and i8 %42, 31
  %44 = ashr i8 %42, 7
  %45 = sext i8 %44 to i32
  %46 = xor i32 %41, %45
  %47 = sub nsw i32 %46, %45
  %48 = sext i32 %47 to i64
  %49 = sext i32 %0 to i64
  %50 = mul nsw i64 %48, %49
  %51 = lshr i64 %50, 32
  %52 = trunc nuw i64 %51 to i32
  %53 = add nsw i32 %0, %52
  %54 = ashr i32 %53, 31
  %55 = zext nneg i8 %43 to i32
  %56 = sub nuw nsw i32 32, %55
  %57 = lshr i32 %54, %56
  %58 = add nsw i32 %57, %53
  %59 = ashr i32 %58, %55
  %60 = xor i32 %59, %45
  %61 = sub nsw i32 %60, %45
  br label %62

62:                                               ; preds = %2, %40
  %63 = phi i32 [ %61, %40 ], [ 0, %2 ]
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
