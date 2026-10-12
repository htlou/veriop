; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/288f7dc/api64_sym17to128_reroll1/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/288f7dc/api64_sym17to128_reroll1/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kKey = internal unnamed_addr constant [48 x i32] [i32 -1191285703, i32 597969854, i32 2080473388, i32 -148787940, i32 -556503575, i32 -2087675941, i32 1916839076, i32 -1212979425, i32 -881203634, i32 -859773576, i32 -2107977603, i32 -855674335, i32 -1207417228, i32 -146594674, i32 -533360410, i32 -2126895540, i32 1009275579, i32 -1849491253, i32 -1999608437, i32 458436259, i32 1902397591, i32 -1576142514, i32 941223750, i32 -1445024552, i32 -1459980737, i32 -476302273, i32 -102974521, i32 -955560163, i32 -1974345653, i32 -843818703, i32 -929071415, i32 -646417564, i32 -356143997, i32 886303683, i32 -981360385, i32 -99392533, i32 386784593, i32 -1208952247, i32 -753511130, i32 701786270, i32 722910808, i32 2101846524, i32 -1879525167, i32 2060464590, i32 1170946703, i32 -1793719256, i32 -1344799798, i32 -1152696194], align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = add i64 %1, -129
  %5 = icmp ult i64 %4, -112
  br i1 %5, label %64, label %6

6:                                                ; preds = %3
  %7 = mul i64 %1, -7046029288634856825
  %8 = and i64 %1, 127
  %9 = add nsw i64 %8, -1
  %10 = lshr i64 %9, 5
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  br label %12

12:                                               ; preds = %12, %6
  %13 = phi i64 [ %7, %6 ], [ %55, %12 ]
  %14 = phi i64 [ %10, %6 ], [ %56, %12 ]
  %15 = shl i64 %14, 4
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 %15
  %17 = shl i64 %14, 5
  %18 = getelementptr inbounds nuw i8, ptr @kKey, i64 %17
  %19 = load i64, ptr %16, align 1
  %20 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %21 = load i64, ptr %20, align 1
  %22 = load i64, ptr %18, align 32
  %23 = add i64 %22, %2
  %24 = xor i64 %23, %19
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %26 = load i64, ptr %25, align 8
  %27 = sub i64 %26, %2
  %28 = xor i64 %27, %21
  %29 = zext i64 %24 to i128
  %30 = zext i64 %28 to i128
  %31 = mul nuw i128 %30, %29
  %32 = lshr i128 %31, 64
  %33 = xor i128 %32, %31
  %34 = trunc i128 %33 to i64
  %35 = add i64 %13, %34
  %36 = sub nuw nsw i64 -16, %15
  %37 = getelementptr inbounds i8, ptr %11, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %39 = load i64, ptr %37, align 1
  %40 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %41 = load i64, ptr %40, align 1
  %42 = load i64, ptr %38, align 16
  %43 = add i64 %42, %2
  %44 = xor i64 %43, %39
  %45 = getelementptr inbounds nuw i8, ptr %18, i64 24
  %46 = load i64, ptr %45, align 8
  %47 = sub i64 %46, %2
  %48 = xor i64 %47, %41
  %49 = zext i64 %44 to i128
  %50 = zext i64 %48 to i128
  %51 = mul nuw i128 %50, %49
  %52 = lshr i128 %51, 64
  %53 = xor i128 %52, %51
  %54 = trunc i128 %53 to i64
  %55 = add i64 %35, %54
  %56 = add nsw i64 %14, -1
  %57 = icmp eq i64 %14, 0
  br i1 %57, label %58, label %12

58:                                               ; preds = %12
  %59 = lshr i64 %55, 37
  %60 = xor i64 %59, %55
  %61 = mul i64 %60, 1609587929392839161
  %62 = lshr i64 %61, 32
  %63 = xor i64 %62, %61
  br label %64

64:                                               ; preds = %3, %58
  %65 = phi i64 [ %63, %58 ], [ 0, %3 ]
  ret i64 %65
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
