; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/288f7dc/api128_len128_reroll1/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/288f7dc/api128_len128_reroll1/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kKey = internal unnamed_addr constant [48 x i32] [i32 -1191285703, i32 597969854, i32 2080473388, i32 -148787940, i32 -556503575, i32 -2087675941, i32 1916839076, i32 -1212979425, i32 -881203634, i32 -859773576, i32 -2107977603, i32 -855674335, i32 -1207417228, i32 -146594674, i32 -533360410, i32 -2126895540, i32 1009275579, i32 -1849491253, i32 -1999608437, i32 458436259, i32 1902397591, i32 -1576142514, i32 941223750, i32 -1445024552, i32 -1459980737, i32 -476302273, i32 -102974521, i32 -955560163, i32 -1974345653, i32 -843818703, i32 -929071415, i32 -646417564, i32 -356143997, i32 886303683, i32 -981360385, i32 -99392533, i32 386784593, i32 -1208952247, i32 -753511130, i32 701786270, i32 722910808, i32 2101846524, i32 -1879525167, i32 2060464590, i32 1170946703, i32 -1793719256, i32 -1344799798, i32 -1152696194], align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @target_xxh128(ptr noundef readonly %0, i64 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = mul i64 %1, -7046029288634856825
  %5 = add i64 %4, 1998710666506355584
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %7

7:                                                ; preds = %7, %3
  %8 = phi i64 [ 0, %3 ], [ %51, %7 ]
  %9 = phi i64 [ %5, %3 ], [ %31, %7 ]
  %10 = phi i64 [ 576460752303423487, %3 ], [ %52, %7 ]
  %11 = shl i64 %10, 4
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 %11
  %13 = shl i64 %10, 5
  %14 = getelementptr inbounds nuw i8, ptr @kKey, i64 %13
  %15 = load i64, ptr %12, align 1
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %17 = load i64, ptr %16, align 1
  %18 = load i64, ptr %14, align 32
  %19 = add i64 %18, %1
  %20 = xor i64 %19, %15
  %21 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %22 = load i64, ptr %21, align 8
  %23 = sub i64 %22, %1
  %24 = xor i64 %23, %17
  %25 = zext i64 %20 to i128
  %26 = zext i64 %24 to i128
  %27 = mul nuw i128 %26, %25
  %28 = lshr i128 %27, 64
  %29 = xor i128 %28, %27
  %30 = trunc i128 %29 to i64
  %31 = add i64 %9, %30
  %32 = sub nuw nsw i64 -16, %11
  %33 = getelementptr inbounds i8, ptr %6, i64 %32
  %34 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %35 = load i64, ptr %33, align 1
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 8
  %37 = load i64, ptr %36, align 1
  %38 = load i64, ptr %34, align 16
  %39 = add i64 %38, %1
  %40 = xor i64 %39, %35
  %41 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %42 = load i64, ptr %41, align 8
  %43 = sub i64 %42, %1
  %44 = xor i64 %43, %37
  %45 = zext i64 %40 to i128
  %46 = zext i64 %44 to i128
  %47 = mul nuw i128 %46, %45
  %48 = lshr i128 %47, 64
  %49 = xor i128 %48, %47
  %50 = trunc i128 %49 to i64
  %51 = add i64 %8, %50
  %52 = add nsw i64 %10, -1
  %53 = icmp eq i64 %10, 0
  br i1 %53, label %54, label %7

54:                                               ; preds = %7
  %55 = add i64 %51, %31
  %56 = mul i64 %31, 1609587929392839161
  %57 = mul i64 %51, -8796714831421723037
  %58 = sub i64 128, %1
  %59 = mul i64 %58, -4417276706812531889
  %60 = add i64 %56, %59
  %61 = add i64 %60, %57
  %62 = lshr i64 %55, 37
  %63 = xor i64 %62, %55
  %64 = mul i64 %63, 1609587929392839161
  %65 = lshr i64 %64, 32
  %66 = xor i64 %65, %64
  %67 = lshr i64 %61, 37
  %68 = xor i64 %67, %61
  %69 = mul i64 %68, 1609587929392839161
  %70 = lshr i64 %69, 32
  %71 = xor i64 %70, %69
  %72 = sub i64 0, %71
  store i64 %66, ptr %2, align 8
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %72, ptr %73, align 8
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
