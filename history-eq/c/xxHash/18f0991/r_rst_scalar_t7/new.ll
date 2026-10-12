; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_reset.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_rst_secret128_seed(ptr noundef readonly %0, i64 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %110, label %5

5:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull readonly align 1 dereferenceable(192) %0, i64 192, i1 false)
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 192
  store i64 3266489917, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 200
  store i64 -7046029288634856825, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 208
  store i64 -4417276706812531889, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 216
  store i64 1609587929392839161, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 224
  store i64 -8796714831421723037, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 232
  store i64 2246822519, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 240
  store i64 2870177450012600261, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 248
  store i64 2654435761, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 256
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  store i64 128, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 288
  store i64 16, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 296
  store i64 0, ptr %17, align 8
  %18 = icmp eq i64 %1, 0
  br i1 %18, label %68, label %19

19:                                               ; preds = %5
  %20 = add i64 %1, -4734510112055689544
  %21 = sub i64 2066345149520216444, %1
  %22 = add i64 %1, -2623469361688619810
  %23 = sub i64 2262974939099578482, %1
  %24 = add i64 %1, 8711581037947681227
  %25 = sub i64 2410270004345854594, %1
  %26 = add i64 %1, -8204357891075471176
  %27 = sub i64 5487137525590930912, %1
  %28 = add i64 %1, -3818837453329782724
  %29 = sub i64 -6688317018830679928, %1
  %30 = add i64 %1, 5690594596133299313
  %31 = sub i64 -2833645246901970632, %1
  %32 = add i64 %1, 4554437623014685352
  %33 = sub i64 2111919702937427193, %1
  %34 = add i64 %1, 3556072174620004746
  %35 = sub i64 7238261902898274248, %1
  %36 = add i64 %1, -4329134394285701654
  %37 = sub i64 -1485321483350670907, %1
  %38 = add i64 %1, 5321830579834785047
  %39 = sub i64 -7032137544937171245, %1
  %40 = add i64 %1, -242834301215959509
  %41 = sub i64 -3588858202114426737, %1
  %42 = add i64 %1, 2883454493032893253
  %43 = sub i64 9097354517224871855, %1
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 304
  store i64 %20, ptr %44, align 8
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 312
  store i64 %21, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 320
  store i64 %22, ptr %46, align 8
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 328
  store i64 %23, ptr %47, align 8
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 336
  store i64 %24, ptr %48, align 8
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 344
  store i64 %25, ptr %49, align 8
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 352
  store i64 %26, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 360
  store i64 %27, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 368
  store i64 %28, ptr %52, align 8
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 376
  store i64 %29, ptr %53, align 8
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 384
  store i64 %30, ptr %54, align 8
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 392
  store i64 %31, ptr %55, align 8
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 400
  store i64 %32, ptr %56, align 8
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 408
  store i64 %33, ptr %57, align 8
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 416
  store i64 %34, ptr %58, align 8
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 424
  store i64 %35, ptr %59, align 8
  %60 = getelementptr inbounds nuw i8, ptr %2, i64 432
  store i64 %36, ptr %60, align 8
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 440
  store i64 %37, ptr %61, align 8
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 448
  store i64 %38, ptr %62, align 8
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 456
  store i64 %39, ptr %63, align 8
  %64 = getelementptr inbounds nuw i8, ptr %2, i64 464
  store i64 %40, ptr %64, align 8
  %65 = getelementptr inbounds nuw i8, ptr %2, i64 472
  store i64 %41, ptr %65, align 8
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 480
  store i64 %42, ptr %66, align 8
  %67 = getelementptr inbounds nuw i8, ptr %2, i64 488
  store i64 %43, ptr %67, align 8
  br label %96

68:                                               ; preds = %5
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 304
  %70 = icmp eq ptr %0, @XXH3_kSecret
  br i1 %70, label %95, label %71

