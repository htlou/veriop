; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_obs.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_obs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_obs_seed_aba(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly initializes((0, 1680)) %3) local_unnamed_addr #0 {
  %5 = alloca [256 x i8], align 64
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(256) %5, i8 0, i64 256, i1 false)
  %6 = add i64 %1, -4734510112055689544
  %7 = sub i64 2066345149520216444, %1
  %8 = add i64 %1, -2623469361688619810
  %9 = sub i64 2262974939099578482, %1
  %10 = add i64 %1, 8711581037947681227
  %11 = sub i64 2410270004345854594, %1
  %12 = add i64 %1, -8204357891075471176
  %13 = sub i64 5487137525590930912, %1
  %14 = add i64 %1, -3818837453329782724
  %15 = sub i64 -6688317018830679928, %1
  %16 = add i64 %1, 5690594596133299313
  %17 = sub i64 -2833645246901970632, %1
  %18 = add i64 %1, 4554437623014685352
  %19 = sub i64 2111919702937427193, %1
  %20 = add i64 %1, 3556072174620004746
  %21 = sub i64 7238261902898274248, %1
  %22 = add i64 %1, -4329134394285701654
  %23 = sub i64 -1485321483350670907, %1
  %24 = add i64 %1, 5321830579834785047
  %25 = sub i64 -7032137544937171245, %1
  %26 = add i64 %1, -242834301215959509
  %27 = sub i64 -3588858202114426737, %1
  %28 = add i64 %1, 2883454493032893253
  %29 = sub i64 9097354517224871855, %1
  %30 = icmp eq ptr %0, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(10) %5, ptr noundef nonnull align 1 dereferenceable(10) %0, i64 10, i1 false)
  br label %32

32:                                               ; preds = %4, %31
  %33 = phi i64 [ 0, %4 ], [ 10, %31 ]
  store i64 %6, ptr %3, align 8
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %7, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %8, ptr %35, align 8
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %9, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %10, ptr %37, align 8
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %11, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %12, ptr %39, align 8
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %13, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %14, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %15, ptr %42, align 8
  %43 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %16, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %17, ptr %44, align 8
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 %18, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 %19, ptr %46, align 8
  %47 = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 %20, ptr %47, align 8
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 %21, ptr %48, align 8
  %49 = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %22, ptr %49, align 8
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i64 %23, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i64 %24, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i64 %25, ptr %52, align 8
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i64 %26, ptr %53, align 8
  %54 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i64 %27, ptr %54, align 8
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i64 %28, ptr %55, align 8
  %56 = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i64 %29, ptr %56, align 8
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
  store i64 %33, ptr %66, align 8
  %67 = getelementptr inbounds nuw i8, ptr %3, i64 520
  store i64 %33, ptr %67, align 8
  %68 = getelementptr inbounds nuw i8, ptr %3, i64 528
  store i64 %1, ptr %68, align 8
  %69 = getelementptr inbounds nuw i8, ptr %3, i64 536
  store i64 128, ptr %69, align 8
  %70 = getelementptr inbounds nuw i8, ptr %3, i64 544
  store i64 16, ptr %70, align 8
  %71 = getelementptr inbounds nuw i8, ptr %3, i64 552
  store i64 0, ptr %71, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(256) %5, i8 0, i64 256, i1 false)
  %72 = add i64 %2, -4734510112055689544
  %73 = sub i64 2066345149520216444, %2
  %74 = add i64 %2, -2623469361688619810
  %75 = sub i64 2262974939099578482, %2
  %76 = add i64 %2, 8711581037947681227
  %77 = sub i64 2410270004345854594, %2
  %78 = add i64 %2, -8204357891075471176
  %79 = sub i64 5487137525590930912, %2
  %80 = add i64 %2, -3818837453329782724
  %81 = sub i64 -6688317018830679928, %2
  %82 = add i64 %2, 5690594596133299313
  %83 = sub i64 -2833645246901970632, %2
  %84 = add i64 %2, 4554437623014685352
  %85 = sub i64 2111919702937427193, %2
  %86 = add i64 %2, 3556072174620004746
  %87 = sub i64 7238261902898274248, %2
  %88 = add i64 %2, -4329134394285701654
  %89 = sub i64 -1485321483350670907, %2
  %90 = add i64 %2, 5321830579834785047
  %91 = sub i64 -7032137544937171245, %2
  %92 = add i64 %2, -242834301215959509
  %93 = sub i64 -3588858202114426737, %2
  %94 = add i64 %2, 2883454493032893253
  %95 = sub i64 9097354517224871855, %2
  br i1 %30, label %97, label %96

96:                                               ; preds = %32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(10) %5, ptr noundef nonnull align 1 dereferenceable(10) %0, i64 10, i1 false)
  br label %97

