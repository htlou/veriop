; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/77d5e9a7/fp16-new-backend.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/77d5e9a7/fp16-new-backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i16 @target_0(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = insertelement <8 x i32> poison, i32 %0, i64 0
  %10 = insertelement <8 x i32> %9, i32 %1, i64 1
  %11 = insertelement <8 x i32> %10, i32 %2, i64 2
  %12 = insertelement <8 x i32> %11, i32 %3, i64 3
  %13 = insertelement <8 x i32> %12, i32 %4, i64 4
  %14 = insertelement <8 x i32> %13, i32 %5, i64 5
  %15 = insertelement <8 x i32> %14, i32 %6, i64 6
  %16 = insertelement <8 x i32> %15, i32 %7, i64 7
  %17 = bitcast <8 x i32> %16 to <8 x float>
  %18 = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %17, i32 0)
  %19 = extractelement <8 x i16> %18, i64 0
  ret i16 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i16 @target_1(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = insertelement <8 x i32> poison, i32 %0, i64 0
  %10 = insertelement <8 x i32> %9, i32 %1, i64 1
  %11 = insertelement <8 x i32> %10, i32 %2, i64 2
  %12 = insertelement <8 x i32> %11, i32 %3, i64 3
  %13 = insertelement <8 x i32> %12, i32 %4, i64 4
  %14 = insertelement <8 x i32> %13, i32 %5, i64 5
  %15 = insertelement <8 x i32> %14, i32 %6, i64 6
  %16 = insertelement <8 x i32> %15, i32 %7, i64 7
  %17 = bitcast <8 x i32> %16 to <8 x float>
  %18 = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %17, i32 0)
  %19 = extractelement <8 x i16> %18, i64 1
  ret i16 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i16 @target_2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = insertelement <8 x i32> poison, i32 %0, i64 0
  %10 = insertelement <8 x i32> %9, i32 %1, i64 1
  %11 = insertelement <8 x i32> %10, i32 %2, i64 2
  %12 = insertelement <8 x i32> %11, i32 %3, i64 3
  %13 = insertelement <8 x i32> %12, i32 %4, i64 4
  %14 = insertelement <8 x i32> %13, i32 %5, i64 5
  %15 = insertelement <8 x i32> %14, i32 %6, i64 6
  %16 = insertelement <8 x i32> %15, i32 %7, i64 7
  %17 = bitcast <8 x i32> %16 to <8 x float>
  %18 = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %17, i32 0)
  %19 = extractelement <8 x i16> %18, i64 2
  ret i16 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i16 @target_3(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = insertelement <8 x i32> poison, i32 %0, i64 0
  %10 = insertelement <8 x i32> %9, i32 %1, i64 1
  %11 = insertelement <8 x i32> %10, i32 %2, i64 2
  %12 = insertelement <8 x i32> %11, i32 %3, i64 3
  %13 = insertelement <8 x i32> %12, i32 %4, i64 4
  %14 = insertelement <8 x i32> %13, i32 %5, i64 5
  %15 = insertelement <8 x i32> %14, i32 %6, i64 6
  %16 = insertelement <8 x i32> %15, i32 %7, i64 7
  %17 = bitcast <8 x i32> %16 to <8 x float>
  %18 = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %17, i32 0)
  %19 = extractelement <8 x i16> %18, i64 3
  ret i16 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i16 @target_4(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = insertelement <8 x i32> poison, i32 %0, i64 0
  %10 = insertelement <8 x i32> %9, i32 %1, i64 1
  %11 = insertelement <8 x i32> %10, i32 %2, i64 2
  %12 = insertelement <8 x i32> %11, i32 %3, i64 3
  %13 = insertelement <8 x i32> %12, i32 %4, i64 4
  %14 = insertelement <8 x i32> %13, i32 %5, i64 5
  %15 = insertelement <8 x i32> %14, i32 %6, i64 6
  %16 = insertelement <8 x i32> %15, i32 %7, i64 7
  %17 = bitcast <8 x i32> %16 to <8 x float>
  %18 = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %17, i32 0)
  %19 = extractelement <8 x i16> %18, i64 4
  ret i16 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i16 @target_5(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = insertelement <8 x i32> poison, i32 %0, i64 0
  %10 = insertelement <8 x i32> %9, i32 %1, i64 1
  %11 = insertelement <8 x i32> %10, i32 %2, i64 2
  %12 = insertelement <8 x i32> %11, i32 %3, i64 3
  %13 = insertelement <8 x i32> %12, i32 %4, i64 4
  %14 = insertelement <8 x i32> %13, i32 %5, i64 5
  %15 = insertelement <8 x i32> %14, i32 %6, i64 6
  %16 = insertelement <8 x i32> %15, i32 %7, i64 7
  %17 = bitcast <8 x i32> %16 to <8 x float>
  %18 = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %17, i32 0)
  %19 = extractelement <8 x i16> %18, i64 5
  ret i16 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i16 @target_6(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = insertelement <8 x i32> poison, i32 %0, i64 0
  %10 = insertelement <8 x i32> %9, i32 %1, i64 1
  %11 = insertelement <8 x i32> %10, i32 %2, i64 2
  %12 = insertelement <8 x i32> %11, i32 %3, i64 3
  %13 = insertelement <8 x i32> %12, i32 %4, i64 4
  %14 = insertelement <8 x i32> %13, i32 %5, i64 5
  %15 = insertelement <8 x i32> %14, i32 %6, i64 6
  %16 = insertelement <8 x i32> %15, i32 %7, i64 7
  %17 = bitcast <8 x i32> %16 to <8 x float>
  %18 = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %17, i32 0)
  %19 = extractelement <8 x i16> %18, i64 6
  ret i16 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i16 @target_7(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = insertelement <8 x i32> poison, i32 %0, i64 0
  %10 = insertelement <8 x i32> %9, i32 %1, i64 1
  %11 = insertelement <8 x i32> %10, i32 %2, i64 2
  %12 = insertelement <8 x i32> %11, i32 %3, i64 3
  %13 = insertelement <8 x i32> %12, i32 %4, i64 4
  %14 = insertelement <8 x i32> %13, i32 %5, i64 5
  %15 = insertelement <8 x i32> %14, i32 %6, i64 6
  %16 = insertelement <8 x i32> %15, i32 %7, i64 7
  %17 = bitcast <8 x i32> %16 to <8 x float>
  %18 = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %17, i32 0)
  %19 = extractelement <8 x i16> %18, i64 7
  ret i16 %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float>, i32 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,-amx-avx512,-avx10.1-256,-avx10.1-512,-avx10.2-256,-avx10.2-512,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
