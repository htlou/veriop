; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_obs.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_obs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_obs_secret_seed_default(ptr noundef readonly %0, ptr noundef %1, i64 noundef %2, ptr noundef writeonly initializes((0, 1680)) %3) local_unnamed_addr #0 {
  %5 = alloca [256 x i8], align 64
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(256) %5, i8 0, i64 256, i1 false)
  %6 = icmp eq ptr %0, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(250) %5, ptr noundef nonnull align 1 dereferenceable(250) %0, i64 250, i1 false)
  br label %8

8:                                                ; preds = %4, %7
  %9 = phi i64 [ 0, %4 ], [ 250, %7 ]
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %8
  store i64 0, ptr %3, align 8
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 0, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 0, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 0, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 0, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 0, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 0, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 0, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 0, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 0, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 0, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 0, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i64 0, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i64 0, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i64 0, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i64 0, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i64 0, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i64 0, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i64 0, ptr %34, align 8
  br label %62

35:                                               ; preds = %8
  %36 = icmp eq ptr %1, @XXH3_kSecret
  br i1 %36, label %37, label %61

37:                                               ; preds = %35
  store i64 -4734510112055689544, ptr %3, align 8
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2066345149520216444, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 -2623469361688619810, ptr %39, align 8
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 2262974939099578482, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 8711581037947681227, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 2410270004345854594, ptr %42, align 8
  %43 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 -8204357891075471176, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 5487137525590930912, ptr %44, align 8
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 -3818837453329782724, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 -6688317018830679928, ptr %46, align 8
  %47 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 5690594596133299313, ptr %47, align 8
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 -2833645246901970632, ptr %48, align 8
  %49 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 4554437623014685352, ptr %49, align 8
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 2111919702937427193, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 3556072174620004746, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 7238261902898274248, ptr %52, align 8
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 -4329134394285701654, ptr %53, align 8
  %54 = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i64 -1485321483350670907, ptr %54, align 8
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i64 5321830579834785047, ptr %55, align 8
  %56 = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i64 -7032137544937171245, ptr %56, align 8
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i64 -242834301215959509, ptr %57, align 8
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i64 -3588858202114426737, ptr %58, align 8
  %59 = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i64 2883454493032893253, ptr %59, align 8
  %60 = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i64 9097354517224871855, ptr %60, align 8
  br label %62

61:                                               ; preds = %35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %3, ptr noundef nonnull align 1 dereferenceable(192) %1, i64 192, i1 false)
  br label %62

62:                                               ; preds = %11, %37, %61
  %63 = getelementptr inbounds nuw i8, ptr %3, i64 192
  store i64 3266489917, ptr %63, align 8
  %64 = getelementptr inbounds nuw i8, ptr %3, i64 200
  store i64 -7046029288634856825, ptr %64, align 8
  %65 = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i64 -4417276706812531889, ptr %65, align 8
  %66 = getelementptr inbounds nuw i8, ptr %3, i64 216
  store i64 1609587929392839161, ptr %66, align 8
  %67 = getelementptr inbounds nuw i8, ptr %3, i64 224
  store i64 -8796714831421723037, ptr %67, align 8
  %68 = getelementptr inbounds nuw i8, ptr %3, i64 232
  store i64 2246822519, ptr %68, align 8
  %69 = getelementptr inbounds nuw i8, ptr %3, i64 240
  store i64 2870177450012600261, ptr %69, align 8
  %70 = getelementptr inbounds nuw i8, ptr %3, i64 248
  store i64 2654435761, ptr %70, align 8
  %71 = getelementptr inbounds nuw i8, ptr %3, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %71, ptr noundef nonnull align 64 dereferenceable(256) %5, i64 256, i1 false)
  %72 = getelementptr inbounds nuw i8, ptr %3, i64 512
  store i64 %9, ptr %72, align 8
  %73 = getelementptr inbounds nuw i8, ptr %3, i64 520
  store i64 %9, ptr %73, align 8
  %74 = getelementptr inbounds nuw i8, ptr %3, i64 528
  store i64 0, ptr %74, align 8
  %75 = getelementptr inbounds nuw i8, ptr %3, i64 536
  store i64 128, ptr %75, align 8
  %76 = getelementptr inbounds nuw i8, ptr %3, i64 544
  store i64 16, ptr %76, align 8
  %77 = getelementptr inbounds nuw i8, ptr %3, i64 552
  store i64 0, ptr %77, align 8
  %78 = icmp eq i64 %2, 0
  br i1 %78, label %104, label %79

