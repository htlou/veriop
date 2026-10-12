; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/155f560/api64_sym0to3/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/155f560/api64_sym0to3/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt i64 %1, 3
  br i1 %4, label %35, label %5

5:                                                ; preds = %3
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %35, label %7

7:                                                ; preds = %5
  %8 = load i8, ptr %0, align 1
  %9 = lshr i64 %1, 1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr i8, ptr %0, i64 %1
  %13 = getelementptr i8, ptr %12, i64 -1
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %8 to i64
  %16 = zext i8 %11 to i64
  %17 = shl nuw nsw i64 %16, 8
  %18 = or disjoint i64 %17, %15
  %19 = zext i8 %14 to i64
  %20 = shl nuw nsw i64 %19, 2
  %21 = add i64 %2, 3103681593
  %22 = add i64 %21, %18
  %23 = and i64 %22, 4294967295
  %24 = lshr i64 %2, 32
  %25 = add nuw nsw i64 %1, 597969854
  %26 = add nuw nsw i64 %25, %24
  %27 = add nuw nsw i64 %26, %20
  %28 = and i64 %27, 4294967295
  %29 = mul nuw i64 %28, %23
  %30 = lshr i64 %29, 29
  %31 = xor i64 %30, %29
  %32 = mul i64 %31, 1609587929392839161
  %33 = lshr i64 %32, 32
  %34 = xor i64 %33, %32
  br label %35

35:                                               ; preds = %7, %5, %3
  %36 = phi i64 [ 0, %3 ], [ %34, %7 ], [ %2, %5 ]
  ret i64 %36
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
