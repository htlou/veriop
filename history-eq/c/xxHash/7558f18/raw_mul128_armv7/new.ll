; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7558f18/raw_mul128_armv7/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7558f18/raw_mul128_armv7/wrapper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabihf"

; Function Attrs: nofree nosync nounwind memory(none)
define dso_local i64 @target_fold64(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i64 %0, 32
  %4 = trunc nuw i64 %3 to i32
  %5 = trunc i64 %0 to i32
  %6 = lshr i64 %1, 32
  %7 = trunc nuw i64 %6 to i32
  %8 = trunc i64 %1 to i32
  %9 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %5, i32 %8) #1
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = extractvalue { i32, i32 } %9, 1
  %12 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %4, i32 %8, i32 0, i32 %11) #1
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = extractvalue { i32, i32 } %12, 1
  %15 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %5, i32 %7, i32 %13, i32 0) #1
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = extractvalue { i32, i32 } %15, 1
  %18 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %4, i32 %7, i32 %14, i32 %17) #1
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = extractvalue { i32, i32 } %18, 1
  %21 = zext i32 %19 to i64
  %22 = zext i32 %20 to i64
  %23 = shl nuw i64 %22, 32
  %24 = zext i32 %10 to i64
  %25 = zext i32 %16 to i64
  %26 = shl nuw i64 %25, 32
  %27 = or disjoint i64 %26, %24
  %28 = add i64 %27, %21
  %29 = add i64 %28, %23
  ret i64 %29
}

attributes #0 = { nofree nosync nounwind memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+fp64,+vfp2,+vfp2sp,+vfp3d16,+vfp3d16sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 51497}
!6 = !{i64 51607}
!7 = !{i64 51742}
!8 = !{i64 51852}