79:                                               ; preds = %62
  %80 = add i64 %2, -4734510112055689544
  %81 = sub i64 2066345149520216444, %2
  %82 = add i64 %2, -2623469361688619810
  %83 = sub i64 2262974939099578482, %2
  %84 = add i64 %2, 8711581037947681227
  %85 = sub i64 2410270004345854594, %2
  %86 = add i64 %2, -8204357891075471176
  %87 = sub i64 5487137525590930912, %2
  %88 = add i64 %2, -3818837453329782724
  %89 = sub i64 -6688317018830679928, %2
  %90 = add i64 %2, 5690594596133299313
  %91 = sub i64 -2833645246901970632, %2
  %92 = add i64 %2, 4554437623014685352
  %93 = sub i64 2111919702937427193, %2
  %94 = add i64 %2, 3556072174620004746
  %95 = sub i64 7238261902898274248, %2
  %96 = add i64 %2, -4329134394285701654
  %97 = sub i64 -1485321483350670907, %2
  %98 = add i64 %2, 5321830579834785047
  %99 = sub i64 -7032137544937171245, %2
  %100 = add i64 %2, -242834301215959509
  %101 = sub i64 -3588858202114426737, %2
  %102 = add i64 %2, 2883454493032893253
  %103 = sub i64 9097354517224871855, %2
  br label %104

104:                                              ; preds = %62, %79
  %105 = phi i64 [ %80, %79 ], [ 0, %62 ]
  %106 = phi i64 [ %81, %79 ], [ 0, %62 ]
  %107 = phi i64 [ %82, %79 ], [ 0, %62 ]
  %108 = phi i64 [ %83, %79 ], [ 0, %62 ]
  %109 = phi i64 [ %84, %79 ], [ 0, %62 ]
  %110 = phi i64 [ %85, %79 ], [ 0, %62 ]
  %111 = phi i64 [ %86, %79 ], [ 0, %62 ]
  %112 = phi i64 [ %87, %79 ], [ 0, %62 ]
  %113 = phi i64 [ %88, %79 ], [ 0, %62 ]
  %114 = phi i64 [ %89, %79 ], [ 0, %62 ]
  %115 = phi i64 [ %90, %79 ], [ 0, %62 ]
  %116 = phi i64 [ %91, %79 ], [ 0, %62 ]
  %117 = phi i64 [ %92, %79 ], [ 0, %62 ]
  %118 = phi i64 [ %93, %79 ], [ 0, %62 ]
  %119 = phi i64 [ %94, %79 ], [ 0, %62 ]
  %120 = phi i64 [ %95, %79 ], [ 0, %62 ]
  %121 = phi i64 [ %96, %79 ], [ 0, %62 ]
  %122 = phi i64 [ %97, %79 ], [ 0, %62 ]
  %123 = phi i64 [ %98, %79 ], [ 0, %62 ]
  %124 = phi i64 [ %99, %79 ], [ 0, %62 ]
  %125 = phi i64 [ %100, %79 ], [ 0, %62 ]
  %126 = phi i64 [ %101, %79 ], [ 0, %62 ]
  %127 = phi i64 [ %102, %79 ], [ 0, %62 ]
  %128 = phi i64 [ %103, %79 ], [ 0, %62 ]
  br i1 %6, label %130, label %129

129:                                              ; preds = %104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(250) %5, ptr noundef nonnull align 1 dereferenceable(250) %0, i64 250, i1 false)
  br label %130

130:                                              ; preds = %104, %129
  %131 = phi i64 [ 0, %104 ], [ 250, %129 ]
  %132 = getelementptr inbounds nuw i8, ptr %3, i64 560
  br i1 %78, label %157, label %133

