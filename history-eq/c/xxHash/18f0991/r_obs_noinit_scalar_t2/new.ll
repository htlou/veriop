; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_obs.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_obs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local void @target_obs_reuse_seed(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly initializes((0, 1120)) %3) local_unnamed_addr #0 {
  %5 = alloca [256 x i8], align 64
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5)
  %6 = icmp eq i64 %1, 0
  tail call void @llvm.assume(i1 %6)
  %7 = icmp eq ptr %0, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(250) %5, ptr noundef nonnull align 1 dereferenceable(250) %0, i64 250, i1 false)
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i64 [ 0, %4 ], [ 250, %8 ]
  store i64 -4734510112055689544, ptr %3, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2066345149520216444, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 -2623469361688619810, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 2262974939099578482, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 8711581037947681227, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 2410270004345854594, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 -8204357891075471176, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 5487137525590930912, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 -3818837453329782724, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 -6688317018830679928, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 5690594596133299313, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 -2833645246901970632, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 4554437623014685352, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 2111919702937427193, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 3556072174620004746, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 7238261902898274248, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 -4329134394285701654, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i64 -1485321483350670907, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i64 5321830579834785047, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i64 -7032137544937171245, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i64 -242834301215959509, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i64 -3588858202114426737, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i64 2883454493032893253, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i64 9097354517224871855, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 192
  store i64 3266489917, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 200
  store i64 -7046029288634856825, ptr %35, align 8
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i64 -4417276706812531889, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 216
  store i64 1609587929392839161, ptr %37, align 8
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 224
  store i64 -8796714831421723037, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 232
  store i64 2246822519, ptr %39, align 8
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 240
  store i64 2870177450012600261, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 248
  store i64 2654435761, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %42, ptr noundef nonnull align 64 dereferenceable(256) %5, i64 256, i1 false)
  %43 = getelementptr inbounds nuw i8, ptr %3, i64 512
  store i64 %10, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 520
  store i64 %10, ptr %44, align 8
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 528
  store i64 0, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 536
  store i64 128, ptr %46, align 8
  %47 = getelementptr inbounds nuw i8, ptr %3, i64 544
  store i64 16, ptr %47, align 8
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 552
  store i64 0, ptr %48, align 8
  %49 = icmp eq i64 %2, 0
  br i1 %49, label %75, label %50

50:                                               ; preds = %9
  %51 = add i64 %2, -4734510112055689544
  %52 = sub i64 2066345149520216444, %2
  %53 = add i64 %2, -2623469361688619810
  %54 = sub i64 2262974939099578482, %2
  %55 = add i64 %2, 8711581037947681227
  %56 = sub i64 2410270004345854594, %2
  %57 = add i64 %2, -8204357891075471176
  %58 = sub i64 5487137525590930912, %2
  %59 = add i64 %2, -3818837453329782724
  %60 = sub i64 -6688317018830679928, %2
  %61 = add i64 %2, 5690594596133299313
  %62 = sub i64 -2833645246901970632, %2
  %63 = add i64 %2, 4554437623014685352
  %64 = sub i64 2111919702937427193, %2
  %65 = add i64 %2, 3556072174620004746
  %66 = sub i64 7238261902898274248, %2
  %67 = add i64 %2, -4329134394285701654
  %68 = sub i64 -1485321483350670907, %2
  %69 = add i64 %2, 5321830579834785047
  %70 = sub i64 -7032137544937171245, %2
  %71 = add i64 %2, -242834301215959509
  %72 = sub i64 -3588858202114426737, %2
  %73 = add i64 %2, 2883454493032893253
  %74 = sub i64 9097354517224871855, %2
  br label %75

