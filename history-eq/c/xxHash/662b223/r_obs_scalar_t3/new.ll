; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/662b223/wrap_obs.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/662b223/wrap_obs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_obs_default_then_seed(ptr noundef readonly %0, i64 noundef %1, ptr noundef writeonly initializes((0, 1120)) %2) local_unnamed_addr #0 {
  %4 = alloca [256 x i8], align 64
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(256) %4, i8 0, i64 256, i1 false)
  %5 = icmp eq ptr %0, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(250) %4, ptr noundef nonnull align 1 dereferenceable(250) %0, i64 250, i1 false)
  br label %7

7:                                                ; preds = %3, %6
  %8 = phi i64 [ 0, %3 ], [ 250, %6 ]
  store i64 -4734510112055689544, ptr %2, align 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2066345149520216444, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 -2623469361688619810, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 2262974939099578482, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 8711581037947681227, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 2410270004345854594, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 -8204357891075471176, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 5487137525590930912, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 -3818837453329782724, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 -6688317018830679928, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 5690594596133299313, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 -2833645246901970632, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i64 4554437623014685352, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 2111919702937427193, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i64 3556072174620004746, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i64 7238261902898274248, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i64 -4329134394285701654, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i64 -1485321483350670907, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 144
  store i64 5321830579834785047, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 152
  store i64 -7032137544937171245, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %2, i64 160
  store i64 -242834301215959509, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i64 -3588858202114426737, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 176
  store i64 2883454493032893253, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 184
  store i64 9097354517224871855, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 192
  store i64 3266489917, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 200
  store i64 -7046029288634856825, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 208
  store i64 -4417276706812531889, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 216
  store i64 1609587929392839161, ptr %35, align 8
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 224
  store i64 -8796714831421723037, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 232
  store i64 2246822519, ptr %37, align 8
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 240
  store i64 2870177450012600261, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 248
  store i64 2654435761, ptr %39, align 8
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %40, ptr noundef nonnull align 64 dereferenceable(256) %4, i64 256, i1 false)
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 512
  store i64 %8, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 520
  store i64 %8, ptr %42, align 8
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 528
  store i64 0, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 536
  store i64 128, ptr %44, align 8
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 544
  store i64 16, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 552
  store i64 0, ptr %46, align 8
  %47 = icmp eq i64 %1, 0
  br i1 %47, label %73, label %48

48:                                               ; preds = %7
  %49 = add i64 %1, -4734510112055689544
  %50 = sub i64 2066345149520216444, %1
  %51 = add i64 %1, -2623469361688619810
  %52 = sub i64 2262974939099578482, %1
  %53 = add i64 %1, 8711581037947681227
  %54 = sub i64 2410270004345854594, %1
  %55 = add i64 %1, -8204357891075471176
  %56 = sub i64 5487137525590930912, %1
  %57 = add i64 %1, -3818837453329782724
  %58 = sub i64 -6688317018830679928, %1
  %59 = add i64 %1, 5690594596133299313
  %60 = sub i64 -2833645246901970632, %1
  %61 = add i64 %1, 4554437623014685352
  %62 = sub i64 2111919702937427193, %1
  %63 = add i64 %1, 3556072174620004746
  %64 = sub i64 7238261902898274248, %1
  %65 = add i64 %1, -4329134394285701654
  %66 = sub i64 -1485321483350670907, %1
  %67 = add i64 %1, 5321830579834785047
  %68 = sub i64 -7032137544937171245, %1
  %69 = add i64 %1, -242834301215959509
  %70 = sub i64 -3588858202114426737, %1
  %71 = add i64 %1, 2883454493032893253
  %72 = sub i64 9097354517224871855, %1
  br label %73