97:                                               ; preds = %96, %32
  %98 = phi i64 [ 0, %32 ], [ 10, %96 ]
  %99 = getelementptr inbounds nuw i8, ptr %3, i64 560
  store i64 %72, ptr %99, align 8
  %100 = getelementptr inbounds nuw i8, ptr %3, i64 568
  store i64 %73, ptr %100, align 8
  %101 = getelementptr inbounds nuw i8, ptr %3, i64 576
  store i64 %74, ptr %101, align 8
  %102 = getelementptr inbounds nuw i8, ptr %3, i64 584
  store i64 %75, ptr %102, align 8
  %103 = getelementptr inbounds nuw i8, ptr %3, i64 592
  store i64 %76, ptr %103, align 8
  %104 = getelementptr inbounds nuw i8, ptr %3, i64 600
  store i64 %77, ptr %104, align 8
  %105 = getelementptr inbounds nuw i8, ptr %3, i64 608
  store i64 %78, ptr %105, align 8
  %106 = getelementptr inbounds nuw i8, ptr %3, i64 616
  store i64 %79, ptr %106, align 8
  %107 = getelementptr inbounds nuw i8, ptr %3, i64 624
  store i64 %80, ptr %107, align 8
  %108 = getelementptr inbounds nuw i8, ptr %3, i64 632
  store i64 %81, ptr %108, align 8
  %109 = getelementptr inbounds nuw i8, ptr %3, i64 640
  store i64 %82, ptr %109, align 8
  %110 = getelementptr inbounds nuw i8, ptr %3, i64 648
  store i64 %83, ptr %110, align 8
  %111 = getelementptr inbounds nuw i8, ptr %3, i64 656
  store i64 %84, ptr %111, align 8
  %112 = getelementptr inbounds nuw i8, ptr %3, i64 664
  store i64 %85, ptr %112, align 8
  %113 = getelementptr inbounds nuw i8, ptr %3, i64 672
  store i64 %86, ptr %113, align 8
  %114 = getelementptr inbounds nuw i8, ptr %3, i64 680
  store i64 %87, ptr %114, align 8
  %115 = getelementptr inbounds nuw i8, ptr %3, i64 688
  store i64 %88, ptr %115, align 8
  %116 = getelementptr inbounds nuw i8, ptr %3, i64 696
  store i64 %89, ptr %116, align 8
  %117 = getelementptr inbounds nuw i8, ptr %3, i64 704
  store i64 %90, ptr %117, align 8
  %118 = getelementptr inbounds nuw i8, ptr %3, i64 712
  store i64 %91, ptr %118, align 8
  %119 = getelementptr inbounds nuw i8, ptr %3, i64 720
  store i64 %92, ptr %119, align 8
  %120 = getelementptr inbounds nuw i8, ptr %3, i64 728
  store i64 %93, ptr %120, align 8
  %121 = getelementptr inbounds nuw i8, ptr %3, i64 736
  store i64 %94, ptr %121, align 8
  %122 = getelementptr inbounds nuw i8, ptr %3, i64 744
  store i64 %95, ptr %122, align 8
  %123 = getelementptr inbounds nuw i8, ptr %3, i64 752
  store i64 3266489917, ptr %123, align 8
  %124 = getelementptr inbounds nuw i8, ptr %3, i64 760
  store i64 -7046029288634856825, ptr %124, align 8
  %125 = getelementptr inbounds nuw i8, ptr %3, i64 768
  store i64 -4417276706812531889, ptr %125, align 8
  %126 = getelementptr inbounds nuw i8, ptr %3, i64 776
  store i64 1609587929392839161, ptr %126, align 8
  %127 = getelementptr inbounds nuw i8, ptr %3, i64 784
  store i64 -8796714831421723037, ptr %127, align 8
  %128 = getelementptr inbounds nuw i8, ptr %3, i64 792
  store i64 2246822519, ptr %128, align 8
  %129 = getelementptr inbounds nuw i8, ptr %3, i64 800
  store i64 2870177450012600261, ptr %129, align 8
  %130 = getelementptr inbounds nuw i8, ptr %3, i64 808
  store i64 2654435761, ptr %130, align 8
  %131 = getelementptr inbounds nuw i8, ptr %3, i64 816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %131, ptr noundef nonnull align 64 dereferenceable(256) %5, i64 256, i1 false)
  %132 = getelementptr inbounds nuw i8, ptr %3, i64 1072
  store i64 %98, ptr %132, align 8
  %133 = getelementptr inbounds nuw i8, ptr %3, i64 1080
  store i64 %98, ptr %133, align 8
  %134 = getelementptr inbounds nuw i8, ptr %3, i64 1088
  store i64 %2, ptr %134, align 8
  %135 = getelementptr inbounds nuw i8, ptr %3, i64 1096
  store i64 128, ptr %135, align 8
  %136 = getelementptr inbounds nuw i8, ptr %3, i64 1104
  store i64 16, ptr %136, align 8
  %137 = getelementptr inbounds nuw i8, ptr %3, i64 1112
  store i64 0, ptr %137, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(256) %5, i8 0, i64 256, i1 false)
  br i1 %30, label %139, label %138

138:                                              ; preds = %97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(10) %5, ptr noundef nonnull align 1 dereferenceable(10) %0, i64 10, i1 false)
  br label %139

