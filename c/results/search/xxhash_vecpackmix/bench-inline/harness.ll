; ModuleID = '/srv/home/hantaolou/code/veriop/alive2/experiments/bench_xxhash.c'
source_filename = "/srv/home/hantaolou/code/veriop/alive2/experiments/bench_xxhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"mode,length,distribution,ns_per_hash\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s,%zu,fixed,%.6f\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"latency\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"throughput\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s,16,random,%.6f\0A\00", align 1
@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str)
  br label %2

2:                                                ; preds = %0, %2
  %3 = phi i1 [ true, %0 ], [ false, %2 ]
  %4 = phi i32 [ 0, %0 ], [ 1, %2 ]
  %5 = select i1 %3, ptr @.str.3, ptr @.str.2
  %6 = tail call double @bench_hash(ptr noundef nonnull @hash, i32 noundef %4, i64 noundef 1, i32 noundef 0, i32 noundef 100, i32 noundef 50) #4
  %7 = fdiv double 1.000000e+09, %6
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %5, i64 noundef 1, double noundef %7)
  %9 = tail call double @bench_hash(ptr noundef nonnull @hash, i32 noundef %4, i64 noundef 2, i32 noundef 0, i32 noundef 100, i32 noundef 50) #4
  %10 = fdiv double 1.000000e+09, %9
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %5, i64 noundef 2, double noundef %10)
  %12 = tail call double @bench_hash(ptr noundef nonnull @hash, i32 noundef %4, i64 noundef 3, i32 noundef 0, i32 noundef 100, i32 noundef 50) #4
  %13 = fdiv double 1.000000e+09, %12
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %5, i64 noundef 3, double noundef %13)
  %15 = tail call double @bench_hash(ptr noundef nonnull @hash, i32 noundef %4, i64 noundef 4, i32 noundef 0, i32 noundef 100, i32 noundef 50) #4
  %16 = fdiv double 1.000000e+09, %15
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %5, i64 noundef 4, double noundef %16)
  %18 = tail call double @bench_hash(ptr noundef nonnull @hash, i32 noundef %4, i64 noundef 5, i32 noundef 0, i32 noundef 100, i32 noundef 50) #4
  %19 = fdiv double 1.000000e+09, %18
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %5, i64 noundef 5, double noundef %19)
  %21 = tail call double @bench_hash(ptr noundef nonnull @hash, i32 noundef %4, i64 noundef 6, i32 noundef 0, i32 noundef 100, i32 noundef 50) #4
  %22 = fdiv double 1.000000e+09, %21
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %5, i64 noundef 6, double noundef %22)
  %24 = tail call double @bench_hash(ptr noundef nonnull @hash, i32 noundef %4, i64 noundef 7, i32 noundef 0, i32 noundef 100, i32 noundef 50) #4
  %25 = fdiv double 1.000000e+09, %24
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %5, i64 noundef 7, double noundef %25)
  %27 = tail call double @bench_hash(ptr noundef nonnull @hash, i32 noundef %4, i64 noundef 8, i32 noundef 0, i32 noundef 100, i32 noundef 50) #4
  %28 = fdiv double 1.000000e+09, %27
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %5, i64 noundef 8, double noundef %28)
  %30 = tail call double @bench_hash(ptr noundef nonnull @hash, i32 noundef %4, i64 noundef 9, i32 noundef 0, i32 noundef 100, i32 noundef 50) #4
  %31 = fdiv double 1.000000e+09, %30
  %32 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %5, i64 noundef 9, double noundef %31)
  %33 = tail call double @bench_hash(ptr noundef nonnull @hash, i32 noundef %4, i64 noundef 10, i32 noundef 0, i32 noundef 100, i32 noundef 50) #4
  %34 = fdiv double 1.000000e+09, %33
  %35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %5, i64 noundef 10, double noundef %34)
  %36 = tail call double @bench_hash(ptr noundef nonnull @hash, i32 noundef %4, i64 noundef 11, i32 noundef 0, i32 noundef 100, i32 noundef 50) #4
  %37 = fdiv double 1.000000e+09, %36
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %5, i64 noundef 11, double noundef %37)
  %39 = tail call double @bench_hash(ptr noundef nonnull @hash, i32 noundef %4, i64 noundef 12, i32 noundef 0, i32 noundef 100, i32 noundef 50) #4
  %40 = fdiv double 1.000000e+09, %39
  %41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %5, i64 noundef 12, double noundef %40)
  %42 = tail call double @bench_hash(ptr noundef nonnull @hash, i32 noundef %4, i64 noundef 13, i32 noundef 0, i32 noundef 100, i32 noundef 50) #4
  %43 = fdiv double 1.000000e+09, %42
  %44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %5, i64 noundef 13, double noundef %43)
  %45 = tail call double @bench_hash(ptr noundef nonnull @hash, i32 noundef %4, i64 noundef 14, i32 noundef 0, i32 noundef 100, i32 noundef 50) #4
  %46 = fdiv double 1.000000e+09, %45
  %47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %5, i64 noundef 14, double noundef %46)
  %48 = tail call double @bench_hash(ptr noundef nonnull @hash, i32 noundef %4, i64 noundef 15, i32 noundef 0, i32 noundef 100, i32 noundef 50) #4
  %49 = fdiv double 1.000000e+09, %48
  %50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %5, i64 noundef 15, double noundef %49)
  %51 = tail call double @bench_hash(ptr noundef nonnull @hash, i32 noundef %4, i64 noundef 16, i32 noundef 0, i32 noundef 100, i32 noundef 50) #4
  %52 = fdiv double 1.000000e+09, %51
  %53 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %5, i64 noundef 16, double noundef %52)
  tail call void @srand(i32 noundef 1) #4
  %54 = tail call double @bench_hash(ptr noundef nonnull @hash, i32 noundef %4, i64 noundef 16, i32 noundef 1, i32 noundef 100, i32 noundef 50) #4
  %55 = fdiv double 1.000000e+09, %54
  %56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %5, double noundef %55)
  br i1 %3, label %2, label %57, !llvm.loop !5

57:                                               ; preds = %2
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #1

declare double @bench_hash(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i64 @hash(ptr noundef %0, i64 noundef %1, ptr nocapture readnone %2, i64 %3, ptr nocapture readnone %4) #0 {
  %6 = tail call i64 @target_0to16(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @XXH3_kSecret, i64 noundef 0) #4
  ret i64 %6
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #3

declare i64 @target_0to16(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v4" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
