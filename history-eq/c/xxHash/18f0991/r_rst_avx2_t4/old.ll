; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_reset.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_INLINE_XXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_rst_secret_seed_default(ptr noundef readonly %0, i64 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.XXH_INLINE_XXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %4) #5
  %5 = icmp eq ptr %0, null
  br i1 %5, label %92, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 3266489917, ptr %4, align 64
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 -7046029288634856825, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 -4417276706812531889, ptr %9, align 16
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1609587929392839161, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 -8796714831421723037, ptr %11, align 32
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 2246822519, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 2870177450012600261, ptr %13, align 16
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 2654435761, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 568
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 536
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 520
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull readonly align 1 dereferenceable(192) %0, i64 192, i1 false)
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %18, ptr noundef nonnull readonly align 64 dereferenceable(64) %4, i64 64, i1 false)
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 512
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 256
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 544
  %22 = getelementptr inbounds nuw i8, ptr %4, i64 552
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  store i64 128, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 288
  store i64 16, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 528
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 296
  store i64 0, ptr %26, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %7, i8 0, i64 512, i1 false)
  store i64 3266489917, ptr %4, align 64
  store i64 -7046029288634856825, ptr %8, align 8
  store i64 -4417276706812531889, ptr %9, align 16
  store i64 1609587929392839161, ptr %10, align 8
  store i64 -8796714831421723037, ptr %11, align 32
  store i64 2246822519, ptr %12, align 8
  store i64 2870177450012600261, ptr %13, align 16
  store i64 2654435761, ptr %14, align 8
  store i64 %1, ptr %22, align 8
  store ptr @XXH3_kSecret, ptr %15, align 8
  store i64 128, ptr %16, align 8
  store i64 16, ptr %17, align 8
  call void @llvm.prefetch.p0(ptr nonnull %7, i32 0, i32 3, i32 1)
  %27 = sub nsw i64 0, %1
  %28 = insertelement <4 x i64> poison, i64 %1, i64 0
  %29 = insertelement <4 x i64> %28, i64 %27, i64 1
  %30 = insertelement <4 x i64> %29, i64 %1, i64 2
  %31 = insertelement <4 x i64> %30, i64 %27, i64 3
  %32 = freeze ptr %7
  %33 = add <4 x i64> %31, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %33, ptr %32, align 32
  %34 = add <4 x i64> %31, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %35 = getelementptr inbounds nuw i8, ptr %32, i64 32
  store <4 x i64> %34, ptr %35, align 32
  %36 = add <4 x i64> %31, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %37 = getelementptr inbounds nuw i8, ptr %32, i64 64
  store <4 x i64> %36, ptr %37, align 32
  %38 = add <4 x i64> %31, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %39 = getelementptr inbounds nuw i8, ptr %32, i64 96
  store <4 x i64> %38, ptr %39, align 32
  %40 = add <4 x i64> %31, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %41 = getelementptr inbounds nuw i8, ptr %32, i64 128
  store <4 x i64> %40, ptr %41, align 32
  %42 = add <4 x i64> %31, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %43 = getelementptr inbounds nuw i8, ptr %32, i64 160
  store <4 x i64> %42, ptr %43, align 32
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %44, ptr noundef nonnull readonly align 64 dereferenceable(192) %7, i64 192, i1 false)
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %45, ptr noundef nonnull readonly align 64 dereferenceable(64) %4, i64 64, i1 false)
  %46 = load i32, ptr %19, align 64
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 560
  store i64 %47, ptr %48, align 8
  %49 = load i64, ptr %21, align 32
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 568
  store i64 %49, ptr %50, align 8
  %51 = load i64, ptr %22, align 8
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 576
  store i64 %51, ptr %52, align 8
  %53 = load i64, ptr %16, align 8
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 584
  store i64 %53, ptr %54, align 8
  %55 = load i64, ptr %17, align 8
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 592
  store i64 %55, ptr %56, align 8
  %57 = load i64, ptr %25, align 16
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 600
  store i64 %57, ptr %58, align 8
  store i64 3266489917, ptr %4, align 64
  store i64 -7046029288634856825, ptr %8, align 8
  store i64 -4417276706812531889, ptr %9, align 16
  store i64 1609587929392839161, ptr %10, align 8
  store i64 -8796714831421723037, ptr %11, align 32
  store i64 2246822519, ptr %12, align 8
  store i64 2870177450012600261, ptr %13, align 16
  store i64 2654435761, ptr %14, align 8
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 608
  %60 = icmp eq ptr %0, @XXH3_kSecret
  br i1 %60, label %85, label %61

61:                                               ; preds = %6
  store i64 -4734510112055689544, ptr %59, align 8
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 616
  store i64 2066345149520216444, ptr %62, align 8
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 624
  store i64 -2623469361688619810, ptr %63, align 8
  %64 = getelementptr inbounds nuw i8, ptr %2, i64 632
  store i64 2262974939099578482, ptr %64, align 8
  %65 = getelementptr inbounds nuw i8, ptr %2, i64 640
  store i64 8711581037947681227, ptr %65, align 8
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 648
  store i64 2410270004345854594, ptr %66, align 8
  %67 = getelementptr inbounds nuw i8, ptr %2, i64 656
  store i64 -8204357891075471176, ptr %67, align 8
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 664
  store i64 5487137525590930912, ptr %68, align 8
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 672
  store i64 -3818837453329782724, ptr %69, align 8
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 680
  store i64 -6688317018830679928, ptr %70, align 8
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 688
  store i64 5690594596133299313, ptr %71, align 8
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 696
  store i64 -2833645246901970632, ptr %72, align 8
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 704
  store i64 4554437623014685352, ptr %73, align 8
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 712
  store i64 2111919702937427193, ptr %74, align 8
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 720
  store i64 3556072174620004746, ptr %75, align 8
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 728
  store i64 7238261902898274248, ptr %76, align 8
  %77 = getelementptr inbounds nuw i8, ptr %2, i64 736
  store i64 -4329134394285701654, ptr %77, align 8
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 744
  store i64 -1485321483350670907, ptr %78, align 8
  %79 = getelementptr inbounds nuw i8, ptr %2, i64 752
  store i64 5321830579834785047, ptr %79, align 8
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 760
  store i64 -7032137544937171245, ptr %80, align 8
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 768
  store i64 -242834301215959509, ptr %81, align 8
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 776
  store i64 -3588858202114426737, ptr %82, align 8
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 784
  store i64 2883454493032893253, ptr %83, align 8
  %84 = getelementptr inbounds nuw i8, ptr %2, i64 792
  store i64 9097354517224871855, ptr %84, align 8
  br label %86

85:                                               ; preds = %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %59, ptr noundef nonnull readonly align 64 dereferenceable(192) @XXH3_kSecret, i64 192, i1 false)
  br label %86

86:                                               ; preds = %61, %85
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %87, ptr noundef nonnull readonly align 64 dereferenceable(64) %4, i64 64, i1 false)
  %88 = getelementptr inbounds nuw i8, ptr %2, i64 864
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 888
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %88, i8 0, i64 24, i1 false)
  store i64 128, ptr %89, align 8
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 896
  store i64 16, ptr %90, align 8
  %91 = getelementptr inbounds nuw i8, ptr %2, i64 904
  store i64 0, ptr %91, align 8
  br label %92

92:                                               ; preds = %3, %86
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %4) #5
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