75:                                               ; preds = %9, %50
  %76 = phi i64 [ undef, %9 ], [ %74, %50 ]
  %77 = phi i64 [ undef, %9 ], [ %73, %50 ]
  %78 = phi i64 [ undef, %9 ], [ %72, %50 ]
  %79 = phi i64 [ undef, %9 ], [ %71, %50 ]
  %80 = phi i64 [ undef, %9 ], [ %70, %50 ]
  %81 = phi i64 [ undef, %9 ], [ %69, %50 ]
  %82 = phi i64 [ undef, %9 ], [ %68, %50 ]
  %83 = phi i64 [ undef, %9 ], [ %67, %50 ]
  %84 = phi i64 [ undef, %9 ], [ %66, %50 ]
  %85 = phi i64 [ undef, %9 ], [ %65, %50 ]
  %86 = phi i64 [ undef, %9 ], [ %64, %50 ]
  %87 = phi i64 [ undef, %9 ], [ %63, %50 ]
  %88 = phi i64 [ undef, %9 ], [ %62, %50 ]
  %89 = phi i64 [ undef, %9 ], [ %61, %50 ]
  %90 = phi i64 [ undef, %9 ], [ %60, %50 ]
  %91 = phi i64 [ undef, %9 ], [ %59, %50 ]
  %92 = phi i64 [ undef, %9 ], [ %58, %50 ]
  %93 = phi i64 [ undef, %9 ], [ %57, %50 ]
  %94 = phi i64 [ undef, %9 ], [ %56, %50 ]
  %95 = phi i64 [ undef, %9 ], [ %55, %50 ]
  %96 = phi i64 [ undef, %9 ], [ %54, %50 ]
  %97 = phi i64 [ undef, %9 ], [ %53, %50 ]
  %98 = phi i64 [ undef, %9 ], [ %52, %50 ]
  %99 = phi i64 [ undef, %9 ], [ %51, %50 ]
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(250) %5, ptr noundef nonnull align 1 dereferenceable(250) %100, i64 250, i1 false)
  %101 = getelementptr inbounds nuw i8, ptr %3, i64 560
  br i1 %49, label %126, label %102

102:                                              ; preds = %75
  store i64 %99, ptr %101, align 8
  %103 = getelementptr inbounds nuw i8, ptr %3, i64 568
  store i64 %98, ptr %103, align 8
  %104 = getelementptr inbounds nuw i8, ptr %3, i64 576
  store i64 %97, ptr %104, align 8
  %105 = getelementptr inbounds nuw i8, ptr %3, i64 584
  store i64 %96, ptr %105, align 8
  %106 = getelementptr inbounds nuw i8, ptr %3, i64 592
  store i64 %95, ptr %106, align 8
  %107 = getelementptr inbounds nuw i8, ptr %3, i64 600
  store i64 %94, ptr %107, align 8
  %108 = getelementptr inbounds nuw i8, ptr %3, i64 608
  store i64 %93, ptr %108, align 8
  %109 = getelementptr inbounds nuw i8, ptr %3, i64 616
  store i64 %92, ptr %109, align 8
  %110 = getelementptr inbounds nuw i8, ptr %3, i64 624
  store i64 %91, ptr %110, align 8
  %111 = getelementptr inbounds nuw i8, ptr %3, i64 632
  store i64 %90, ptr %111, align 8
  %112 = getelementptr inbounds nuw i8, ptr %3, i64 640
  store i64 %89, ptr %112, align 8
  %113 = getelementptr inbounds nuw i8, ptr %3, i64 648
  store i64 %88, ptr %113, align 8
  %114 = getelementptr inbounds nuw i8, ptr %3, i64 656
  store i64 %87, ptr %114, align 8
  %115 = getelementptr inbounds nuw i8, ptr %3, i64 664
  store i64 %86, ptr %115, align 8
  %116 = getelementptr inbounds nuw i8, ptr %3, i64 672
  store i64 %85, ptr %116, align 8
  %117 = getelementptr inbounds nuw i8, ptr %3, i64 680
  store i64 %84, ptr %117, align 8
  %118 = getelementptr inbounds nuw i8, ptr %3, i64 688
  store i64 %83, ptr %118, align 8
  %119 = getelementptr inbounds nuw i8, ptr %3, i64 696
  store i64 %82, ptr %119, align 8
  %120 = getelementptr inbounds nuw i8, ptr %3, i64 704
  store i64 %81, ptr %120, align 8
  %121 = getelementptr inbounds nuw i8, ptr %3, i64 712
  store i64 %80, ptr %121, align 8
  %122 = getelementptr inbounds nuw i8, ptr %3, i64 720
  store i64 %79, ptr %122, align 8
  %123 = getelementptr inbounds nuw i8, ptr %3, i64 728
  store i64 %78, ptr %123, align 8
  %124 = getelementptr inbounds nuw i8, ptr %3, i64 736
  store i64 %77, ptr %124, align 8
  %125 = getelementptr inbounds nuw i8, ptr %3, i64 744
  store i64 %76, ptr %125, align 8
  br label %150

