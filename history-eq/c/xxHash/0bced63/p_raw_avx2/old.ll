; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0bced63/wrap_raw_pre.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0bced63/wrap_raw_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define dso_local void @target_initsec_pre(ptr noundef writeonly initializes((0, 192)) %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne i64 %1, -9223372036854775808
  tail call void @llvm.assume(i1 %3)
  %4 = add i64 %1, -4734510112055689544
  %5 = sub i64 2066345149520216444, %1
  %6 = add i64 %1, -2623469361688619810
  %7 = sub i64 2262974939099578482, %1
  %8 = add i64 %1, 8711581037947681227
  %9 = sub i64 2410270004345854594, %1
  %10 = add i64 %1, -8204357891075471176
  %11 = sub i64 5487137525590930912, %1
  %12 = add i64 %1, -3818837453329782724
  %13 = sub i64 -6688317018830679928, %1
  %14 = add i64 %1, 5690594596133299313
  %15 = sub i64 -2833645246901970632, %1
  %16 = add i64 %1, 4554437623014685352
  %17 = sub i64 2111919702937427193, %1
  %18 = add i64 %1, 3556072174620004746
  %19 = sub i64 7238261902898274248, %1
  %20 = add i64 %1, -4329134394285701654
  %21 = sub i64 -1485321483350670907, %1
  %22 = add i64 %1, 5321830579834785047
  %23 = sub i64 -7032137544937171245, %1
  %24 = add i64 %1, -242834301215959509
  %25 = sub i64 -3588858202114426737, %1
  %26 = add i64 %1, 2883454493032893253
  %27 = sub i64 9097354517224871855, %1
  store i64 %4, ptr %0, align 1
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %28, align 1
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %6, ptr %29, align 1
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %7, ptr %30, align 1
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %8, ptr %31, align 1
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %9, ptr %32, align 1
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %10, ptr %33, align 1
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %11, ptr %34, align 1
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %12, ptr %35, align 1
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %13, ptr %36, align 1
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %14, ptr %37, align 1
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %15, ptr %38, align 1
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %16, ptr %39, align 1
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %17, ptr %40, align 1
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %18, ptr %41, align 1
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %19, ptr %42, align 1
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %20, ptr %43, align 1
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %21, ptr %44, align 1
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %22, ptr %45, align 1
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %23, ptr %46, align 1
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %24, ptr %47, align 1
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %25, ptr %48, align 1
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %26, ptr %49, align 1
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %27, ptr %50, align 1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
