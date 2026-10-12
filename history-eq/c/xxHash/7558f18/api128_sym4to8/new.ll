; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7558f18/api128_sym4to8/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7558f18/api128_sym4to8/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_xxh128(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = add i64 %1, -9
  %6 = icmp ult i64 %5, -5
  br i1 %6, label %43, label %7

7:                                                ; preds = %4
  %8 = add i64 %2, %1
  %9 = mul i64 %8, -7046029288634856825
  %10 = sub i64 %1, %2
  %11 = mul i64 %10, -4417276706812531889
  %12 = load i32, ptr %0, align 1
  %13 = add i32 %12, -1191285703
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %16 = getelementptr inbounds i8, ptr %15, i64 -4
  %17 = load i32, ptr %16, align 1
  %18 = add i32 %17, 597969854
  %19 = zext i32 %18 to i64
  %20 = add nuw nsw i64 %14, 3103681593
  %21 = and i64 %20, 4294967295
  %22 = add nuw nsw i64 %19, 597969854
  %23 = and i64 %22, 4294967295
  %24 = mul nuw i64 %23, %21
  %25 = add i64 %24, %9
  %26 = add nuw nsw i64 %14, 2080473388
  %27 = and i64 %26, 4294967295
  %28 = add nuw nsw i64 %19, 4146179356
  %29 = and i64 %28, 4294967295
  %30 = mul nuw i64 %29, %27
  %31 = add i64 %30, %11
  %32 = lshr i64 %25, 29
  %33 = xor i64 %32, %25
  %34 = mul i64 %33, 1609587929392839161
  %35 = lshr i64 %34, 32
  %36 = xor i64 %35, %34
  %37 = lshr i64 %31, 29
  %38 = xor i64 %37, %31
  %39 = mul i64 %38, 1609587929392839161
  %40 = lshr i64 %39, 32
  %41 = xor i64 %40, %39
  store i64 %36, ptr %3, align 8
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %41, ptr %42, align 8
  br label %43

43:                                               ; preds = %4, %7
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
