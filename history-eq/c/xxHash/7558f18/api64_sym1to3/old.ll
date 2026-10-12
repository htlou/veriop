; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7558f18/api64_sym1to3/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7558f18/api64_sym1to3/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = add i64 %1, -4
  %5 = icmp ult i64 %4, -3
  br i1 %5, label %30, label %6

6:                                                ; preds = %3
  %7 = load i8, ptr %0, align 1
  %8 = lshr i64 %1, 1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr i8, ptr %0, i64 %1
  %12 = getelementptr i8, ptr %11, i64 -1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %7 to i64
  %15 = zext i8 %10 to i64
  %16 = shl nuw nsw i64 %15, 8
  %17 = or disjoint i64 %16, %14
  %18 = zext i8 %13 to i64
  %19 = shl nuw nsw i64 %18, 2
  %20 = add i64 %2, 3103681593
  %21 = add i64 %20, %17
  %22 = add nuw nsw i64 %1, 597969854
  %23 = add nuw nsw i64 %22, %19
  %24 = mul i64 %21, %23
  %25 = lshr i64 %24, 29
  %26 = xor i64 %25, %24
  %27 = mul i64 %26, 1609587929392839161
  %28 = lshr i64 %27, 32
  %29 = xor i64 %28, %27
  br label %30

30:                                               ; preds = %3, %6
  %31 = phi i64 [ %29, %6 ], [ 0, %3 ]
  ret i64 %31
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
