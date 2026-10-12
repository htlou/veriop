; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_obs.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_obs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_obs_reuse_seed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly initializes((0, 1120)) %3) local_unnamed_addr #0 {
  %5 = alloca { [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }, align 64
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(320) %5, i8 0, i64 320, i1 false)
  %6 = icmp eq ptr %0, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(250) %5, ptr noundef nonnull align 1 dereferenceable(250) %0, i64 250, i1 false)
  br label %8

8:                                                ; preds = %4, %7
  %9 = phi i64 [ 0, %4 ], [ 250, %7 ]
  %10 = sub i64 9097354517224871855, %1
  %11 = add i64 %1, 2883454493032893253
  %12 = sub i64 -3588858202114426737, %1
  %13 = add i64 %1, -242834301215959509
  %14 = sub i64 -7032137544937171245, %1
  %15 = add i64 %1, 5321830579834785047
  %16 = sub i64 -1485321483350670907, %1
  %17 = add i64 %1, -4329134394285701654
  %18 = sub i64 7238261902898274248, %1
  %19 = add i64 %1, 3556072174620004746
  %20 = sub i64 2111919702937427193, %1
  %21 = add i64 %1, 4554437623014685352
  %22 = sub i64 -2833645246901970632, %1
  %23 = add i64 %1, 5690594596133299313
  %24 = sub i64 -6688317018830679928, %1
  %25 = add i64 %1, -3818837453329782724
  %26 = sub i64 5487137525590930912, %1
  %27 = add i64 %1, -8204357891075471176
  %28 = sub i64 2410270004345854594, %1
  %29 = add i64 %1, 8711581037947681227
  %30 = sub i64 2262974939099578482, %1
  %31 = add i64 %1, -2623469361688619810
  %32 = sub i64 2066345149520216444, %1
  %33 = add i64 %1, -4734510112055689544
  store i64 %33, ptr %3, align 8
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %32, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %31, ptr %35, align 8
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %30, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %29, ptr %37, align 8
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %28, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %27, ptr %39, align 8
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %26, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %25, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %24, ptr %42, align 8
  %43 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %23, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %22, ptr %44, align 8
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 %21, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 %20, ptr %46, align 8
  %47 = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 %19, ptr %47, align 8
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 %18, ptr %48, align 8
  %49 = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %17, ptr %49, align 8
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i64 %16, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i64 %15, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i64 %14, ptr %52, align 8
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i64 %13, ptr %53, align 8
  %54 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i64 %12, ptr %54, align 8
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i64 %11, ptr %55, align 8
  %56 = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i64 %10, ptr %56, align 8
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 192
  store i64 3266489917, ptr %57, align 8
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 200
  store i64 -7046029288634856825, ptr %58, align 8
  %59 = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i64 -4417276706812531889, ptr %59, align 8
  %60 = getelementptr inbounds nuw i8, ptr %3, i64 216
  store i64 1609587929392839161, ptr %60, align 8
  %61 = getelementptr inbounds nuw i8, ptr %3, i64 224
  store i64 -8796714831421723037, ptr %61, align 8
  %62 = getelementptr inbounds nuw i8, ptr %3, i64 232
  store i64 2246822519, ptr %62, align 8
  %63 = getelementptr inbounds nuw i8, ptr %3, i64 240
  store i64 2870177450012600261, ptr %63, align 8
  %64 = getelementptr inbounds nuw i8, ptr %3, i64 248
  store i64 2654435761, ptr %64, align 8
  %65 = getelementptr inbounds nuw i8, ptr %3, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %65, ptr noundef nonnull align 64 dereferenceable(256) %5, i64 256, i1 false)
  %66 = getelementptr inbounds nuw i8, ptr %3, i64 512
  store i64 %9, ptr %66, align 8
  %67 = getelementptr inbounds nuw i8, ptr %3, i64 520
  store i64 %9, ptr %67, align 8
  %68 = getelementptr inbounds nuw i8, ptr %3, i64 528
  store i64 %1, ptr %68, align 8
  %69 = getelementptr inbounds nuw i8, ptr %3, i64 536
  store i64 128, ptr %69, align 8
  %70 = getelementptr inbounds nuw i8, ptr %3, i64 544
  store i64 16, ptr %70, align 8
  %71 = getelementptr inbounds nuw i8, ptr %3, i64 552
  store i64 0, ptr %71, align 8
  %72 = getelementptr inbounds nuw i8, ptr %5, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %72, i8 0, i64 128, i1 false)
  %73 = add i64 %2, -4734510112055689544
  %74 = sub i64 2066345149520216444, %2
  %75 = add i64 %2, -2623469361688619810
  %76 = sub i64 2262974939099578482, %2
  %77 = add i64 %2, 8711581037947681227
  %78 = sub i64 2410270004345854594, %2
  %79 = add i64 %2, -8204357891075471176
  %80 = sub i64 5487137525590930912, %2
  %81 = add i64 %2, -3818837453329782724
  %82 = sub i64 -6688317018830679928, %2
  %83 = add i64 %2, 5690594596133299313
  %84 = sub i64 -2833645246901970632, %2
  %85 = add i64 %2, 4554437623014685352
  %86 = sub i64 2111919702937427193, %2
  %87 = add i64 %2, 3556072174620004746
  %88 = sub i64 7238261902898274248, %2
  %89 = add i64 %2, -4329134394285701654
  %90 = sub i64 -1485321483350670907, %2
  %91 = add i64 %2, 5321830579834785047
  %92 = sub i64 -7032137544937171245, %2
  %93 = add i64 %2, -242834301215959509
  %94 = sub i64 -3588858202114426737, %2
  %95 = add i64 %2, 2883454493032893253
  %96 = sub i64 9097354517224871855, %2
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(250) %5, ptr noundef nonnull align 1 dereferenceable(250) %97, i64 250, i1 false)
  %98 = getelementptr inbounds nuw i8, ptr %3, i64 560
  store i64 %73, ptr %98, align 8
  %99 = getelementptr inbounds nuw i8, ptr %3, i64 568
  store i64 %74, ptr %99, align 8
  %100 = getelementptr inbounds nuw i8, ptr %3, i64 576
  store i64 %75, ptr %100, align 8
  %101 = getelementptr inbounds nuw i8, ptr %3, i64 584
  store i64 %76, ptr %101, align 8
  %102 = getelementptr inbounds nuw i8, ptr %3, i64 592
  store i64 %77, ptr %102, align 8
  %103 = getelementptr inbounds nuw i8, ptr %3, i64 600
  store i64 %78, ptr %103, align 8
  %104 = getelementptr inbounds nuw i8, ptr %3, i64 608
  store i64 %79, ptr %104, align 8
  %105 = getelementptr inbounds nuw i8, ptr %3, i64 616
  store i64 %80, ptr %105, align 8
  %106 = getelementptr inbounds nuw i8, ptr %3, i64 624
  store i64 %81, ptr %106, align 8
  %107 = getelementptr inbounds nuw i8, ptr %3, i64 632
  store i64 %82, ptr %107, align 8
  %108 = getelementptr inbounds nuw i8, ptr %3, i64 640
  store i64 %83, ptr %108, align 8
  %109 = getelementptr inbounds nuw i8, ptr %3, i64 648
  store i64 %84, ptr %109, align 8
  %110 = getelementptr inbounds nuw i8, ptr %3, i64 656
  store i64 %85, ptr %110, align 8
  %111 = getelementptr inbounds nuw i8, ptr %3, i64 664
  store i64 %86, ptr %111, align 8
  %112 = getelementptr inbounds nuw i8, ptr %3, i64 672
  store i64 %87, ptr %112, align 8
  %113 = getelementptr inbounds nuw i8, ptr %3, i64 680
  store i64 %88, ptr %113, align 8
  %114 = getelementptr inbounds nuw i8, ptr %3, i64 688
  store i64 %89, ptr %114, align 8
  %115 = getelementptr inbounds nuw i8, ptr %3, i64 696
  store i64 %90, ptr %115, align 8
  %116 = getelementptr inbounds nuw i8, ptr %3, i64 704
  store i64 %91, ptr %116, align 8
  %117 = getelementptr inbounds nuw i8, ptr %3, i64 712
  store i64 %92, ptr %117, align 8
  %118 = getelementptr inbounds nuw i8, ptr %3, i64 720
  store i64 %93, ptr %118, align 8
  %119 = getelementptr inbounds nuw i8, ptr %3, i64 728
  store i64 %94, ptr %119, align 8
  %120 = getelementptr inbounds nuw i8, ptr %3, i64 736
  store i64 %95, ptr %120, align 8
  %121 = getelementptr inbounds nuw i8, ptr %3, i64 744
  store i64 %96, ptr %121, align 8
  %122 = getelementptr inbounds nuw i8, ptr %3, i64 752
  store i64 3266489917, ptr %122, align 8
  %123 = getelementptr inbounds nuw i8, ptr %3, i64 760
  store i64 -7046029288634856825, ptr %123, align 8
  %124 = getelementptr inbounds nuw i8, ptr %3, i64 768
  store i64 -4417276706812531889, ptr %124, align 8
  %125 = getelementptr inbounds nuw i8, ptr %3, i64 776
  store i64 1609587929392839161, ptr %125, align 8
  %126 = getelementptr inbounds nuw i8, ptr %3, i64 784
  store i64 -8796714831421723037, ptr %126, align 8
  %127 = getelementptr inbounds nuw i8, ptr %3, i64 792
  store i64 2246822519, ptr %127, align 8
  %128 = getelementptr inbounds nuw i8, ptr %3, i64 800
  store i64 2870177450012600261, ptr %128, align 8
  %129 = getelementptr inbounds nuw i8, ptr %3, i64 808
  store i64 2654435761, ptr %129, align 8
  %130 = getelementptr inbounds nuw i8, ptr %3, i64 816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %130, ptr noundef nonnull align 64 dereferenceable(256) %5, i64 256, i1 false)
  %131 = getelementptr inbounds nuw i8, ptr %3, i64 1072
  store i64 250, ptr %131, align 8
  %132 = getelementptr inbounds nuw i8, ptr %3, i64 1080
  store i64 250, ptr %132, align 8
  %133 = getelementptr inbounds nuw i8, ptr %3, i64 1088
  store i64 %2, ptr %133, align 8
  %134 = getelementptr inbounds nuw i8, ptr %3, i64 1096
  store i64 128, ptr %134, align 8
  %135 = getelementptr inbounds nuw i8, ptr %3, i64 1104
  store i64 16, ptr %135, align 8
  %136 = getelementptr inbounds nuw i8, ptr %3, i64 1112
  store i64 0, ptr %136, align 8
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %5)
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

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
