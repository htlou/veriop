; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/155f560/api64_sym4to8/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/155f560/api64_sym4to8/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = add i64 %1, -9
  %5 = icmp ult i64 %4, -5
  br i1 %5, label %29, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 1
  %8 = trunc i64 %2 to i32
  %9 = add i32 %8, -1191285703
  %10 = add i32 %9, %7
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %12 = getelementptr inbounds i8, ptr %11, i64 -4
  %13 = load i32, ptr %12, align 1
  %14 = lshr i64 %2, 32
  %15 = trunc nuw i64 %14 to i32
  %16 = add i32 %15, 597969854
  %17 = add i32 %16, %13
  %18 = zext i32 %10 to i64
  %19 = zext i32 %17 to i64
  %20 = or disjoint i64 %18, 4294967296
  %21 = mul i64 %20, %19
  %22 = add nuw nsw i64 %1, %18
  %23 = add i64 %22, %21
  %24 = lshr i64 %23, 29
  %25 = xor i64 %24, %23
  %26 = mul i64 %25, 1609587929392839161
  %27 = lshr i64 %26, 32
  %28 = xor i64 %27, %26
  br label %29

29:                                               ; preds = %3, %6
  %30 = phi i64 [ %28, %6 ], [ 0, %3 ]
  ret i64 %30
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
