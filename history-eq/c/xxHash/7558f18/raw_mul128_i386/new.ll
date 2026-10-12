; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7558f18/raw_mul128_i386/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7558f18/raw_mul128_i386/wrapper.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_fold64(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i64 %0, 32
  %4 = lshr i64 %1, 32
  %5 = and i64 %0, 4294967295
  %6 = and i64 %1, 4294967295
  %7 = mul nuw i64 %6, %5
  %8 = lshr i64 %7, 32
  %9 = mul nuw i64 %6, %3
  %10 = add nuw i64 %8, %9
  %11 = lshr i64 %10, 32
  %12 = mul nuw i64 %4, %5
  %13 = and i64 %10, 4294967295
  %14 = add nuw i64 %13, %12
  %15 = lshr i64 %14, 32
  %16 = mul nuw i64 %4, %3
  %17 = and i64 %7, 4294967295
  %18 = shl i64 %14, 32
  %19 = add nuw i64 %17, %16
  %20 = add nuw i64 %19, %11
  %21 = add i64 %20, %15
  %22 = add i64 %21, %18
  ret i64 %22
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+x87" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