133:                                              ; preds = %130
  store i64 %105, ptr %132, align 8
  %134 = getelementptr inbounds nuw i8, ptr %3, i64 568
  store i64 %106, ptr %134, align 8
  %135 = getelementptr inbounds nuw i8, ptr %3, i64 576
  store i64 %107, ptr %135, align 8
  %136 = getelementptr inbounds nuw i8, ptr %3, i64 584
  store i64 %108, ptr %136, align 8
  %137 = getelementptr inbounds nuw i8, ptr %3, i64 592
  store i64 %109, ptr %137, align 8
  %138 = getelementptr inbounds nuw i8, ptr %3, i64 600
  store i64 %110, ptr %138, align 8
  %139 = getelementptr inbounds nuw i8, ptr %3, i64 608
  store i64 %111, ptr %139, align 8
  %140 = getelementptr inbounds nuw i8, ptr %3, i64 616
  store i64 %112, ptr %140, align 8
  %141 = getelementptr inbounds nuw i8, ptr %3, i64 624
  store i64 %113, ptr %141, align 8
  %142 = getelementptr inbounds nuw i8, ptr %3, i64 632
  store i64 %114, ptr %142, align 8
  %143 = getelementptr inbounds nuw i8, ptr %3, i64 640
  store i64 %115, ptr %143, align 8
  %144 = getelementptr inbounds nuw i8, ptr %3, i64 648
  store i64 %116, ptr %144, align 8
  %145 = getelementptr inbounds nuw i8, ptr %3, i64 656
  store i64 %117, ptr %145, align 8
  %146 = getelementptr inbounds nuw i8, ptr %3, i64 664
  store i64 %118, ptr %146, align 8
  %147 = getelementptr inbounds nuw i8, ptr %3, i64 672
  store i64 %119, ptr %147, align 8
  %148 = getelementptr inbounds nuw i8, ptr %3, i64 680
  store i64 %120, ptr %148, align 8
  %149 = getelementptr inbounds nuw i8, ptr %3, i64 688
  store i64 %121, ptr %149, align 8
  %150 = getelementptr inbounds nuw i8, ptr %3, i64 696
  store i64 %122, ptr %150, align 8
  %151 = getelementptr inbounds nuw i8, ptr %3, i64 704
  store i64 %123, ptr %151, align 8
  %152 = getelementptr inbounds nuw i8, ptr %3, i64 712
  store i64 %124, ptr %152, align 8
  %153 = getelementptr inbounds nuw i8, ptr %3, i64 720
  store i64 %125, ptr %153, align 8
  %154 = getelementptr inbounds nuw i8, ptr %3, i64 728
  store i64 %126, ptr %154, align 8
  %155 = getelementptr inbounds nuw i8, ptr %3, i64 736
  store i64 %127, ptr %155, align 8
  %156 = getelementptr inbounds nuw i8, ptr %3, i64 744
  store i64 %128, ptr %156, align 8
  br label %181

157:                                              ; preds = %130
  store i64 -4734510112055689544, ptr %132, align 8
  %158 = getelementptr inbounds nuw i8, ptr %3, i64 568
  store i64 2066345149520216444, ptr %158, align 8
  %159 = getelementptr inbounds nuw i8, ptr %3, i64 576
  store i64 -2623469361688619810, ptr %159, align 8
  %160 = getelementptr inbounds nuw i8, ptr %3, i64 584
  store i64 2262974939099578482, ptr %160, align 8
  %161 = getelementptr inbounds nuw i8, ptr %3, i64 592
  store i64 8711581037947681227, ptr %161, align 8
  %162 = getelementptr inbounds nuw i8, ptr %3, i64 600
  store i64 2410270004345854594, ptr %162, align 8
  %163 = getelementptr inbounds nuw i8, ptr %3, i64 608
  store i64 -8204357891075471176, ptr %163, align 8
  %164 = getelementptr inbounds nuw i8, ptr %3, i64 616
  store i64 5487137525590930912, ptr %164, align 8
  %165 = getelementptr inbounds nuw i8, ptr %3, i64 624
  store i64 -3818837453329782724, ptr %165, align 8
  %166 = getelementptr inbounds nuw i8, ptr %3, i64 632
  store i64 -6688317018830679928, ptr %166, align 8
  %167 = getelementptr inbounds nuw i8, ptr %3, i64 640
  store i64 5690594596133299313, ptr %167, align 8
  %168 = getelementptr inbounds nuw i8, ptr %3, i64 648
  store i64 -2833645246901970632, ptr %168, align 8
  %169 = getelementptr inbounds nuw i8, ptr %3, i64 656
  store i64 4554437623014685352, ptr %169, align 8
  %170 = getelementptr inbounds nuw i8, ptr %3, i64 664
  store i64 2111919702937427193, ptr %170, align 8
  %171 = getelementptr inbounds nuw i8, ptr %3, i64 672
  store i64 3556072174620004746, ptr %171, align 8
  %172 = getelementptr inbounds nuw i8, ptr %3, i64 680
  store i64 7238261902898274248, ptr %172, align 8
  %173 = getelementptr inbounds nuw i8, ptr %3, i64 688
  store i64 -4329134394285701654, ptr %173, align 8
  %174 = getelementptr inbounds nuw i8, ptr %3, i64 696
  store i64 -1485321483350670907, ptr %174, align 8
  %175 = getelementptr inbounds nuw i8, ptr %3, i64 704
  store i64 5321830579834785047, ptr %175, align 8
  %176 = getelementptr inbounds nuw i8, ptr %3, i64 712
  store i64 -7032137544937171245, ptr %176, align 8
  %177 = getelementptr inbounds nuw i8, ptr %3, i64 720
  store i64 -242834301215959509, ptr %177, align 8
  %178 = getelementptr inbounds nuw i8, ptr %3, i64 728
  store i64 -3588858202114426737, ptr %178, align 8
  %179 = getelementptr inbounds nuw i8, ptr %3, i64 736
  store i64 2883454493032893253, ptr %179, align 8
  %180 = getelementptr inbounds nuw i8, ptr %3, i64 744
  store i64 9097354517224871855, ptr %180, align 8
  br label %181