73:                                               ; preds = %7, %48
  %74 = phi i64 [ 0, %7 ], [ %49, %48 ]
  %75 = phi i64 [ 0, %7 ], [ %50, %48 ]
  %76 = phi i64 [ 0, %7 ], [ %51, %48 ]
  %77 = phi i64 [ 0, %7 ], [ %52, %48 ]
  %78 = phi i64 [ 0, %7 ], [ %53, %48 ]
  %79 = phi i64 [ 0, %7 ], [ %54, %48 ]
  %80 = phi i64 [ 0, %7 ], [ %55, %48 ]
  %81 = phi i64 [ 0, %7 ], [ %56, %48 ]
  %82 = phi i64 [ 0, %7 ], [ %57, %48 ]
  %83 = phi i64 [ 0, %7 ], [ %58, %48 ]
  %84 = phi i64 [ 0, %7 ], [ %59, %48 ]
  %85 = phi i64 [ 0, %7 ], [ %60, %48 ]
  %86 = phi i64 [ 0, %7 ], [ %61, %48 ]
  %87 = phi i64 [ 0, %7 ], [ %62, %48 ]
  %88 = phi i64 [ 0, %7 ], [ %63, %48 ]
  %89 = phi i64 [ 0, %7 ], [ %64, %48 ]
  %90 = phi i64 [ 0, %7 ], [ %65, %48 ]
  %91 = phi i64 [ 0, %7 ], [ %66, %48 ]
  %92 = phi i64 [ 0, %7 ], [ %67, %48 ]
  %93 = phi i64 [ 0, %7 ], [ %68, %48 ]
  %94 = phi i64 [ 0, %7 ], [ %69, %48 ]
  %95 = phi i64 [ 0, %7 ], [ %70, %48 ]
  %96 = phi i64 [ 0, %7 ], [ %71, %48 ]
  %97 = phi i64 [ 0, %7 ], [ %72, %48 ]
  br i1 %5, label %99, label %98

98:                                               ; preds = %73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(250) %4, ptr noundef nonnull align 1 dereferenceable(250) %0, i64 250, i1 false)
  br label %99

99:                                               ; preds = %73, %98
  %100 = phi i64 [ 0, %73 ], [ 250, %98 ]
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 560
  br i1 %47, label %126, label %102

102:                                              ; preds = %99
  store i64 %74, ptr %101, align 8
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 568
  store i64 %75, ptr %103, align 8
  %104 = getelementptr inbounds nuw i8, ptr %2, i64 576
  store i64 %76, ptr %104, align 8
  %105 = getelementptr inbounds nuw i8, ptr %2, i64 584
  store i64 %77, ptr %105, align 8
  %106 = getelementptr inbounds nuw i8, ptr %2, i64 592
  store i64 %78, ptr %106, align 8
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 600
  store i64 %79, ptr %107, align 8
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 608
  store i64 %80, ptr %108, align 8
  %109 = getelementptr inbounds nuw i8, ptr %2, i64 616
  store i64 %81, ptr %109, align 8
  %110 = getelementptr inbounds nuw i8, ptr %2, i64 624
  store i64 %82, ptr %110, align 8
  %111 = getelementptr inbounds nuw i8, ptr %2, i64 632
  store i64 %83, ptr %111, align 8
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 640
  store i64 %84, ptr %112, align 8
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 648
  store i64 %85, ptr %113, align 8
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 656
  store i64 %86, ptr %114, align 8
  %115 = getelementptr inbounds nuw i8, ptr %2, i64 664
  store i64 %87, ptr %115, align 8
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 672
  store i64 %88, ptr %116, align 8
  %117 = getelementptr inbounds nuw i8, ptr %2, i64 680
  store i64 %89, ptr %117, align 8
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 688
  store i64 %90, ptr %118, align 8
  %119 = getelementptr inbounds nuw i8, ptr %2, i64 696
  store i64 %91, ptr %119, align 8
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 704
  store i64 %92, ptr %120, align 8
  %121 = getelementptr inbounds nuw i8, ptr %2, i64 712
  store i64 %93, ptr %121, align 8
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 720
  store i64 %94, ptr %122, align 8
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 728
  store i64 %95, ptr %123, align 8
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 736
  store i64 %96, ptr %124, align 8
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 744
  store i64 %97, ptr %125, align 8
  br label %150

