; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/155f560/api64_sym4to8/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/155f560/api64_sym4to8/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = add i64 %1, -9
  %5 = icmp ult i64 %4, -5
  br i1 %5, label %31, label %6

6:                                                ; preds = %3
  %7 = mul i64 %1, -7046029288634856825
  %8 = load i32, ptr %0, align 1
  %9 = trunc i64 %2 to i32
  %10 = add i32 %9, -1191285703
  %11 = add i32 %10, %8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %13 = getelementptr inbounds i8, ptr %12, i64 -4
  %14 = load i32, ptr %13, align 1
  %15 = lshr i64 %2, 32
  %16 = trunc nuw i64 %15 to i32
  %17 = add i32 %16, 597969854
  %18 = add i32 %17, %14
  %19 = zext i32 %11 to i64
  %20 = zext i32 %18 to i64
  %21 = mul nuw i64 %20, %19
  %22 = shl nuw i64 %20, 32
  %23 = add i64 %7, %19
  %24 = add i64 %23, %21
  %25 = add i64 %24, %22
  %26 = lshr i64 %25, 29
  %27 = xor i64 %26, %25
  %28 = mul i64 %27, 1609587929392839161
  %29 = lshr i64 %28, 32
  %30 = xor i64 %29, %28
  br label %31

31:                                               ; preds = %3, %6
  %32 = phi i64 [ %30, %6 ], [ 0, %3 ]
  ret i64 %32
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
