; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_reset.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_rst_seed(i64 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = add i64 %0, -4734510112055689544
  %4 = sub i64 2066345149520216444, %0
  %5 = add i64 %0, -2623469361688619810
  %6 = sub i64 2262974939099578482, %0
  %7 = add i64 %0, 8711581037947681227
  %8 = sub i64 2410270004345854594, %0
  %9 = add i64 %0, -8204357891075471176
  %10 = sub i64 5487137525590930912, %0
  %11 = add i64 %0, -3818837453329782724
  %12 = sub i64 -6688317018830679928, %0
  %13 = add i64 %0, 5690594596133299313
  %14 = sub i64 -2833645246901970632, %0
  %15 = add i64 %0, 4554437623014685352
  %16 = sub i64 2111919702937427193, %0
  %17 = add i64 %0, 3556072174620004746
  %18 = sub i64 7238261902898274248, %0
  %19 = add i64 %0, -4329134394285701654
  %20 = sub i64 -1485321483350670907, %0
  %21 = add i64 %0, 5321830579834785047
  %22 = sub i64 -7032137544937171245, %0
  %23 = add i64 %0, -242834301215959509
  %24 = sub i64 -3588858202114426737, %0
  %25 = add i64 %0, 2883454493032893253
  %26 = sub i64 9097354517224871855, %0
  store i64 %3, ptr %1, align 8
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %4, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %5, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %6, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %7, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %8, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %9, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %10, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %11, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %12, ptr %35, align 8
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %13, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 %14, ptr %37, align 8
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %15, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %16, ptr %39, align 8
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %17, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 %18, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 %19, ptr %42, align 8
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %20, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i64 %21, ptr %44, align 8
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 %22, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %23, ptr %46, align 8
  %47 = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 %24, ptr %47, align 8
  %48 = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i64 %25, ptr %48, align 8
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i64 %26, ptr %49, align 8
  %50 = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 3266489917, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i64 -7046029288634856825, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i64 -4417276706812531889, ptr %52, align 8
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 1609587929392839161, ptr %53, align 8
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i64 -8796714831421723037, ptr %54, align 8
  %55 = getelementptr inbounds nuw i8, ptr %1, i64 232
  store i64 2246822519, ptr %55, align 8
  %56 = getelementptr inbounds nuw i8, ptr %1, i64 240
  store i64 2870177450012600261, ptr %56, align 8
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i64 2654435761, ptr %57, align 8
  %58 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, i8 0, i64 16, i1 false)
  store i64 %0, ptr %59, align 8
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 128, ptr %60, align 8
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 288
  store i64 16, ptr %61, align 8
  %62 = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 0, ptr %62, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
