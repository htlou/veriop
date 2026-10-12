; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_reset.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_rst_default_seed(i64 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  store i64 -4734510112055689544, ptr %1, align 8
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 2066345149520216444, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 -2623469361688619810, ptr %4, align 8
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 2262974939099578482, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 8711581037947681227, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 2410270004345854594, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 -8204357891075471176, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 5487137525590930912, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 -3818837453329782724, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 -6688317018830679928, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 5690594596133299313, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 -2833645246901970632, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 4554437623014685352, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 2111919702937427193, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 3556072174620004746, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 7238261902898274248, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 -4329134394285701654, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 -1485321483350670907, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i64 5321830579834785047, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 -7032137544937171245, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 -242834301215959509, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 -3588858202114426737, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i64 2883454493032893253, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i64 9097354517224871855, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 3266489917, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i64 -7046029288634856825, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i64 -4417276706812531889, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 1609587929392839161, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i64 -8796714831421723037, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 232
  store i64 2246822519, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 240
  store i64 2870177450012600261, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i64 2654435761, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false)
  store i64 128, ptr %35, align 8
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 288
  store i64 16, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 0, ptr %37, align 8
  %38 = add i64 %0, -4734510112055689544
  %39 = sub i64 2066345149520216444, %0
  %40 = add i64 %0, -2623469361688619810
  %41 = sub i64 2262974939099578482, %0
  %42 = add i64 %0, 8711581037947681227
  %43 = sub i64 2410270004345854594, %0
  %44 = add i64 %0, -8204357891075471176
  %45 = sub i64 5487137525590930912, %0
  %46 = add i64 %0, -3818837453329782724
  %47 = sub i64 -6688317018830679928, %0
  %48 = add i64 %0, 5690594596133299313
  %49 = sub i64 -2833645246901970632, %0
  %50 = add i64 %0, 4554437623014685352
  %51 = sub i64 2111919702937427193, %0
  %52 = add i64 %0, 3556072174620004746
  %53 = sub i64 7238261902898274248, %0
  %54 = add i64 %0, -4329134394285701654
  %55 = sub i64 -1485321483350670907, %0
  %56 = add i64 %0, 5321830579834785047
  %57 = sub i64 -7032137544937171245, %0
  %58 = add i64 %0, -242834301215959509
  %59 = sub i64 -3588858202114426737, %0
  %60 = add i64 %0, 2883454493032893253
  %61 = sub i64 9097354517224871855, %0
  %62 = getelementptr inbounds nuw i8, ptr %1, i64 304
  store i64 %38, ptr %62, align 8
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i64 %39, ptr %63, align 8
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 320
  store i64 %40, ptr %64, align 8
  %65 = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i64 %41, ptr %65, align 8
  %66 = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i64 %42, ptr %66, align 8
  %67 = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i64 %43, ptr %67, align 8
  %68 = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i64 %44, ptr %68, align 8
  %69 = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 %45, ptr %69, align 8
  %70 = getelementptr inbounds nuw i8, ptr %1, i64 368
  store i64 %46, ptr %70, align 8
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 376
  store i64 %47, ptr %71, align 8
  %72 = getelementptr inbounds nuw i8, ptr %1, i64 384
  store i64 %48, ptr %72, align 8
  %73 = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i64 %49, ptr %73, align 8
  %74 = getelementptr inbounds nuw i8, ptr %1, i64 400
  store i64 %50, ptr %74, align 8
  %75 = getelementptr inbounds nuw i8, ptr %1, i64 408
  store i64 %51, ptr %75, align 8
  %76 = getelementptr inbounds nuw i8, ptr %1, i64 416
  store i64 %52, ptr %76, align 8
  %77 = getelementptr inbounds nuw i8, ptr %1, i64 424
  store i64 %53, ptr %77, align 8
  %78 = getelementptr inbounds nuw i8, ptr %1, i64 432
  store i64 %54, ptr %78, align 8
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 440
  store i64 %55, ptr %79, align 8
  %80 = getelementptr inbounds nuw i8, ptr %1, i64 448
  store i64 %56, ptr %80, align 8
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 456
  store i64 %57, ptr %81, align 8
  %82 = getelementptr inbounds nuw i8, ptr %1, i64 464
  store i64 %58, ptr %82, align 8
  %83 = getelementptr inbounds nuw i8, ptr %1, i64 472
  store i64 %59, ptr %83, align 8
  %84 = getelementptr inbounds nuw i8, ptr %1, i64 480
  store i64 %60, ptr %84, align 8
  %85 = getelementptr inbounds nuw i8, ptr %1, i64 488
  store i64 %61, ptr %85, align 8
  %86 = getelementptr inbounds nuw i8, ptr %1, i64 496
  store i64 3266489917, ptr %86, align 8
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 504
  store i64 -7046029288634856825, ptr %87, align 8
  %88 = getelementptr inbounds nuw i8, ptr %1, i64 512
  store i64 -4417276706812531889, ptr %88, align 8
  %89 = getelementptr inbounds nuw i8, ptr %1, i64 520
  store i64 1609587929392839161, ptr %89, align 8
  %90 = getelementptr inbounds nuw i8, ptr %1, i64 528
  store i64 -8796714831421723037, ptr %90, align 8
  %91 = getelementptr inbounds nuw i8, ptr %1, i64 536
  store i64 2246822519, ptr %91, align 8
  %92 = getelementptr inbounds nuw i8, ptr %1, i64 544
  store i64 2870177450012600261, ptr %92, align 8
  %93 = getelementptr inbounds nuw i8, ptr %1, i64 552
  store i64 2654435761, ptr %93, align 8
  %94 = getelementptr inbounds nuw i8, ptr %1, i64 560
  %95 = getelementptr inbounds nuw i8, ptr %1, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %94, i8 0, i64 16, i1 false)
  store i64 %0, ptr %95, align 8
  %96 = getelementptr inbounds nuw i8, ptr %1, i64 584
  store i64 128, ptr %96, align 8
  %97 = getelementptr inbounds nuw i8, ptr %1, i64 592
  store i64 16, ptr %97, align 8
  %98 = getelementptr inbounds nuw i8, ptr %1, i64 600
  store i64 0, ptr %98, align 8
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