126:                                              ; preds = %75
  store i64 -4734510112055689544, ptr %101, align 8
  %127 = getelementptr inbounds nuw i8, ptr %3, i64 568
  store i64 2066345149520216444, ptr %127, align 8
  %128 = getelementptr inbounds nuw i8, ptr %3, i64 576
  store i64 -2623469361688619810, ptr %128, align 8
  %129 = getelementptr inbounds nuw i8, ptr %3, i64 584
  store i64 2262974939099578482, ptr %129, align 8
  %130 = getelementptr inbounds nuw i8, ptr %3, i64 592
  store i64 8711581037947681227, ptr %130, align 8
  %131 = getelementptr inbounds nuw i8, ptr %3, i64 600
  store i64 2410270004345854594, ptr %131, align 8
  %132 = getelementptr inbounds nuw i8, ptr %3, i64 608
  store i64 -8204357891075471176, ptr %132, align 8
  %133 = getelementptr inbounds nuw i8, ptr %3, i64 616
  store i64 5487137525590930912, ptr %133, align 8
  %134 = getelementptr inbounds nuw i8, ptr %3, i64 624
  store i64 -3818837453329782724, ptr %134, align 8
  %135 = getelementptr inbounds nuw i8, ptr %3, i64 632
  store i64 -6688317018830679928, ptr %135, align 8
  %136 = getelementptr inbounds nuw i8, ptr %3, i64 640
  store i64 5690594596133299313, ptr %136, align 8
  %137 = getelementptr inbounds nuw i8, ptr %3, i64 648
  store i64 -2833645246901970632, ptr %137, align 8
  %138 = getelementptr inbounds nuw i8, ptr %3, i64 656
  store i64 4554437623014685352, ptr %138, align 8
  %139 = getelementptr inbounds nuw i8, ptr %3, i64 664
  store i64 2111919702937427193, ptr %139, align 8
  %140 = getelementptr inbounds nuw i8, ptr %3, i64 672
  store i64 3556072174620004746, ptr %140, align 8
  %141 = getelementptr inbounds nuw i8, ptr %3, i64 680
  store i64 7238261902898274248, ptr %141, align 8
  %142 = getelementptr inbounds nuw i8, ptr %3, i64 688
  store i64 -4329134394285701654, ptr %142, align 8
  %143 = getelementptr inbounds nuw i8, ptr %3, i64 696
  store i64 -1485321483350670907, ptr %143, align 8
  %144 = getelementptr inbounds nuw i8, ptr %3, i64 704
  store i64 5321830579834785047, ptr %144, align 8
  %145 = getelementptr inbounds nuw i8, ptr %3, i64 712
  store i64 -7032137544937171245, ptr %145, align 8
  %146 = getelementptr inbounds nuw i8, ptr %3, i64 720
  store i64 -242834301215959509, ptr %146, align 8
  %147 = getelementptr inbounds nuw i8, ptr %3, i64 728
  store i64 -3588858202114426737, ptr %147, align 8
  %148 = getelementptr inbounds nuw i8, ptr %3, i64 736
  store i64 2883454493032893253, ptr %148, align 8
  %149 = getelementptr inbounds nuw i8, ptr %3, i64 744
  store i64 9097354517224871855, ptr %149, align 8
  br label %150

150:                                              ; preds = %102, %126
  %151 = getelementptr inbounds nuw i8, ptr %3, i64 752
  store i64 3266489917, ptr %151, align 8
  %152 = getelementptr inbounds nuw i8, ptr %3, i64 760
  store i64 -7046029288634856825, ptr %152, align 8
  %153 = getelementptr inbounds nuw i8, ptr %3, i64 768
  store i64 -4417276706812531889, ptr %153, align 8
  %154 = getelementptr inbounds nuw i8, ptr %3, i64 776
  store i64 1609587929392839161, ptr %154, align 8
  %155 = getelementptr inbounds nuw i8, ptr %3, i64 784
  store i64 -8796714831421723037, ptr %155, align 8
  %156 = getelementptr inbounds nuw i8, ptr %3, i64 792
  store i64 2246822519, ptr %156, align 8
  %157 = getelementptr inbounds nuw i8, ptr %3, i64 800
  store i64 2870177450012600261, ptr %157, align 8
  %158 = getelementptr inbounds nuw i8, ptr %3, i64 808
  store i64 2654435761, ptr %158, align 8
  %159 = getelementptr inbounds nuw i8, ptr %3, i64 816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %159, ptr noundef nonnull align 64 dereferenceable(256) %5, i64 256, i1 false)
  %160 = getelementptr inbounds nuw i8, ptr %3, i64 1072
  store i64 250, ptr %160, align 8
  %161 = getelementptr inbounds nuw i8, ptr %3, i64 1080
  store i64 250, ptr %161, align 8
  %162 = getelementptr inbounds nuw i8, ptr %3, i64 1088
  store i64 %2, ptr %162, align 8
  %163 = getelementptr inbounds nuw i8, ptr %3, i64 1096
  store i64 128, ptr %163, align 8
  %164 = getelementptr inbounds nuw i8, ptr %3, i64 1104
  store i64 16, ptr %164, align 8
  %165 = getelementptr inbounds nuw i8, ptr %3, i64 1112
  store i64 0, ptr %165, align 8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
