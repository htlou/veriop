; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/558c9a9/wrap_raw.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/558c9a9/wrap_raw.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local range(i64 0, -8589934590) i64 @target_raw_mult32to64(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = and i64 %0, 4294967295
  %4 = and i64 %1, 4294967295
  %5 = mul nuw i64 %4, %3
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local void @target_raw_mult64to128(i64 noundef %0, i64 noundef %1, ptr noundef writeonly initializes((0, 16)) %2) local_unnamed_addr #1 {
  %4 = and i64 %0, 4294967295
  %5 = and i64 %1, 4294967295
  %6 = mul nuw i64 %5, %4
  %7 = lshr i64 %0, 32
  %8 = mul nuw i64 %5, %7
  %9 = lshr i64 %1, 32
  %10 = mul nuw i64 %9, %4
  %11 = mul nuw i64 %9, %7
  %12 = lshr i64 %6, 32
  %13 = and i64 %8, 4294967295
  %14 = add nuw i64 %13, %10
  %15 = add nuw i64 %14, %12
  %16 = lshr i64 %8, 32
  %17 = lshr i64 %15, 32
  %18 = add nuw i64 %16, %11
  %19 = add nuw i64 %18, %17
  %20 = shl i64 %15, 32
  %21 = and i64 %6, 4294967295
  %22 = or disjoint i64 %20, %21
  store i64 %22, ptr %2, align 4
  %23 = getelementptr inbounds nuw i8, ptr %2, i32 8
  store i64 %19, ptr %23, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cmov,+cx8,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cmov,+cx8,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
