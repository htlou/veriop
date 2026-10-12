; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/155f560/api128_sym4to8/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/155f560/api128_sym4to8/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_xxh128(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = add i64 %1, -9
  %6 = icmp ult i64 %5, -5
  br i1 %6, label %39, label %7

7:                                                ; preds = %4
  %8 = add i64 %2, %1
  %9 = mul i64 %8, -7046029288634856825
  %10 = sub i64 %1, %2
  %11 = mul i64 %10, -4417276706812531889
  %12 = load i32, ptr %0, align 1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %14 = getelementptr inbounds i8, ptr %13, i64 -4
  %15 = load i32, ptr %14, align 1
  %16 = add i32 %12, -1191285703
  %17 = zext i32 %16 to i64
  %18 = add i32 %15, 597969854
  %19 = zext i32 %18 to i64
  %20 = mul nuw i64 %19, %17
  %21 = add i64 %20, %9
  %22 = add i32 %12, -2080473388
  %23 = zext i32 %22 to i64
  %24 = add i32 %15, -148787940
  %25 = zext i32 %24 to i64
  %26 = mul nuw i64 %25, %23
  %27 = add i64 %26, %11
  %28 = lshr i64 %21, 29
  %29 = xor i64 %28, %21
  %30 = mul i64 %29, 1609587929392839161
  %31 = lshr i64 %30, 32
  %32 = xor i64 %31, %30
  %33 = lshr i64 %27, 29
  %34 = xor i64 %33, %27
  %35 = mul i64 %34, 1609587929392839161
  %36 = lshr i64 %35, 32
  %37 = xor i64 %36, %35
  store i64 %32, ptr %3, align 8
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %37, ptr %38, align 8
  br label %39

39:                                               ; preds = %4, %7
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