139:                                              ; preds = %138, %97
  %140 = phi i64 [ 0, %97 ], [ 10, %138 ]
  %141 = getelementptr inbounds nuw i8, ptr %3, i64 1120
  store i64 %6, ptr %141, align 8
  %142 = getelementptr inbounds nuw i8, ptr %3, i64 1128
  store i64 %7, ptr %142, align 8
  %143 = getelementptr inbounds nuw i8, ptr %3, i64 1136
  store i64 %8, ptr %143, align 8
  %144 = getelementptr inbounds nuw i8, ptr %3, i64 1144
  store i64 %9, ptr %144, align 8
  %145 = getelementptr inbounds nuw i8, ptr %3, i64 1152
  store i64 %10, ptr %145, align 8
  %146 = getelementptr inbounds nuw i8, ptr %3, i64 1160
  store i64 %11, ptr %146, align 8
  %147 = getelementptr inbounds nuw i8, ptr %3, i64 1168
  store i64 %12, ptr %147, align 8
  %148 = getelementptr inbounds nuw i8, ptr %3, i64 1176
  store i64 %13, ptr %148, align 8
  %149 = getelementptr inbounds nuw i8, ptr %3, i64 1184
  store i64 %14, ptr %149, align 8
  %150 = getelementptr inbounds nuw i8, ptr %3, i64 1192
  store i64 %15, ptr %150, align 8
  %151 = getelementptr inbounds nuw i8, ptr %3, i64 1200
  store i64 %16, ptr %151, align 8
  %152 = getelementptr inbounds nuw i8, ptr %3, i64 1208
  store i64 %17, ptr %152, align 8
  %153 = getelementptr inbounds nuw i8, ptr %3, i64 1216
  store i64 %18, ptr %153, align 8
  %154 = getelementptr inbounds nuw i8, ptr %3, i64 1224
  store i64 %19, ptr %154, align 8
  %155 = getelementptr inbounds nuw i8, ptr %3, i64 1232
  store i64 %20, ptr %155, align 8
  %156 = getelementptr inbounds nuw i8, ptr %3, i64 1240
  store i64 %21, ptr %156, align 8
  %157 = getelementptr inbounds nuw i8, ptr %3, i64 1248
  store i64 %22, ptr %157, align 8
  %158 = getelementptr inbounds nuw i8, ptr %3, i64 1256
  store i64 %23, ptr %158, align 8
  %159 = getelementptr inbounds nuw i8, ptr %3, i64 1264
  store i64 %24, ptr %159, align 8
  %160 = getelementptr inbounds nuw i8, ptr %3, i64 1272
  store i64 %25, ptr %160, align 8
  %161 = getelementptr inbounds nuw i8, ptr %3, i64 1280
  store i64 %26, ptr %161, align 8
  %162 = getelementptr inbounds nuw i8, ptr %3, i64 1288
  store i64 %27, ptr %162, align 8
  %163 = getelementptr inbounds nuw i8, ptr %3, i64 1296
  store i64 %28, ptr %163, align 8
  %164 = getelementptr inbounds nuw i8, ptr %3, i64 1304
  store i64 %29, ptr %164, align 8
  %165 = getelementptr inbounds nuw i8, ptr %3, i64 1312
  store i64 3266489917, ptr %165, align 8
  %166 = getelementptr inbounds nuw i8, ptr %3, i64 1320
  store i64 -7046029288634856825, ptr %166, align 8
  %167 = getelementptr inbounds nuw i8, ptr %3, i64 1328
  store i64 -4417276706812531889, ptr %167, align 8
  %168 = getelementptr inbounds nuw i8, ptr %3, i64 1336
  store i64 1609587929392839161, ptr %168, align 8
  %169 = getelementptr inbounds nuw i8, ptr %3, i64 1344
  store i64 -8796714831421723037, ptr %169, align 8
  %170 = getelementptr inbounds nuw i8, ptr %3, i64 1352
  store i64 2246822519, ptr %170, align 8
  %171 = getelementptr inbounds nuw i8, ptr %3, i64 1360
  store i64 2870177450012600261, ptr %171, align 8
  %172 = getelementptr inbounds nuw i8, ptr %3, i64 1368
  store i64 2654435761, ptr %172, align 8
  %173 = getelementptr inbounds nuw i8, ptr %3, i64 1376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %173, ptr noundef nonnull align 64 dereferenceable(256) %5, i64 256, i1 false)
  %174 = getelementptr inbounds nuw i8, ptr %3, i64 1632
  store i64 %140, ptr %174, align 8
  %175 = getelementptr inbounds nuw i8, ptr %3, i64 1640
  store i64 %140, ptr %175, align 8
  %176 = getelementptr inbounds nuw i8, ptr %3, i64 1648
  store i64 %1, ptr %176, align 8
  %177 = getelementptr inbounds nuw i8, ptr %3, i64 1656
  store i64 128, ptr %177, align 8
  %178 = getelementptr inbounds nuw i8, ptr %3, i64 1664
  store i64 16, ptr %178, align 8
  %179 = getelementptr inbounds nuw i8, ptr %3, i64 1672
  store i64 0, ptr %179, align 8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5)
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
