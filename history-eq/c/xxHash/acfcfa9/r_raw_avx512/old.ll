; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/acfcfa9/wrap_raw.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/acfcfa9/wrap_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_initsec(ptr noundef writeonly initializes((0, 192)) %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = insertelement <8 x i64> poison, i64 %1, i64 0
  %4 = sub i64 0, %1
  %5 = insertelement <8 x i64> poison, i64 %4, i64 0
  %6 = shufflevector <8 x i64> %3, <8 x i64> %5, <8 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  %7 = load <8 x i64>, ptr @XXH3_kSecret, align 64, !nontemporal !8
  %8 = add <8 x i64> %7, %6
  %9 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 64), align 64, !nontemporal !8
  %10 = add <8 x i64> %9, %6
  %11 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 128), align 64, !nontemporal !8
  %12 = add <8 x i64> %11, %6
  store <8 x i64> %8, ptr %0, align 1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i64> %10, ptr %13, align 1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <8 x i64> %12, ptr %14, align 1
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+avx512f,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_initCustomSecret_avx512: argument 0"}
!7 = distinct !{!7, !"XXH3_initCustomSecret_avx512"}
!8 = !{i32 1}