71:                                               ; preds = %68
  store i64 -4734510112055689544, ptr %69, align 8
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 312
  store i64 2066345149520216444, ptr %72, align 8
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 320
  store i64 -2623469361688619810, ptr %73, align 8
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 328
  store i64 2262974939099578482, ptr %74, align 8
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 336
  store i64 8711581037947681227, ptr %75, align 8
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 344
  store i64 2410270004345854594, ptr %76, align 8
  %77 = getelementptr inbounds nuw i8, ptr %2, i64 352
  store i64 -8204357891075471176, ptr %77, align 8
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 360
  store i64 5487137525590930912, ptr %78, align 8
  %79 = getelementptr inbounds nuw i8, ptr %2, i64 368
  store i64 -3818837453329782724, ptr %79, align 8
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 376
  store i64 -6688317018830679928, ptr %80, align 8
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 384
  store i64 5690594596133299313, ptr %81, align 8
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 392
  store i64 -2833645246901970632, ptr %82, align 8
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 400
  store i64 4554437623014685352, ptr %83, align 8
  %84 = getelementptr inbounds nuw i8, ptr %2, i64 408
  store i64 2111919702937427193, ptr %84, align 8
  %85 = getelementptr inbounds nuw i8, ptr %2, i64 416
  store i64 3556072174620004746, ptr %85, align 8
  %86 = getelementptr inbounds nuw i8, ptr %2, i64 424
  store i64 7238261902898274248, ptr %86, align 8
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 432
  store i64 -4329134394285701654, ptr %87, align 8
  %88 = getelementptr inbounds nuw i8, ptr %2, i64 440
  store i64 -1485321483350670907, ptr %88, align 8
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 448
  store i64 5321830579834785047, ptr %89, align 8
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 456
  store i64 -7032137544937171245, ptr %90, align 8
  %91 = getelementptr inbounds nuw i8, ptr %2, i64 464
  store i64 -242834301215959509, ptr %91, align 8
  %92 = getelementptr inbounds nuw i8, ptr %2, i64 472
  store i64 -3588858202114426737, ptr %92, align 8
  %93 = getelementptr inbounds nuw i8, ptr %2, i64 480
  store i64 2883454493032893253, ptr %93, align 8
  %94 = getelementptr inbounds nuw i8, ptr %2, i64 488
  store i64 9097354517224871855, ptr %94, align 8
  br label %96

95:                                               ; preds = %68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %69, ptr noundef nonnull readonly align 64 dereferenceable(192) @XXH3_kSecret, i64 192, i1 false)
  br label %96

96:                                               ; preds = %19, %71, %95
  %97 = getelementptr inbounds nuw i8, ptr %2, i64 496
  store i64 3266489917, ptr %97, align 8
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 504
  store i64 -7046029288634856825, ptr %98, align 8
  %99 = getelementptr inbounds nuw i8, ptr %2, i64 512
  store i64 -4417276706812531889, ptr %99, align 8
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 520
  store i64 1609587929392839161, ptr %100, align 8
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 528
  store i64 -8796714831421723037, ptr %101, align 8
  %102 = getelementptr inbounds nuw i8, ptr %2, i64 536
  store i64 2246822519, ptr %102, align 8
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 544
  store i64 2870177450012600261, ptr %103, align 8
  %104 = getelementptr inbounds nuw i8, ptr %2, i64 552
  store i64 2654435761, ptr %104, align 8
  %105 = getelementptr inbounds nuw i8, ptr %2, i64 560
  %106 = getelementptr inbounds nuw i8, ptr %2, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %105, i8 0, i64 16, i1 false)
  store i64 %1, ptr %106, align 8
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 584
  store i64 128, ptr %107, align 8
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 592
  store i64 16, ptr %108, align 8
  %109 = getelementptr inbounds nuw i8, ptr %2, i64 600
  store i64 0, ptr %109, align 8
  br label %110

110:                                              ; preds = %3, %96
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
