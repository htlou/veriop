; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/288f7dc/api64_len128_reroll1_u8/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/288f7dc/api64_len128_reroll1_u8/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kKey = internal unnamed_addr constant [48 x i32] [i32 -1191285703, i32 597969854, i32 2080473388, i32 -148787940, i32 -556503575, i32 -2087675941, i32 1916839076, i32 -1212979425, i32 -881203634, i32 -859773576, i32 -2107977603, i32 -855674335, i32 -1207417228, i32 -146594674, i32 -533360410, i32 -2126895540, i32 1009275579, i32 -1849491253, i32 -1999608437, i32 458436259, i32 1902397591, i32 -1576142514, i32 941223750, i32 -1445024552, i32 -1459980737, i32 -476302273, i32 -102974521, i32 -955560163, i32 -1974345653, i32 -843818703, i32 -929071415, i32 -646417564, i32 -356143997, i32 886303683, i32 -981360385, i32 -99392533, i32 386784593, i32 -1208952247, i32 -753511130, i32 701786270, i32 722910808, i32 2101846524, i32 -1879525167, i32 2060464590, i32 1170946703, i32 -1793719256, i32 -1344799798, i32 -1152696194], align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ 1998710666506355584, %2 ], [ %47, %4 ]
  %6 = phi i64 [ 576460752303423487, %2 ], [ %48, %4 ]
  %7 = shl i64 %6, 4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %7
  %9 = shl i64 %6, 5
  %10 = getelementptr inbounds nuw i8, ptr @kKey, i64 %9
  %11 = load i64, ptr %8, align 1
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %13 = load i64, ptr %12, align 1
  %14 = load i64, ptr %10, align 32
  %15 = add i64 %14, %1
  %16 = xor i64 %15, %11
  %17 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %18 = load i64, ptr %17, align 8
  %19 = sub i64 %18, %1
  %20 = xor i64 %19, %13
  %21 = zext i64 %16 to i128
  %22 = zext i64 %20 to i128
  %23 = mul nuw i128 %22, %21
  %24 = lshr i128 %23, 64
  %25 = xor i128 %24, %23
  %26 = trunc i128 %25 to i64
  %27 = add i64 %5, %26
  %28 = sub nuw nsw i64 -16, %7
  %29 = getelementptr inbounds i8, ptr %3, i64 %28
  %30 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %31 = load i64, ptr %29, align 1
  %32 = getelementptr inbounds nuw i8, ptr %29, i64 8
  %33 = load i64, ptr %32, align 1
  %34 = load i64, ptr %30, align 16
  %35 = add i64 %34, %1
  %36 = xor i64 %35, %31
  %37 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %38 = load i64, ptr %37, align 8
  %39 = sub i64 %38, %1
  %40 = xor i64 %39, %33
  %41 = zext i64 %36 to i128
  %42 = zext i64 %40 to i128
  %43 = mul nuw i128 %42, %41
  %44 = lshr i128 %43, 64
  %45 = xor i128 %44, %43
  %46 = trunc i128 %45 to i64
  %47 = add i64 %27, %46
  %48 = add nsw i64 %6, -1
  %49 = icmp eq i64 %6, 0
  br i1 %49, label %50, label %4

50:                                               ; preds = %4
  %51 = lshr i64 %47, 37
  %52 = xor i64 %51, %47
  %53 = mul i64 %52, 1609587929392839161
  %54 = lshr i64 %53, 32
  %55 = xor i64 %54, %53
  ret i64 %55
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
