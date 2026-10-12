; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/028c0fd/api64_len16_ppc64be/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/028c0fd/api64_len16_ppc64be/wrapper.c"
target datalayout = "E-m:e-Fi64-i64:64-i128:128-n32:64-S128-v256:256:256-v512:512:512"
target triple = "powerpc64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 1
  %4 = getelementptr i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 1
  %6 = tail call noundef i64 @llvm.bswap.i64(i64 %3)
  %7 = add i64 %1, -4734510112055689544
  %8 = xor i64 %6, %7
  %9 = tail call noundef i64 @llvm.bswap.i64(i64 %5)
  %10 = sub i64 2066345149520216444, %1
  %11 = xor i64 %9, %10
  %12 = zext i64 %8 to i128
  %13 = zext i64 %11 to i128
  %14 = mul nuw i128 %13, %12
  %15 = lshr i128 %14, 64
  %16 = xor i128 %15, %14
  %17 = trunc i128 %16 to i64
  %18 = add i64 %8, 16
  %19 = add i64 %18, %11
  %20 = add i64 %19, %17
  %21 = lshr i64 %20, 37
  %22 = xor i64 %21, %20
  %23 = mul i64 %22, 1609587929392839161
  %24 = lshr i64 %23, 32
  %25 = xor i64 %24, %23
  ret i64 %25
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="ppc64" "target-features"="+altivec,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-bpermd,-crbits,-crypto,-direct-move,-extdiv,-htm,-isa-v206-instructions,-isa-v207-instructions,-isa-v30-instructions,-power8-vector,-power9-vector,-privileged,-quadword-atomics,-rop-protect,-spe,-vsx" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
