; ModuleID = 'history-eq/c/xxHash/665424e/secret-bridge/secret_pair.c'
source_filename = "history-eq/c/xxHash/665424e/secret-bridge/secret_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-conda-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_secret(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %1, -4734510112055689544
  %4 = sub i64 2066345149520216444, %1
  store i64 %3, ptr %0, align 1
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store i64 %4, ptr %5, align 1
  %6 = add i64 %1, -2623469361688619810
  %7 = sub i64 2262974939099578482, %1
  %8 = getelementptr inbounds i8, ptr %0, i64 16
  store i64 %6, ptr %8, align 1
  %9 = getelementptr inbounds i8, ptr %0, i64 24
  store i64 %7, ptr %9, align 1
  %10 = add i64 %1, 8711581037947681227
  %11 = sub i64 2410270004345854594, %1
  %12 = getelementptr inbounds i8, ptr %0, i64 32
  store i64 %10, ptr %12, align 1
  %13 = getelementptr inbounds i8, ptr %0, i64 40
  store i64 %11, ptr %13, align 1
  %14 = add i64 %1, -8204357891075471176
  %15 = sub i64 5487137525590930912, %1
  %16 = getelementptr inbounds i8, ptr %0, i64 48
  store i64 %14, ptr %16, align 1
  %17 = getelementptr inbounds i8, ptr %0, i64 56
  store i64 %15, ptr %17, align 1
  %18 = add i64 %1, -3818837453329782724
  %19 = sub i64 -6688317018830679928, %1
  %20 = getelementptr inbounds i8, ptr %0, i64 64
  store i64 %18, ptr %20, align 1
  %21 = getelementptr inbounds i8, ptr %0, i64 72
  store i64 %19, ptr %21, align 1
  %22 = add i64 %1, 5690594596133299313
  %23 = sub i64 -2833645246901970632, %1
  %24 = getelementptr inbounds i8, ptr %0, i64 80
  store i64 %22, ptr %24, align 1
  %25 = getelementptr inbounds i8, ptr %0, i64 88
  store i64 %23, ptr %25, align 1
  %26 = add i64 %1, 4554437623014685352
  %27 = sub i64 2111919702937427193, %1
  %28 = getelementptr inbounds i8, ptr %0, i64 96
  store i64 %26, ptr %28, align 1
  %29 = getelementptr inbounds i8, ptr %0, i64 104
  store i64 %27, ptr %29, align 1
  %30 = add i64 %1, 3556072174620004746
  %31 = sub i64 7238261902898274248, %1
  %32 = getelementptr inbounds i8, ptr %0, i64 112
  store i64 %30, ptr %32, align 1
  %33 = getelementptr inbounds i8, ptr %0, i64 120
  store i64 %31, ptr %33, align 1
  %34 = add i64 %1, -4329134394285701654
  %35 = sub i64 -1485321483350670907, %1
  %36 = getelementptr inbounds i8, ptr %0, i64 128
  store i64 %34, ptr %36, align 1
  %37 = getelementptr inbounds i8, ptr %0, i64 136
  store i64 %35, ptr %37, align 1
  %38 = add i64 %1, 5321830579834785047
  %39 = sub i64 -7032137544937171245, %1
  %40 = getelementptr inbounds i8, ptr %0, i64 144
  store i64 %38, ptr %40, align 1
  %41 = getelementptr inbounds i8, ptr %0, i64 152
  store i64 %39, ptr %41, align 1
  %42 = add i64 %1, -242834301215959509
  %43 = sub i64 -3588858202114426737, %1
  %44 = getelementptr inbounds i8, ptr %0, i64 160
  store i64 %42, ptr %44, align 1
  %45 = getelementptr inbounds i8, ptr %0, i64 168
  store i64 %43, ptr %45, align 1
  %46 = add i64 %1, 2883454493032893253
  %47 = sub i64 9097354517224871855, %1
  %48 = getelementptr inbounds i8, ptr %0, i64 176
  store i64 %46, ptr %48, align 1
  %49 = getelementptr inbounds i8, ptr %0, i64 184
  store i64 %47, ptr %49, align 1
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.1.8 (https://github.com/conda-forge/clangdev-feedstock 3c15221e001c9fe87fcc807876aa06d599616b01)"}