126:                                              ; preds = %99
  store i64 -4734510112055689544, ptr %101, align 8
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 568
  store i64 2066345149520216444, ptr %127, align 8
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 576
  store i64 -2623469361688619810, ptr %128, align 8
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 584
  store i64 2262974939099578482, ptr %129, align 8
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 592
  store i64 8711581037947681227, ptr %130, align 8
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 600
  store i64 2410270004345854594, ptr %131, align 8
  %132 = getelementptr inbounds nuw i8, ptr %2, i64 608
  store i64 -8204357891075471176, ptr %132, align 8
  %133 = getelementptr inbounds nuw i8, ptr %2, i64 616
  store i64 5487137525590930912, ptr %133, align 8
  %134 = getelementptr inbounds nuw i8, ptr %2, i64 624
  store i64 -3818837453329782724, ptr %134, align 8
  %135 = getelementptr inbounds nuw i8, ptr %2, i64 632
  store i64 -6688317018830679928, ptr %135, align 8
  %136 = getelementptr inbounds nuw i8, ptr %2, i64 640
  store i64 5690594596133299313, ptr %136, align 8
  %137 = getelementptr inbounds nuw i8, ptr %2, i64 648
  store i64 -2833645246901970632, ptr %137, align 8
  %138 = getelementptr inbounds nuw i8, ptr %2, i64 656
  store i64 4554437623014685352, ptr %138, align 8
  %139 = getelementptr inbounds nuw i8, ptr %2, i64 664
  store i64 2111919702937427193, ptr %139, align 8
  %140 = getelementptr inbounds nuw i8, ptr %2, i64 672
  store i64 3556072174620004746, ptr %140, align 8
  %141 = getelementptr inbounds nuw i8, ptr %2, i64 680
  store i64 7238261902898274248, ptr %141, align 8
  %142 = getelementptr inbounds nuw i8, ptr %2, i64 688
  store i64 -4329134394285701654, ptr %142, align 8
  %143 = getelementptr inbounds nuw i8, ptr %2, i64 696
  store i64 -1485321483350670907, ptr %143, align 8
  %144 = getelementptr inbounds nuw i8, ptr %2, i64 704
  store i64 5321830579834785047, ptr %144, align 8
  %145 = getelementptr inbounds nuw i8, ptr %2, i64 712
  store i64 -7032137544937171245, ptr %145, align 8
  %146 = getelementptr inbounds nuw i8, ptr %2, i64 720
  store i64 -242834301215959509, ptr %146, align 8
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 728
  store i64 -3588858202114426737, ptr %147, align 8
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 736
  store i64 2883454493032893253, ptr %148, align 8
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 744
  store i64 9097354517224871855, ptr %149, align 8
  br label %150

150:                                              ; preds = %102, %126
  %151 = getelementptr inbounds nuw i8, ptr %2, i64 752
  store i64 3266489917, ptr %151, align 8
  %152 = getelementptr inbounds nuw i8, ptr %2, i64 760
  store i64 -7046029288634856825, ptr %152, align 8
  %153 = getelementptr inbounds nuw i8, ptr %2, i64 768
  store i64 -4417276706812531889, ptr %153, align 8
  %154 = getelementptr inbounds nuw i8, ptr %2, i64 776
  store i64 1609587929392839161, ptr %154, align 8
  %155 = getelementptr inbounds nuw i8, ptr %2, i64 784
  store i64 -8796714831421723037, ptr %155, align 8
  %156 = getelementptr inbounds nuw i8, ptr %2, i64 792
  store i64 2246822519, ptr %156, align 8
  %157 = getelementptr inbounds nuw i8, ptr %2, i64 800
  store i64 2870177450012600261, ptr %157, align 8
  %158 = getelementptr inbounds nuw i8, ptr %2, i64 808
  store i64 2654435761, ptr %158, align 8
  %159 = getelementptr inbounds nuw i8, ptr %2, i64 816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %159, ptr noundef nonnull align 64 dereferenceable(256) %4, i64 256, i1 false)
  %160 = getelementptr inbounds nuw i8, ptr %2, i64 1072
  store i64 %100, ptr %160, align 8
  %161 = getelementptr inbounds nuw i8, ptr %2, i64 1080
  store i64 %100, ptr %161, align 8
  %162 = getelementptr inbounds nuw i8, ptr %2, i64 1088
  store i64 %1, ptr %162, align 8
  %163 = getelementptr inbounds nuw i8, ptr %2, i64 1096
  store i64 128, ptr %163, align 8
  %164 = getelementptr inbounds nuw i8, ptr %2, i64 1104
  store i64 16, ptr %164, align 8
  %165 = getelementptr inbounds nuw i8, ptr %2, i64 1112
  store i64 0, ptr %165, align 8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4)
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
