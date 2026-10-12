; ModuleID = '/tmp/veriop-d4db-scalar-on/new-cpu0-inline.ll'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/d4dbf70/wrap_disp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 4) i32 @target_featureTest() local_unnamed_addr #0 {
  %1 = tail call i32 @xxm_cpuid(i32 noundef 0, i32 noundef 0, i32 noundef 0) #2
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %28, label %3, !prof !5

3:                                                ; preds = %0
  %4 = tail call i32 @xxm_cpuid(i32 noundef 1, i32 noundef 0, i32 noundef 3) #2
  %5 = and i32 %4, 67108864
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %28, label %7, !prof !5

7:                                                ; preds = %3
  %8 = tail call i32 @xxm_cpuid(i32 noundef 1, i32 noundef 0, i32 noundef 2) #2
  %9 = icmp ugt i32 %1, 6
  %10 = and i32 %8, 201326592
  %11 = icmp eq i32 %10, 201326592
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %28, !prof !6

13:                                               ; preds = %7
  %14 = tail call i32 @xxm_cpuid(i32 noundef 7, i32 noundef 0, i32 noundef 1) #2
  %15 = tail call i64 @xxm_xgetbv() #2
  %16 = and i32 %14, 32
  %17 = icmp ne i32 %16, 0
  %18 = and i64 %15, 6
  %19 = icmp eq i64 %18, 6
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = and i32 %14, 65536
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = and i64 %15, 230
  %26 = icmp eq i64 %25, 230
  %27 = select i1 %26, i32 3, i32 2
  br label %28

28:                                               ; preds = %24, %21, %13, %7, %3, %0
  %29 = phi i32 [ 0, %0 ], [ 0, %3 ], [ 1, %7 ], [ 1, %13 ], [ 2, %21 ], [ %27, %24 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @xxm_cpuid(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @xxm_xgetbv() local_unnamed_addr #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!"branch_weights", i32 2000, i32 2002}
