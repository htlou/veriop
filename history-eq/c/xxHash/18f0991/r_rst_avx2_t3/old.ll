; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_reset.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_INLINE_XXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_rst_default_seed(i64 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.XXH_INLINE_XXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %3) #5
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(512) %5, i8 0, i64 512, i1 false)
  store i64 3266489917, ptr %3, align 64
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -7046029288634856825, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 -4417276706812531889, ptr %7, align 16
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1609587929392839161, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 -8796714831421723037, ptr %9, align 32
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 2246822519, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 2870177450012600261, ptr %11, align 16
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 2654435761, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 568
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 536
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 520
  store i64 -4734510112055689544, ptr %1, align 8
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 2066345149520216444, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 -2623469361688619810, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 2262974939099578482, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 8711581037947681227, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 2410270004345854594, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 -8204357891075471176, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 5487137525590930912, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 -3818837453329782724, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 -6688317018830679928, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 5690594596133299313, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 -2833645246901970632, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 4554437623014685352, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 2111919702937427193, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 3556072174620004746, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 7238261902898274248, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 -4329134394285701654, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 -1485321483350670907, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i64 5321830579834785047, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 -7032137544937171245, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 -242834301215959509, ptr %35, align 8
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 -3588858202114426737, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i64 2883454493032893253, ptr %37, align 8
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i64 9097354517224871855, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %39, ptr noundef nonnull readonly align 64 dereferenceable(64) %3, i64 64, i1 false)
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 512
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 544
  %43 = getelementptr inbounds nuw i8, ptr %3, i64 552
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  store i64 128, ptr %44, align 8
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 288
  store i64 16, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 528
  %47 = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 0, ptr %47, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %4, i8 0, i64 512, i1 false)
  store i64 3266489917, ptr %3, align 64
  store i64 -7046029288634856825, ptr %6, align 8
  store i64 -4417276706812531889, ptr %7, align 16
  store i64 1609587929392839161, ptr %8, align 8
  store i64 -8796714831421723037, ptr %9, align 32
  store i64 2246822519, ptr %10, align 8
  store i64 2870177450012600261, ptr %11, align 16
  store i64 2654435761, ptr %12, align 8
  store i64 %0, ptr %43, align 8
  store ptr @XXH3_kSecret, ptr %13, align 8
  store i64 128, ptr %14, align 8
  store i64 16, ptr %15, align 8
  call void @llvm.prefetch.p0(ptr nonnull %4, i32 0, i32 3, i32 1)
  %48 = sub nsw i64 0, %0
  %49 = insertelement <4 x i64> poison, i64 %0, i64 0
  %50 = insertelement <4 x i64> %49, i64 %48, i64 1
  %51 = insertelement <4 x i64> %50, i64 %0, i64 2
  %52 = insertelement <4 x i64> %51, i64 %48, i64 3
  %53 = freeze ptr %4
  %54 = add <4 x i64> %52, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %54, ptr %53, align 32
  %55 = add <4 x i64> %52, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %56 = getelementptr inbounds nuw i8, ptr %53, i64 32
  store <4 x i64> %55, ptr %56, align 32
  %57 = add <4 x i64> %52, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %58 = getelementptr inbounds nuw i8, ptr %53, i64 64
  store <4 x i64> %57, ptr %58, align 32
  %59 = add <4 x i64> %52, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %60 = getelementptr inbounds nuw i8, ptr %53, i64 96
  store <4 x i64> %59, ptr %60, align 32
  %61 = add <4 x i64> %52, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %62 = getelementptr inbounds nuw i8, ptr %53, i64 128
  store <4 x i64> %61, ptr %62, align 32
  %63 = add <4 x i64> %52, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %64 = getelementptr inbounds nuw i8, ptr %53, i64 160
  store <4 x i64> %63, ptr %64, align 32
  %65 = getelementptr inbounds nuw i8, ptr %1, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %65, ptr noundef nonnull readonly align 64 dereferenceable(192) %4, i64 192, i1 false)
  %66 = getelementptr inbounds nuw i8, ptr %1, i64 496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %66, ptr noundef nonnull readonly align 64 dereferenceable(64) %3, i64 64, i1 false)
  %67 = load i32, ptr %40, align 64
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds nuw i8, ptr %1, i64 560
  store i64 %68, ptr %69, align 8
  %70 = load i64, ptr %42, align 32
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 568
  store i64 %70, ptr %71, align 8
  %72 = load i64, ptr %43, align 8
  %73 = getelementptr inbounds nuw i8, ptr %1, i64 576
  store i64 %72, ptr %73, align 8
  %74 = load i64, ptr %14, align 8
  %75 = getelementptr inbounds nuw i8, ptr %1, i64 584
  store i64 %74, ptr %75, align 8
  %76 = load i64, ptr %15, align 8
  %77 = getelementptr inbounds nuw i8, ptr %1, i64 592
  store i64 %76, ptr %77, align 8
  %78 = load i64, ptr %46, align 16
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 600
  store i64 %78, ptr %79, align 8
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %3) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 546542}
