; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/662b223/wrap_reset.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/662b223/wrap_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_INLINE_XXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_rst_secret_seed_default(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.XXH_INLINE_XXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %4) #5
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %5, i8 0, i64 448, i1 false)
  %6 = icmp eq ptr %0, null
  br i1 %6, label %114, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %8, i8 0, i64 56, i1 false)
  store i64 3266489917, ptr %4, align 64
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 -7046029288634856825, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 -4417276706812531889, ptr %10, align 16
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1609587929392839161, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 -8796714831421723037, ptr %12, align 32
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 2246822519, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 2870177450012600261, ptr %14, align 16
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 2654435761, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 568
  store ptr %0, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 536
  store i64 128, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 520
  store i64 16, ptr %18, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull readonly align 1 dereferenceable(192) %0, i64 192, i1 false)
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %19, ptr noundef nonnull readonly align 64 dereferenceable(64) %4, i64 64, i1 false)
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 256
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  store i64 128, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 288
  store i64 16, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 296
  store i64 0, ptr %23, align 8
  %24 = icmp eq i64 %1, 0
  br i1 %24, label %46, label %25

25:                                               ; preds = %7
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %26, i32 0, i32 3, i32 1)
  %27 = sub nsw i64 0, %1
  %28 = insertelement <4 x i64> poison, i64 %1, i64 0
  %29 = insertelement <4 x i64> %28, i64 %27, i64 1
  %30 = insertelement <4 x i64> %29, i64 %1, i64 2
  %31 = insertelement <4 x i64> %30, i64 %27, i64 3
  %32 = freeze ptr %26
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
  store i64 3266489917, ptr %4, align 64
  store i64 -7046029288634856825, ptr %9, align 8
  store i64 -4417276706812531889, ptr %10, align 16
  store i64 1609587929392839161, ptr %11, align 8
  store i64 -8796714831421723037, ptr %12, align 32
  store i64 2246822519, ptr %13, align 8
  store i64 2870177450012600261, ptr %14, align 16
  store i64 2654435761, ptr %15, align 8
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 304
  %45 = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %44, ptr noundef nonnull readonly align 64 dereferenceable(192) %45, i64 192, i1 false)
  br label %74

46:                                               ; preds = %7
  store i64 3266489917, ptr %4, align 64
  store i64 -7046029288634856825, ptr %9, align 8
  store i64 -4417276706812531889, ptr %10, align 16
  store i64 1609587929392839161, ptr %11, align 8
  store i64 -8796714831421723037, ptr %12, align 32
  store i64 2246822519, ptr %13, align 8
  store i64 2870177450012600261, ptr %14, align 16
  store i64 2654435761, ptr %15, align 8
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 304
  %48 = icmp eq ptr %0, @XXH3_kSecret
  br i1 %48, label %73, label %49

49:                                               ; preds = %46
  store i64 -4734510112055689544, ptr %47, align 8
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 312
  store i64 2066345149520216444, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 320
  store i64 -2623469361688619810, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 328
  store i64 2262974939099578482, ptr %52, align 8
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 336
  store i64 8711581037947681227, ptr %53, align 8
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 344
  store i64 2410270004345854594, ptr %54, align 8
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 352
  store i64 -8204357891075471176, ptr %55, align 8
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 360
  store i64 5487137525590930912, ptr %56, align 8
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 368
  store i64 -3818837453329782724, ptr %57, align 8
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 376
  store i64 -6688317018830679928, ptr %58, align 8
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 384
  store i64 5690594596133299313, ptr %59, align 8
  %60 = getelementptr inbounds nuw i8, ptr %2, i64 392
  store i64 -2833645246901970632, ptr %60, align 8
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 400
  store i64 4554437623014685352, ptr %61, align 8
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 408
  store i64 2111919702937427193, ptr %62, align 8
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 416
  store i64 3556072174620004746, ptr %63, align 8
  %64 = getelementptr inbounds nuw i8, ptr %2, i64 424
  store i64 7238261902898274248, ptr %64, align 8
  %65 = getelementptr inbounds nuw i8, ptr %2, i64 432
  store i64 -4329134394285701654, ptr %65, align 8
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 440
  store i64 -1485321483350670907, ptr %66, align 8
  %67 = getelementptr inbounds nuw i8, ptr %2, i64 448
  store i64 5321830579834785047, ptr %67, align 8
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 456
  store i64 -7032137544937171245, ptr %68, align 8
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 464
  store i64 -242834301215959509, ptr %69, align 8
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 472
  store i64 -3588858202114426737, ptr %70, align 8
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 480
  store i64 2883454493032893253, ptr %71, align 8
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 488
  store i64 9097354517224871855, ptr %72, align 8
  br label %74

