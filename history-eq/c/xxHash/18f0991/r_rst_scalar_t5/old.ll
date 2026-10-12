; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_reset.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_rst128_seed_seed(i64 noundef %0, i64 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = add i64 %0, -4734510112055689544
  %5 = sub i64 2066345149520216444, %0
  %6 = add i64 %0, -2623469361688619810
  %7 = sub i64 2262974939099578482, %0
  %8 = add i64 %0, 8711581037947681227
  %9 = sub i64 2410270004345854594, %0
  %10 = add i64 %0, -8204357891075471176
  %11 = sub i64 5487137525590930912, %0
  %12 = add i64 %0, -3818837453329782724
  %13 = sub i64 -6688317018830679928, %0
  %14 = add i64 %0, 5690594596133299313
  %15 = sub i64 -2833645246901970632, %0
  %16 = add i64 %0, 4554437623014685352
  %17 = sub i64 2111919702937427193, %0
  %18 = add i64 %0, 3556072174620004746
  %19 = sub i64 7238261902898274248, %0
  %20 = add i64 %0, -4329134394285701654
  %21 = sub i64 -1485321483350670907, %0
  %22 = add i64 %0, 5321830579834785047
  %23 = sub i64 -7032137544937171245, %0
  %24 = add i64 %0, -242834301215959509
  %25 = sub i64 -3588858202114426737, %0
  %26 = add i64 %0, 2883454493032893253
  %27 = sub i64 9097354517224871855, %0
  store i64 %4, ptr %2, align 8
  %28 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %5, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %6, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %7, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %8, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %9, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %10, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 %11, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %12, ptr %35, align 8
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 %13, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 %14, ptr %37, align 8
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %15, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i64 %16, ptr %39, align 8
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %17, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i64 %18, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i64 %19, ptr %42, align 8
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i64 %20, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i64 %21, ptr %44, align 8
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 144
  store i64 %22, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 152
  store i64 %23, ptr %46, align 8
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 160
  store i64 %24, ptr %47, align 8
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i64 %25, ptr %48, align 8
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 176
  store i64 %26, ptr %49, align 8
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 184
  store i64 %27, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 192
  store i64 3266489917, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 200
  store i64 -7046029288634856825, ptr %52, align 8
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 208
  store i64 -4417276706812531889, ptr %53, align 8
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 216
  store i64 1609587929392839161, ptr %54, align 8
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 224
  store i64 -8796714831421723037, ptr %55, align 8
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 232
  store i64 2246822519, ptr %56, align 8
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 240
  store i64 2870177450012600261, ptr %57, align 8
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 248
  store i64 2654435761, ptr %58, align 8
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 256
  %60 = getelementptr inbounds nuw i8, ptr %2, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %59, i8 0, i64 16, i1 false)
  store i64 %0, ptr %60, align 8
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 280
  store i64 128, ptr %61, align 8
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 288
  store i64 16, ptr %62, align 8
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 296
  store i64 0, ptr %63, align 8
  %64 = add i64 %1, -4734510112055689544
  %65 = sub i64 2066345149520216444, %1
  %66 = add i64 %1, -2623469361688619810
  %67 = sub i64 2262974939099578482, %1
  %68 = add i64 %1, 8711581037947681227
  %69 = sub i64 2410270004345854594, %1
  %70 = add i64 %1, -8204357891075471176
  %71 = sub i64 5487137525590930912, %1
  %72 = add i64 %1, -3818837453329782724
  %73 = sub i64 -6688317018830679928, %1
  %74 = add i64 %1, 5690594596133299313
  %75 = sub i64 -2833645246901970632, %1
  %76 = add i64 %1, 4554437623014685352
  %77 = sub i64 2111919702937427193, %1
  %78 = add i64 %1, 3556072174620004746
  %79 = sub i64 7238261902898274248, %1
  %80 = add i64 %1, -4329134394285701654
  %81 = sub i64 -1485321483350670907, %1
  %82 = add i64 %1, 5321830579834785047
  %83 = sub i64 -7032137544937171245, %1
  %84 = add i64 %1, -242834301215959509
  %85 = sub i64 -3588858202114426737, %1
  %86 = add i64 %1, 2883454493032893253
  %87 = sub i64 9097354517224871855, %1
  %88 = getelementptr inbounds nuw i8, ptr %2, i64 304
  store i64 %64, ptr %88, align 8
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 312
  store i64 %65, ptr %89, align 8
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 320
  store i64 %66, ptr %90, align 8
  %91 = getelementptr inbounds nuw i8, ptr %2, i64 328
  store i64 %67, ptr %91, align 8
  %92 = getelementptr inbounds nuw i8, ptr %2, i64 336
  store i64 %68, ptr %92, align 8
  %93 = getelementptr inbounds nuw i8, ptr %2, i64 344
  store i64 %69, ptr %93, align 8
  %94 = getelementptr inbounds nuw i8, ptr %2, i64 352
  store i64 %70, ptr %94, align 8
  %95 = getelementptr inbounds nuw i8, ptr %2, i64 360
  store i64 %71, ptr %95, align 8
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 368
  store i64 %72, ptr %96, align 8
  %97 = getelementptr inbounds nuw i8, ptr %2, i64 376
  store i64 %73, ptr %97, align 8
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 384
  store i64 %74, ptr %98, align 8
  %99 = getelementptr inbounds nuw i8, ptr %2, i64 392
  store i64 %75, ptr %99, align 8
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 400
  store i64 %76, ptr %100, align 8
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 408
  store i64 %77, ptr %101, align 8
  %102 = getelementptr inbounds nuw i8, ptr %2, i64 416
  store i64 %78, ptr %102, align 8
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 424
  store i64 %79, ptr %103, align 8
  %104 = getelementptr inbounds nuw i8, ptr %2, i64 432
  store i64 %80, ptr %104, align 8
  %105 = getelementptr inbounds nuw i8, ptr %2, i64 440
  store i64 %81, ptr %105, align 8
  %106 = getelementptr inbounds nuw i8, ptr %2, i64 448
  store i64 %82, ptr %106, align 8
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 456
  store i64 %83, ptr %107, align 8
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 464
  store i64 %84, ptr %108, align 8
  %109 = getelementptr inbounds nuw i8, ptr %2, i64 472
  store i64 %85, ptr %109, align 8
  %110 = getelementptr inbounds nuw i8, ptr %2, i64 480
  store i64 %86, ptr %110, align 8
  %111 = getelementptr inbounds nuw i8, ptr %2, i64 488
  store i64 %87, ptr %111, align 8
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 496
  store i64 3266489917, ptr %112, align 8
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 504
  store i64 -7046029288634856825, ptr %113, align 8
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 512
  store i64 -4417276706812531889, ptr %114, align 8
  %115 = getelementptr inbounds nuw i8, ptr %2, i64 520
  store i64 1609587929392839161, ptr %115, align 8
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 528
  store i64 -8796714831421723037, ptr %116, align 8
  %117 = getelementptr inbounds nuw i8, ptr %2, i64 536
  store i64 2246822519, ptr %117, align 8
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 544
  store i64 2870177450012600261, ptr %118, align 8
  %119 = getelementptr inbounds nuw i8, ptr %2, i64 552
  store i64 2654435761, ptr %119, align 8
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 560
  %121 = getelementptr inbounds nuw i8, ptr %2, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %120, i8 0, i64 16, i1 false)
  store i64 %1, ptr %121, align 8
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 584
  store i64 128, ptr %122, align 8
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 592
  store i64 16, ptr %123, align 8
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 600
  store i64 0, ptr %124, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
