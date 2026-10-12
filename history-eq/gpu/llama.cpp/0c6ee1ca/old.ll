; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/0c6ee1ca/wrapper.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/0c6ee1ca/wrapper.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ggml_table_f32_f16 = external local_unnamed_addr global [65536 x float], align 16

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: write) uwtable
define dso_local zeroext i16 @target_gelu_quick_f16(i16 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = zext i16 %0 to i64
  %3 = getelementptr inbounds nuw [65536 x float], ptr @ggml_table_f32_f16, i64 0, i64 %2
  %4 = load float, ptr %3, align 4
  %5 = fmul float %4, 0xBFFB3B6460000000
  %6 = tail call float @expf(float noundef %5) #4
  %7 = fadd float %6, 1.000000e+00
  %8 = fdiv float 1.000000e+00, %7
  %9 = fmul float %4, %8
  %10 = tail call float @llvm.fabs.f32(float %9)
  %11 = fmul float %10, 0x46F0000000000000
  %12 = fmul float %11, 0x3910000000000000
  %13 = bitcast float %9 to i32
  %14 = shl i32 %13, 1
  %15 = tail call i32 @llvm.umax.i32(i32 %14, i32 1895825408)
  %16 = lshr exact i32 %15, 1
  %17 = and i32 %16, 2139095040
  %18 = add nuw i32 %17, 125829120
  %19 = bitcast i32 %18 to float
  %20 = fadd float %12, %19
  %21 = bitcast float %20 to i32
  %22 = lshr i32 %21, 13
  %23 = and i32 %22, 31744
  %24 = and i32 %21, 4095
  %25 = add nuw nsw i32 %23, %24
  %26 = lshr i32 %13, 16
  %27 = and i32 %26, 32768
  %28 = icmp ugt i32 %14, -16777216
  %29 = select i1 %28, i32 32256, i32 %25
  %30 = or i32 %29, %27
  %31 = trunc nuw i32 %30 to i16
  ret i16 %31
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @expf(float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
