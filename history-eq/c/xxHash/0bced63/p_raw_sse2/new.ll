; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0bced63/wrap_raw_pre.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0bced63/wrap_raw_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define dso_local void @target_initsec_pre(ptr noundef writeonly initializes((0, 192)) %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne i64 %1, -9223372036854775808
  tail call void @llvm.assume(i1 %3)
  %4 = sub nsw i64 0, %1
  %5 = insertelement <2 x i64> poison, i64 %1, i64 0
  %6 = insertelement <2 x i64> %5, i64 %4, i64 1
  %7 = add <2 x i64> %6, <i64 -4734510112055689544, i64 2066345149520216444>
  %8 = add <2 x i64> %6, <i64 -2623469361688619810, i64 2262974939099578482>
  %9 = add <2 x i64> %6, <i64 8711581037947681227, i64 2410270004345854594>
  %10 = add <2 x i64> %6, <i64 -8204357891075471176, i64 5487137525590930912>
  %11 = add <2 x i64> %6, <i64 -3818837453329782724, i64 -6688317018830679928>
  %12 = add <2 x i64> %6, <i64 5690594596133299313, i64 -2833645246901970632>
  %13 = add <2 x i64> %6, <i64 4554437623014685352, i64 2111919702937427193>
  %14 = add <2 x i64> %6, <i64 3556072174620004746, i64 7238261902898274248>
  %15 = add <2 x i64> %6, <i64 -4329134394285701654, i64 -1485321483350670907>
  %16 = add <2 x i64> %6, <i64 5321830579834785047, i64 -7032137544937171245>
  %17 = add <2 x i64> %6, <i64 -242834301215959509, i64 -3588858202114426737>
  %18 = add <2 x i64> %6, <i64 2883454493032893253, i64 9097354517224871855>
  store <2 x i64> %7, ptr %0, align 1
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %8, ptr %19, align 1
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %9, ptr %20, align 1
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %10, ptr %21, align 1
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %11, ptr %22, align 1
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> %12, ptr %23, align 1
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x i64> %13, ptr %24, align 1
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i64> %14, ptr %25, align 1
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x i64> %15, ptr %26, align 1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <2 x i64> %16, ptr %27, align 1
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <2 x i64> %17, ptr %28, align 1
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x i64> %18, ptr %29, align 1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
