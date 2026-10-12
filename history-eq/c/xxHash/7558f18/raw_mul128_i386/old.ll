; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7558f18/raw_mul128_i386/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7558f18/raw_mul128_i386/wrapper.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_fold64(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i64 %0, 32
  %4 = lshr i64 %1, 32
  %5 = mul nuw i64 %4, %3
  %6 = and i64 %0, 4294967295
  %7 = mul nuw i64 %4, %6
  %8 = and i64 %1, 4294967295
  %9 = mul nuw i64 %8, %3
  %10 = mul nuw i64 %8, %6
  %11 = shl i64 %7, 32
  %12 = add i64 %11, %10
  %13 = icmp ult i64 %12, %10
  %14 = zext i1 %13 to i64
  %15 = add i64 %7, %9
  %16 = shl i64 %15, 32
  %17 = add i64 %16, %10
  %18 = icmp ult i64 %17, %12
  %19 = zext i1 %18 to i64
  %20 = lshr i64 %7, 32
  %21 = add nuw i64 %20, %5
  %22 = lshr i64 %9, 32
  %23 = add nuw i64 %21, %22
  %24 = add i64 %23, %17
  %25 = add i64 %24, %14
  %26 = add i64 %25, %19
  ret i64 %26
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
