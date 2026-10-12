; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e701df3/wrap_scalar.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e701df3/wrap_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_acc512_scalar(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = xor i64 %17, %9
  %27 = add i64 %9, %2
  %28 = and i64 %26, 4294967295
  %29 = lshr i64 %26, 32
  %30 = mul nuw i64 %28, %29
  %31 = xor i64 %18, %10
  %32 = add i64 %10, %1
  %33 = add i64 %32, %30
  %34 = and i64 %31, 4294967295
  %35 = lshr i64 %31, 32
  %36 = mul nuw i64 %34, %35
  %37 = add i64 %27, %36
  %38 = xor i64 %19, %11
  %39 = add i64 %11, %4
  %40 = and i64 %38, 4294967295
  %41 = lshr i64 %38, 32
  %42 = mul nuw i64 %40, %41
  %43 = xor i64 %20, %12
  %44 = add i64 %12, %3
  %45 = add i64 %44, %42
  %46 = and i64 %43, 4294967295
  %47 = lshr i64 %43, 32
  %48 = mul nuw i64 %46, %47
  %49 = add i64 %39, %48
  %50 = xor i64 %21, %13
  %51 = add i64 %13, %6
  %52 = and i64 %50, 4294967295
  %53 = lshr i64 %50, 32
  %54 = mul nuw i64 %52, %53
  %55 = xor i64 %22, %14
  %56 = add i64 %14, %5
  %57 = add i64 %56, %54
  %58 = and i64 %55, 4294967295
  %59 = lshr i64 %55, 32
  %60 = mul nuw i64 %58, %59
  %61 = add i64 %51, %60
  %62 = xor i64 %23, %15
  %63 = add i64 %15, %8
  %64 = and i64 %62, 4294967295
  %65 = lshr i64 %62, 32
  %66 = mul nuw i64 %64, %65
  %67 = xor i64 %24, %16
  %68 = add i64 %16, %7
  %69 = add i64 %68, %66
  %70 = and i64 %67, 4294967295
  %71 = lshr i64 %67, 32
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

; Function Attrs: nounwind uwtable
define dso_local void @target_initsecret_scalar(ptr noundef writeonly initializes((0, 192)) %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = bitcast ptr @XXH3_kSecret to ptr
  %4 = icmp eq ptr %3, @XXH3_kSecret
  tail call void @llvm.assume(i1 %4)
  %5 = add i64 %1, -4734510112055689544
  %6 = sub i64 2066345149520216444, %1
  %7 = add i64 %1, -2623469361688619810
  %8 = sub i64 2262974939099578482, %1
  %9 = add i64 %1, 8711581037947681227
  %10 = sub i64 2410270004345854594, %1
  %11 = add i64 %1, -8204357891075471176
  %12 = sub i64 5487137525590930912, %1
  %13 = add i64 %1, -3818837453329782724
  %14 = sub i64 -6688317018830679928, %1
  %15 = add i64 %1, 5690594596133299313
  %16 = sub i64 -2833645246901970632, %1
  %17 = add i64 %1, 4554437623014685352
  %18 = sub i64 2111919702937427193, %1
  %19 = add i64 %1, 3556072174620004746
  %20 = sub i64 7238261902898274248, %1
  %21 = add i64 %1, -4329134394285701654
  %22 = sub i64 -1485321483350670907, %1
  %23 = add i64 %1, 5321830579834785047
  %24 = sub i64 -7032137544937171245, %1
  %25 = add i64 %1, -242834301215959509
  %26 = sub i64 -3588858202114426737, %1
  %27 = add i64 %1, 2883454493032893253
  %28 = sub i64 9097354517224871855, %1
  store i64 %5, ptr %0, align 1
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %6, ptr %29, align 1
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %7, ptr %30, align 1
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %8, ptr %31, align 1
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %9, ptr %32, align 1
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %10, ptr %33, align 1
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %11, ptr %34, align 1
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %12, ptr %35, align 1
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %13, ptr %36, align 1
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %14, ptr %37, align 1
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %15, ptr %38, align 1
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %16, ptr %39, align 1
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %17, ptr %40, align 1
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %18, ptr %41, align 1
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %19, ptr %42, align 1
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %20, ptr %43, align 1
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %21, ptr %44, align 1
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %22, ptr %45, align 1
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %23, ptr %46, align 1
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %24, ptr %47, align 1
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %25, ptr %48, align 1
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %26, ptr %49, align 1
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %27, ptr %50, align 1
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %28, ptr %51, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!6 = !{!7}
!7 = distinct !{!7, !8, !"XXH3_initCustomSecret_scalar: argument 0"}
!8 = distinct !{!8, !"XXH3_initCustomSecret_scalar"}
!9 = !{i64 2150836160}