181:                                              ; preds = %133, %157
  %182 = getelementptr inbounds nuw i8, ptr %3, i64 752
  store i64 3266489917, ptr %182, align 8
  %183 = getelementptr inbounds nuw i8, ptr %3, i64 760
  store i64 -7046029288634856825, ptr %183, align 8
  %184 = getelementptr inbounds nuw i8, ptr %3, i64 768
  store i64 -4417276706812531889, ptr %184, align 8
  %185 = getelementptr inbounds nuw i8, ptr %3, i64 776
  store i64 1609587929392839161, ptr %185, align 8
  %186 = getelementptr inbounds nuw i8, ptr %3, i64 784
  store i64 -8796714831421723037, ptr %186, align 8
  %187 = getelementptr inbounds nuw i8, ptr %3, i64 792
  store i64 2246822519, ptr %187, align 8
  %188 = getelementptr inbounds nuw i8, ptr %3, i64 800
  store i64 2870177450012600261, ptr %188, align 8
  %189 = getelementptr inbounds nuw i8, ptr %3, i64 808
  store i64 2654435761, ptr %189, align 8
  %190 = getelementptr inbounds nuw i8, ptr %3, i64 816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %190, ptr noundef nonnull align 64 dereferenceable(256) %5, i64 256, i1 false)
  %191 = getelementptr inbounds nuw i8, ptr %3, i64 1072
  store i64 %131, ptr %191, align 8
  %192 = getelementptr inbounds nuw i8, ptr %3, i64 1080
  store i64 %131, ptr %192, align 8
  %193 = getelementptr inbounds nuw i8, ptr %3, i64 1088
  store i64 %2, ptr %193, align 8
  %194 = getelementptr inbounds nuw i8, ptr %3, i64 1096
  store i64 128, ptr %194, align 8
  %195 = getelementptr inbounds nuw i8, ptr %3, i64 1104
  store i64 16, ptr %195, align 8
  %196 = getelementptr inbounds nuw i8, ptr %3, i64 1112
  store i64 0, ptr %196, align 8
  br i1 %6, label %198, label %197

197:                                              ; preds = %181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(100) %5, ptr noundef nonnull align 1 dereferenceable(100) %0, i64 100, i1 false)
  br label %198