73:                                               ; preds = %46
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %47, ptr noundef nonnull readonly align 64 dereferenceable(192) @XXH3_kSecret, i64 192, i1 false)
  br label %74

74:                                               ; preds = %73, %49, %25
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %75, ptr noundef nonnull readonly align 64 dereferenceable(64) %4, i64 64, i1 false)
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 560
  %77 = getelementptr inbounds nuw i8, ptr %2, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %76, i8 0, i64 16, i1 false)
  store i64 %1, ptr %77, align 8
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 584
  store i64 128, ptr %78, align 8
  %79 = getelementptr inbounds nuw i8, ptr %2, i64 592
  store i64 16, ptr %79, align 8
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 600
  store i64 0, ptr %80, align 8
  store i64 3266489917, ptr %4, align 64
  store i64 -7046029288634856825, ptr %9, align 8
  store i64 -4417276706812531889, ptr %10, align 16
  store i64 1609587929392839161, ptr %11, align 8
  store i64 -8796714831421723037, ptr %12, align 32
  store i64 2246822519, ptr %13, align 8
  store i64 2870177450012600261, ptr %14, align 16
  store i64 2654435761, ptr %15, align 8
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 608
  %82 = icmp eq ptr %0, @XXH3_kSecret
  br i1 %82, label %107, label %83

83:                                               ; preds = %74
  store i64 -4734510112055689544, ptr %81, align 8
  %84 = getelementptr inbounds nuw i8, ptr %2, i64 616
  store i64 2066345149520216444, ptr %84, align 8
  %85 = getelementptr inbounds nuw i8, ptr %2, i64 624
  store i64 -2623469361688619810, ptr %85, align 8
  %86 = getelementptr inbounds nuw i8, ptr %2, i64 632
  store i64 2262974939099578482, ptr %86, align 8
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 640
  store i64 8711581037947681227, ptr %87, align 8
  %88 = getelementptr inbounds nuw i8, ptr %2, i64 648
  store i64 2410270004345854594, ptr %88, align 8
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 656
  store i64 -8204357891075471176, ptr %89, align 8
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 664
  store i64 5487137525590930912, ptr %90, align 8
  %91 = getelementptr inbounds nuw i8, ptr %2, i64 672
  store i64 -3818837453329782724, ptr %91, align 8
  %92 = getelementptr inbounds nuw i8, ptr %2, i64 680
  store i64 -6688317018830679928, ptr %92, align 8
  %93 = getelementptr inbounds nuw i8, ptr %2, i64 688
  store i64 5690594596133299313, ptr %93, align 8
  %94 = getelementptr inbounds nuw i8, ptr %2, i64 696
  store i64 -2833645246901970632, ptr %94, align 8
  %95 = getelementptr inbounds nuw i8, ptr %2, i64 704
  store i64 4554437623014685352, ptr %95, align 8
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 712
  store i64 2111919702937427193, ptr %96, align 8
  %97 = getelementptr inbounds nuw i8, ptr %2, i64 720
  store i64 3556072174620004746, ptr %97, align 8
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 728
  store i64 7238261902898274248, ptr %98, align 8
  %99 = getelementptr inbounds nuw i8, ptr %2, i64 736
  store i64 -4329134394285701654, ptr %99, align 8
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 744
  store i64 -1485321483350670907, ptr %100, align 8
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 752
  store i64 5321830579834785047, ptr %101, align 8
  %102 = getelementptr inbounds nuw i8, ptr %2, i64 760
  store i64 -7032137544937171245, ptr %102, align 8
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 768
  store i64 -242834301215959509, ptr %103, align 8
  %104 = getelementptr inbounds nuw i8, ptr %2, i64 776
  store i64 -3588858202114426737, ptr %104, align 8
  %105 = getelementptr inbounds nuw i8, ptr %2, i64 784
  store i64 2883454493032893253, ptr %105, align 8
  %106 = getelementptr inbounds nuw i8, ptr %2, i64 792
  store i64 9097354517224871855, ptr %106, align 8
  br label %108

107:                                              ; preds = %74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %81, ptr noundef nonnull readonly align 64 dereferenceable(192) @XXH3_kSecret, i64 192, i1 false)
  br label %108

108:                                              ; preds = %83, %107
  %109 = getelementptr inbounds nuw i8, ptr %2, i64 800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %109, ptr noundef nonnull readonly align 64 dereferenceable(64) %4, i64 64, i1 false)
  %110 = getelementptr inbounds nuw i8, ptr %2, i64 864
  %111 = getelementptr inbounds nuw i8, ptr %2, i64 888
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %110, i8 0, i64 24, i1 false)
  store i64 128, ptr %111, align 8
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 896
  store i64 16, ptr %112, align 8
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 904
  store i64 0, ptr %113, align 8
  br label %114

114:                                              ; preds = %3, %108
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
!5 = !{i64 547111}
