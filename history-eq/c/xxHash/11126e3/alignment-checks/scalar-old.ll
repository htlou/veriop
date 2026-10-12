; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/11126e3/wrap_rawsimd.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/11126e3/wrap_rawsimd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_acc512(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = xor i64 %17, %9
  %27 = add i64 %2, %9
  %28 = and i64 %26, 4294967295
  %29 = lshr i64 %26, 32
  %30 = mul nuw i64 %28, %29
  %31 = add i64 %1, %30
  %32 = xor i64 %18, %10
  %33 = add i64 %31, %10
  %34 = and i64 %32, 4294967295
  %35 = lshr i64 %32, 32
  %36 = mul nuw i64 %34, %35
  %37 = add i64 %27, %36
  %38 = xor i64 %19, %11
  %39 = add i64 %4, %11
  %40 = and i64 %38, 4294967295
  %41 = lshr i64 %38, 32
  %42 = mul nuw i64 %40, %41
  %43 = add i64 %3, %42
  %44 = xor i64 %20, %12
  %45 = add i64 %43, %12
  %46 = and i64 %44, 4294967295
  %47 = lshr i64 %44, 32
  %48 = mul nuw i64 %46, %47
  %49 = add i64 %39, %48
  %50 = xor i64 %21, %13
  %51 = add i64 %6, %13
  %52 = and i64 %50, 4294967295
  %53 = lshr i64 %50, 32
  %54 = mul nuw i64 %52, %53
  %55 = add i64 %5, %54
  %56 = xor i64 %22, %14
  %57 = add i64 %55, %14
  %58 = and i64 %56, 4294967295
  %59 = lshr i64 %56, 32
  %60 = mul nuw i64 %58, %59
  %61 = add i64 %51, %60
  %62 = xor i64 %23, %15
  %63 = add i64 %8, %15
  %64 = and i64 %62, 4294967295
  %65 = lshr i64 %62, 32
  %66 = mul nuw i64 %64, %65
  %67 = add i64 %7, %66
  %68 = xor i64 %24, %16
  %69 = add i64 %67, %16
  %70 = and i64 %68, 4294967295
  %71 = lshr i64 %68, 32
  %72 = mul nuw i64 %70, %71
  %73 = add i64 %63, %72
  store i64 %33, ptr %0, align 8
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %37, ptr %74, align 8
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %45, ptr %75, align 8
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %49, ptr %76, align 8
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %57, ptr %77, align 8
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %61, ptr %78, align 8
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %69, ptr %79, align 8
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %73, ptr %80, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_scramble(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = lshr i64 %1, 47
  %19 = xor i64 %9, %18
  %20 = xor i64 %19, %1
  %21 = mul i64 %20, 2654435761
  %22 = lshr i64 %2, 47
  %23 = xor i64 %10, %22
  %24 = xor i64 %23, %2
  %25 = mul i64 %24, 2654435761
  %26 = lshr i64 %3, 47
  %27 = xor i64 %11, %26
  %28 = xor i64 %27, %3
  %29 = mul i64 %28, 2654435761
  %30 = lshr i64 %4, 47
  %31 = xor i64 %12, %30
  %32 = xor i64 %31, %4
  %33 = mul i64 %32, 2654435761
  %34 = lshr i64 %5, 47
  %35 = xor i64 %13, %34
  %36 = xor i64 %35, %5
  %37 = mul i64 %36, 2654435761
  %38 = lshr i64 %6, 47
  %39 = xor i64 %14, %38
  %40 = xor i64 %39, %6
  %41 = mul i64 %40, 2654435761
  %42 = lshr i64 %7, 47
  %43 = xor i64 %15, %42
  %44 = xor i64 %43, %7
  %45 = mul i64 %44, 2654435761
  %46 = lshr i64 %8, 47
  %47 = xor i64 %16, %46
  %48 = xor i64 %47, %8
  %49 = mul i64 %48, 2654435761
  store i64 %21, ptr %0, align 8
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %25, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %29, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %33, ptr %52, align 8
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %37, ptr %53, align 8
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %41, ptr %54, align 8
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %45, ptr %55, align 8
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %49, ptr %56, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_initsec(ptr noundef writeonly initializes((0, 192)) %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %1, -4734510112055689544
  %4 = sub i64 2066345149520216444, %1
  %5 = add i64 %1, -2623469361688619810
  %6 = sub i64 2262974939099578482, %1
  %7 = add i64 %1, 8711581037947681227
  %8 = sub i64 2410270004345854594, %1
  %9 = add i64 %1, -8204357891075471176
  %10 = sub i64 5487137525590930912, %1
  %11 = add i64 %1, -3818837453329782724
  %12 = sub i64 -6688317018830679928, %1
  %13 = add i64 %1, 5690594596133299313
  %14 = sub i64 -2833645246901970632, %1
  %15 = add i64 %1, 4554437623014685352
  %16 = sub i64 2111919702937427193, %1
  %17 = add i64 %1, 3556072174620004746
  %18 = sub i64 7238261902898274248, %1
  %19 = add i64 %1, -4329134394285701654
  %20 = sub i64 -1485321483350670907, %1
  %21 = add i64 %1, 5321830579834785047
  %22 = sub i64 -7032137544937171245, %1
  %23 = add i64 %1, -242834301215959509
  %24 = sub i64 -3588858202114426737, %1
  %25 = add i64 %1, 2883454493032893253
  %26 = sub i64 9097354517224871855, %1
  store i64 %3, ptr %0, align 1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %27, align 1
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %5, ptr %28, align 1
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %6, ptr %29, align 1
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %7, ptr %30, align 1
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %8, ptr %31, align 1
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %9, ptr %32, align 1
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %10, ptr %33, align 1
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %11, ptr %34, align 1
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %12, ptr %35, align 1
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %13, ptr %36, align 1
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %14, ptr %37, align 1
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %15, ptr %38, align 1
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %16, ptr %39, align 1
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %17, ptr %40, align 1
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %18, ptr %41, align 1
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %19, ptr %42, align 1
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %20, ptr %43, align 1
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %21, ptr %44, align 1
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %22, ptr %45, align 1
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %23, ptr %46, align 1
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %24, ptr %47, align 1
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %25, ptr %48, align 1
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %26, ptr %49, align 1
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