198:                                              ; preds = %197, %181
  %199 = phi i64 [ 0, %181 ], [ 100, %197 ]
  %200 = getelementptr inbounds nuw i8, ptr %3, i64 1120
  store i64 -4734510112055689544, ptr %200, align 8
  %201 = getelementptr inbounds nuw i8, ptr %3, i64 1128
  store i64 2066345149520216444, ptr %201, align 8
  %202 = getelementptr inbounds nuw i8, ptr %3, i64 1136
  store i64 -2623469361688619810, ptr %202, align 8
  %203 = getelementptr inbounds nuw i8, ptr %3, i64 1144
  store i64 2262974939099578482, ptr %203, align 8
  %204 = getelementptr inbounds nuw i8, ptr %3, i64 1152
  store i64 8711581037947681227, ptr %204, align 8
  %205 = getelementptr inbounds nuw i8, ptr %3, i64 1160
  store i64 2410270004345854594, ptr %205, align 8
  %206 = getelementptr inbounds nuw i8, ptr %3, i64 1168
  store i64 -8204357891075471176, ptr %206, align 8
  %207 = getelementptr inbounds nuw i8, ptr %3, i64 1176
  store i64 5487137525590930912, ptr %207, align 8
  %208 = getelementptr inbounds nuw i8, ptr %3, i64 1184
  store i64 -3818837453329782724, ptr %208, align 8
  %209 = getelementptr inbounds nuw i8, ptr %3, i64 1192
  store i64 -6688317018830679928, ptr %209, align 8
  %210 = getelementptr inbounds nuw i8, ptr %3, i64 1200
  store i64 5690594596133299313, ptr %210, align 8
  %211 = getelementptr inbounds nuw i8, ptr %3, i64 1208
  store i64 -2833645246901970632, ptr %211, align 8
  %212 = getelementptr inbounds nuw i8, ptr %3, i64 1216
  store i64 4554437623014685352, ptr %212, align 8
  %213 = getelementptr inbounds nuw i8, ptr %3, i64 1224
  store i64 2111919702937427193, ptr %213, align 8
  %214 = getelementptr inbounds nuw i8, ptr %3, i64 1232
  store i64 3556072174620004746, ptr %214, align 8
  %215 = getelementptr inbounds nuw i8, ptr %3, i64 1240
  store i64 7238261902898274248, ptr %215, align 8
  %216 = getelementptr inbounds nuw i8, ptr %3, i64 1248
  store i64 -4329134394285701654, ptr %216, align 8
  %217 = getelementptr inbounds nuw i8, ptr %3, i64 1256
  store i64 -1485321483350670907, ptr %217, align 8
  %218 = getelementptr inbounds nuw i8, ptr %3, i64 1264
  store i64 5321830579834785047, ptr %218, align 8
  %219 = getelementptr inbounds nuw i8, ptr %3, i64 1272
  store i64 -7032137544937171245, ptr %219, align 8
  %220 = getelementptr inbounds nuw i8, ptr %3, i64 1280
  store i64 -242834301215959509, ptr %220, align 8
  %221 = getelementptr inbounds nuw i8, ptr %3, i64 1288
  store i64 -3588858202114426737, ptr %221, align 8
  %222 = getelementptr inbounds nuw i8, ptr %3, i64 1296
  store i64 2883454493032893253, ptr %222, align 8
  %223 = getelementptr inbounds nuw i8, ptr %3, i64 1304
  store i64 9097354517224871855, ptr %223, align 8
  %224 = getelementptr inbounds nuw i8, ptr %3, i64 1312
  store i64 3266489917, ptr %224, align 8
  %225 = getelementptr inbounds nuw i8, ptr %3, i64 1320
  store i64 -7046029288634856825, ptr %225, align 8
  %226 = getelementptr inbounds nuw i8, ptr %3, i64 1328
  store i64 -4417276706812531889, ptr %226, align 8
  %227 = getelementptr inbounds nuw i8, ptr %3, i64 1336
  store i64 1609587929392839161, ptr %227, align 8
  %228 = getelementptr inbounds nuw i8, ptr %3, i64 1344
  store i64 -8796714831421723037, ptr %228, align 8
  %229 = getelementptr inbounds nuw i8, ptr %3, i64 1352
  store i64 2246822519, ptr %229, align 8
  %230 = getelementptr inbounds nuw i8, ptr %3, i64 1360
  store i64 2870177450012600261, ptr %230, align 8
  %231 = getelementptr inbounds nuw i8, ptr %3, i64 1368
  store i64 2654435761, ptr %231, align 8
  %232 = getelementptr inbounds nuw i8, ptr %3, i64 1376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %232, ptr noundef nonnull align 64 dereferenceable(256) %5, i64 256, i1 false)
  %233 = getelementptr inbounds nuw i8, ptr %3, i64 1632
  store i64 %199, ptr %233, align 8
  %234 = getelementptr inbounds nuw i8, ptr %3, i64 1640
  store i64 %199, ptr %234, align 8
  %235 = getelementptr inbounds nuw i8, ptr %3, i64 1648
  store i64 0, ptr %235, align 8
  %236 = getelementptr inbounds nuw i8, ptr %3, i64 1656
  store i64 128, ptr %236, align 8
  %237 = getelementptr inbounds nuw i8, ptr %3, i64 1664
  store i64 16, ptr %237, align 8
  %238 = getelementptr inbounds nuw i8, ptr %3, i64 1672
  store i64 0, ptr %238, align 8
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
