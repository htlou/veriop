; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/947f8b2/wrap_u32api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/947f8b2/wrap_u32api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_u32_api(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %48, label %4

4:                                                ; preds = %2
  %5 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %1, i1 true)
  %6 = xor i32 %5, 31
  %7 = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %1)
  %8 = icmp samesign ult i32 %7, 2
  br i1 %8, label %27, label %9

9:                                                ; preds = %4
  %10 = shl nuw i32 1, %6
  %11 = zext i32 %10 to i64
  %12 = shl nuw i64 %11, 32
  %13 = zext i32 %1 to i64
  %14 = udiv i64 %12, %13
  %15 = trunc i64 %14 to i32
  %16 = mul i32 %1, %15
  %17 = add i32 %16, %1
  %18 = icmp ult i32 %17, %10
  br i1 %18, label %19, label %29

19:                                               ; preds = %9
  %20 = add nuw nsw i64 %14, 1
  %21 = and i64 %20, 4294967295
  %22 = zext i32 %0 to i64
  %23 = mul nuw i64 %21, %22
  %24 = lshr i64 %23, 32
  %25 = trunc nuw i64 %24 to i32
  %26 = lshr i32 %25, %6
  br label %48

27:                                               ; preds = %4
  %28 = lshr i32 %0, %6
  br label %48

29:                                               ; preds = %9
  %30 = sub i32 0, %16
  %31 = shl nuw nsw i64 %14, 1
  %32 = shl i32 %30, 1
  %33 = icmp uge i32 %32, %1
  %34 = icmp slt i32 %30, 0
  %35 = or i1 %34, %33
  %36 = zext i1 %35 to i64
  %37 = or disjoint i64 %31, %36
  %38 = add nuw nsw i64 %37, 1
  %39 = and i64 %38, 4294967295
  %40 = zext i32 %0 to i64
  %41 = mul nuw i64 %39, %40
  %42 = lshr i64 %41, 32
  %43 = trunc nuw i64 %42 to i32
  %44 = sub i32 %0, %43
  %45 = lshr i32 %44, 1
  %46 = add i32 %45, %43
  %47 = lshr i32 %46, %6
  br label %48

48:                                               ; preds = %19, %29, %27, %2
  %49 = phi i32 [ 0, %2 ], [ %28, %27 ], [ %47, %29 ], [ %26, %19 ]
  ret i32 %49
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
