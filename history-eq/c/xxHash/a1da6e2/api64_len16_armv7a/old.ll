; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/a1da6e2/api64_len16_armv7a/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/a1da6e2/api64_len16_armv7a/wrapper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabihf"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 1
  %4 = getelementptr i8, ptr %0, i32 8
  %5 = load i64, ptr %4, align 1
  %6 = add i64 %1, -4734510112055689544
  %7 = xor i64 %3, %6
  %8 = sub i64 2066345149520216444, %1
  %9 = xor i64 %5, %8
  %10 = and i64 %7, 4294967295
  %11 = and i64 %9, 4294967295
  %12 = mul nuw i64 %11, %10
  %13 = lshr i64 %7, 32
  %14 = mul nuw i64 %11, %13
  %15 = lshr i64 %9, 32
  %16 = mul nuw i64 %15, %10
  %17 = mul nuw i64 %15, %13
  %18 = lshr i64 %12, 32
  %19 = and i64 %14, 4294967295
  %20 = add nuw i64 %19, %16
  %21 = add nuw i64 %20, %18
  %22 = lshr i64 %14, 32
  %23 = lshr i64 %21, 32
  %24 = add nuw i64 %22, %17
  %25 = add nuw i64 %24, %23
  %26 = shl i64 %21, 32
  %27 = and i64 %12, 4294967295
  %28 = or disjoint i64 %26, %27
  %29 = xor i64 %28, %25
  %30 = add i64 %7, 16
  %31 = add i64 %30, %9
  %32 = add i64 %31, %29
  %33 = lshr i64 %32, 37
  %34 = xor i64 %33, %32
  %35 = mul i64 %34, 1609587929392839161
  %36 = lshr i64 %35, 32
  %37 = xor i64 %36, %35
  ret i64 %37
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
