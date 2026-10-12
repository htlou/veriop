; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7558f18/api64_sym9to16/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7558f18/api64_sym9to16/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = add i64 %1, -17
  %5 = icmp ult i64 %4, -8
  br i1 %5, label %41, label %6

6:                                                ; preds = %3
  %7 = add i64 %2, %1
  %8 = mul i64 %7, -7046029288634856825
  %9 = load i64, ptr %0, align 1
  %10 = add i64 %9, 2568260970027576377
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %12 = getelementptr inbounds i8, ptr %11, i64 -8
  %13 = load i64, ptr %12, align 1
  %14 = add i64 %13, -639039334258736852
  %15 = lshr i64 %10, 32
  %16 = lshr i64 %14, 32
  %17 = and i64 %10, 4294967295
  %18 = and i64 %14, 4294967295
  %19 = mul nuw i64 %18, %17
  %20 = lshr i64 %19, 32
  %21 = mul nuw i64 %18, %15
  %22 = add nuw i64 %20, %21
  %23 = lshr i64 %22, 32
  %24 = mul nuw i64 %16, %17
  %25 = and i64 %22, 4294967295
  %26 = add nuw i64 %25, %24
  %27 = lshr i64 %26, 32
  %28 = mul nuw i64 %16, %15
  %29 = and i64 %19, 4294967295
  %30 = shl i64 %26, 32
  %31 = add i64 %28, %8
  %32 = add i64 %31, %29
  %33 = add i64 %32, %23
  %34 = add i64 %33, %27
  %35 = add i64 %34, %30
  %36 = lshr i64 %35, 29
  %37 = xor i64 %36, %35
  %38 = mul i64 %37, 1609587929392839161
  %39 = lshr i64 %38, 32
  %40 = xor i64 %39, %38
  br label %41

41:                                               ; preds = %3, %6
  %42 = phi i64 [ %40, %6 ], [ 0, %3 ]
  ret i64 %42
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
