; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_obs.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_obs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_obs_seed_aba(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly initializes((0, 1680)) %3) local_unnamed_addr #0 {
  %5 = alloca [256 x i8], align 64
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(256) %5, i8 0, i64 256, i1 false)
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %4
  %8 = add i64 %1, -4734510112055689544
  %9 = sub i64 2066345149520216444, %1
  %10 = add i64 %1, -2623469361688619810
  %11 = sub i64 2262974939099578482, %1
  %12 = add i64 %1, 8711581037947681227
  %13 = sub i64 2410270004345854594, %1
  %14 = add i64 %1, -8204357891075471176
  %15 = sub i64 5487137525590930912, %1
  %16 = add i64 %1, -3818837453329782724
  %17 = sub i64 -6688317018830679928, %1
  %18 = add i64 %1, 5690594596133299313
  %19 = sub i64 -2833645246901970632, %1
  %20 = add i64 %1, 4554437623014685352
  %21 = sub i64 2111919702937427193, %1
  %22 = add i64 %1, 3556072174620004746
  %23 = sub i64 7238261902898274248, %1
  %24 = add i64 %1, -4329134394285701654
  %25 = sub i64 -1485321483350670907, %1
  %26 = add i64 %1, 5321830579834785047
  %27 = sub i64 -7032137544937171245, %1
  %28 = add i64 %1, -242834301215959509
  %29 = sub i64 -3588858202114426737, %1
  %30 = add i64 %1, 2883454493032893253
  %31 = sub i64 9097354517224871855, %1
  br label %32

32:                                               ; preds = %4, %7
  %33 = phi i64 [ %8, %7 ], [ 0, %4 ]
  %34 = phi i64 [ %9, %7 ], [ 0, %4 ]
  %35 = phi i64 [ %10, %7 ], [ 0, %4 ]
  %36 = phi i64 [ %11, %7 ], [ 0, %4 ]
  %37 = phi i64 [ %12, %7 ], [ 0, %4 ]
  %38 = phi i64 [ %13, %7 ], [ 0, %4 ]
  %39 = phi i64 [ %14, %7 ], [ 0, %4 ]
  %40 = phi i64 [ %15, %7 ], [ 0, %4 ]
  %41 = phi i64 [ %16, %7 ], [ 0, %4 ]
  %42 = phi i64 [ %17, %7 ], [ 0, %4 ]
  %43 = phi i64 [ %18, %7 ], [ 0, %4 ]
  %44 = phi i64 [ %19, %7 ], [ 0, %4 ]
  %45 = phi i64 [ %20, %7 ], [ 0, %4 ]
  %46 = phi i64 [ %21, %7 ], [ 0, %4 ]
  %47 = phi i64 [ %22, %7 ], [ 0, %4 ]
  %48 = phi i64 [ %23, %7 ], [ 0, %4 ]
  %49 = phi i64 [ %24, %7 ], [ 0, %4 ]
  %50 = phi i64 [ %25, %7 ], [ 0, %4 ]
  %51 = phi i64 [ %26, %7 ], [ 0, %4 ]
  %52 = phi i64 [ %27, %7 ], [ 0, %4 ]
  %53 = phi i64 [ %28, %7 ], [ 0, %4 ]
  %54 = phi i64 [ %29, %7 ], [ 0, %4 ]
  %55 = phi i64 [ %30, %7 ], [ 0, %4 ]
  %56 = phi i64 [ %31, %7 ], [ 0, %4 ]
  %57 = icmp eq ptr %0, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(10) %5, ptr noundef nonnull align 1 dereferenceable(10) %0, i64 10, i1 false)
  br label %59

59:                                               ; preds = %32, %58
  %60 = phi i64 [ 0, %32 ], [ 10, %58 ]
  br i1 %6, label %85, label %61

61:                                               ; preds = %59
  store i64 %33, ptr %3, align 8
  %62 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %34, ptr %62, align 8
  %63 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %35, ptr %63, align 8
  %64 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %36, ptr %64, align 8
  %65 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %37, ptr %65, align 8
  %66 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %38, ptr %66, align 8
  %67 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %39, ptr %67, align 8
  %68 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %40, ptr %68, align 8
  %69 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %41, ptr %69, align 8
  %70 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %42, ptr %70, align 8
  %71 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %43, ptr %71, align 8
  %72 = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %44, ptr %72, align 8
  %73 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 %45, ptr %73, align 8
  %74 = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 %46, ptr %74, align 8
  %75 = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 %47, ptr %75, align 8
  %76 = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 %48, ptr %76, align 8
  %77 = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %49, ptr %77, align 8
  %78 = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i64 %50, ptr %78, align 8
  %79 = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i64 %51, ptr %79, align 8
  %80 = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i64 %52, ptr %80, align 8
  %81 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i64 %53, ptr %81, align 8
  %82 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i64 %54, ptr %82, align 8
  %83 = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i64 %55, ptr %83, align 8
  %84 = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i64 %56, ptr %84, align 8
  br label %109

85:                                               ; preds = %59
  store i64 -4734510112055689544, ptr %3, align 8
  %86 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2066345149520216444, ptr %86, align 8
  %87 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 -2623469361688619810, ptr %87, align 8
  %88 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 2262974939099578482, ptr %88, align 8
  %89 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 8711581037947681227, ptr %89, align 8
  %90 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 2410270004345854594, ptr %90, align 8
  %91 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 -8204357891075471176, ptr %91, align 8
  %92 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 5487137525590930912, ptr %92, align 8
  %93 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 -3818837453329782724, ptr %93, align 8
  %94 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 -6688317018830679928, ptr %94, align 8
  %95 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 5690594596133299313, ptr %95, align 8
  %96 = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 -2833645246901970632, ptr %96, align 8
  %97 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 4554437623014685352, ptr %97, align 8
  %98 = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 2111919702937427193, ptr %98, align 8
  %99 = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 3556072174620004746, ptr %99, align 8
  %100 = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 7238261902898274248, ptr %100, align 8
  %101 = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 -4329134394285701654, ptr %101, align 8
  %102 = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i64 -1485321483350670907, ptr %102, align 8
  %103 = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i64 5321830579834785047, ptr %103, align 8
  %104 = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i64 -7032137544937171245, ptr %104, align 8
  %105 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i64 -242834301215959509, ptr %105, align 8
  %106 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i64 -3588858202114426737, ptr %106, align 8
  %107 = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i64 2883454493032893253, ptr %107, align 8
  %108 = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i64 9097354517224871855, ptr %108, align 8
  br label %109

109:                                              ; preds = %61, %85
  %110 = getelementptr inbounds nuw i8, ptr %3, i64 192
  store i64 3266489917, ptr %110, align 8
  %111 = getelementptr inbounds nuw i8, ptr %3, i64 200
  store i64 -7046029288634856825, ptr %111, align 8
  %112 = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i64 -4417276706812531889, ptr %112, align 8
  %113 = getelementptr inbounds nuw i8, ptr %3, i64 216
  store i64 1609587929392839161, ptr %113, align 8
  %114 = getelementptr inbounds nuw i8, ptr %3, i64 224
  store i64 -8796714831421723037, ptr %114, align 8
  %115 = getelementptr inbounds nuw i8, ptr %3, i64 232
  store i64 2246822519, ptr %115, align 8
  %116 = getelementptr inbounds nuw i8, ptr %3, i64 240
  store i64 2870177450012600261, ptr %116, align 8
  %117 = getelementptr inbounds nuw i8, ptr %3, i64 248
  store i64 2654435761, ptr %117, align 8
  %118 = getelementptr inbounds nuw i8, ptr %3, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %118, ptr noundef nonnull align 64 dereferenceable(256) %5, i64 256, i1 false)
  %119 = getelementptr inbounds nuw i8, ptr %3, i64 512
  store i64 %60, ptr %119, align 8
  %120 = getelementptr inbounds nuw i8, ptr %3, i64 520
  store i64 %60, ptr %120, align 8
  %121 = getelementptr inbounds nuw i8, ptr %3, i64 528
  store i64 %1, ptr %121, align 8
  %122 = getelementptr inbounds nuw i8, ptr %3, i64 536
  store i64 128, ptr %122, align 8
  %123 = getelementptr inbounds nuw i8, ptr %3, i64 544
  store i64 16, ptr %123, align 8
  %124 = getelementptr inbounds nuw i8, ptr %3, i64 552
  store i64 0, ptr %124, align 8
  %125 = icmp eq i64 %2, 0
  %126 = icmp eq i64 %2, %1
  %127 = or i1 %125, %126
  br i1 %127, label %153, label %128

128:                                              ; preds = %109
  %129 = add i64 %2, -4734510112055689544
  %130 = sub i64 2066345149520216444, %2
  %131 = add i64 %2, -2623469361688619810
  %132 = sub i64 2262974939099578482, %2
  %133 = add i64 %2, 8711581037947681227
  %134 = sub i64 2410270004345854594, %2
  %135 = add i64 %2, -8204357891075471176
  %136 = sub i64 5487137525590930912, %2
  %137 = add i64 %2, -3818837453329782724
  %138 = sub i64 -6688317018830679928, %2
  %139 = add i64 %2, 5690594596133299313
  %140 = sub i64 -2833645246901970632, %2
  %141 = add i64 %2, 4554437623014685352
  %142 = sub i64 2111919702937427193, %2
  %143 = add i64 %2, 3556072174620004746
  %144 = sub i64 7238261902898274248, %2
  %145 = add i64 %2, -4329134394285701654
  %146 = sub i64 -1485321483350670907, %2
  %147 = add i64 %2, 5321830579834785047
  %148 = sub i64 -7032137544937171245, %2
  %149 = add i64 %2, -242834301215959509
  %150 = sub i64 -3588858202114426737, %2
  %151 = add i64 %2, 2883454493032893253
  %152 = sub i64 9097354517224871855, %2
  br label %153

153:                                              ; preds = %128, %109
  %154 = phi i64 [ %33, %109 ], [ %129, %128 ]
  %155 = phi i64 [ %34, %109 ], [ %130, %128 ]
  %156 = phi i64 [ %35, %109 ], [ %131, %128 ]
  %157 = phi i64 [ %36, %109 ], [ %132, %128 ]
  %158 = phi i64 [ %37, %109 ], [ %133, %128 ]
  %159 = phi i64 [ %38, %109 ], [ %134, %128 ]
  %160 = phi i64 [ %39, %109 ], [ %135, %128 ]
  %161 = phi i64 [ %40, %109 ], [ %136, %128 ]
  %162 = phi i64 [ %41, %109 ], [ %137, %128 ]
  %163 = phi i64 [ %42, %109 ], [ %138, %128 ]
  %164 = phi i64 [ %43, %109 ], [ %139, %128 ]
  %165 = phi i64 [ %44, %109 ], [ %140, %128 ]
  %166 = phi i64 [ %45, %109 ], [ %141, %128 ]
  %167 = phi i64 [ %46, %109 ], [ %142, %128 ]
  %168 = phi i64 [ %47, %109 ], [ %143, %128 ]
  %169 = phi i64 [ %48, %109 ], [ %144, %128 ]
  %170 = phi i64 [ %49, %109 ], [ %145, %128 ]
  %171 = phi i64 [ %50, %109 ], [ %146, %128 ]
  %172 = phi i64 [ %51, %109 ], [ %147, %128 ]
  %173 = phi i64 [ %52, %109 ], [ %148, %128 ]
  %174 = phi i64 [ %53, %109 ], [ %149, %128 ]
  %175 = phi i64 [ %54, %109 ], [ %150, %128 ]
  %176 = phi i64 [ %55, %109 ], [ %151, %128 ]
  %177 = phi i64 [ %56, %109 ], [ %152, %128 ]
  br i1 %57, label %179, label %178

178:                                              ; preds = %153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(10) %5, ptr noundef nonnull align 1 dereferenceable(10) %0, i64 10, i1 false)
  br label %179

179:                                              ; preds = %153, %178
  %180 = phi i64 [ 0, %153 ], [ 10, %178 ]
  %181 = getelementptr inbounds nuw i8, ptr %3, i64 560
  br i1 %125, label %206, label %182

182:                                              ; preds = %179
  store i64 %154, ptr %181, align 8
  %183 = getelementptr inbounds nuw i8, ptr %3, i64 568
  store i64 %155, ptr %183, align 8
  %184 = getelementptr inbounds nuw i8, ptr %3, i64 576
  store i64 %156, ptr %184, align 8
  %185 = getelementptr inbounds nuw i8, ptr %3, i64 584
  store i64 %157, ptr %185, align 8
  %186 = getelementptr inbounds nuw i8, ptr %3, i64 592
  store i64 %158, ptr %186, align 8
  %187 = getelementptr inbounds nuw i8, ptr %3, i64 600
  store i64 %159, ptr %187, align 8
  %188 = getelementptr inbounds nuw i8, ptr %3, i64 608
  store i64 %160, ptr %188, align 8
  %189 = getelementptr inbounds nuw i8, ptr %3, i64 616
  store i64 %161, ptr %189, align 8
  %190 = getelementptr inbounds nuw i8, ptr %3, i64 624
  store i64 %162, ptr %190, align 8
  %191 = getelementptr inbounds nuw i8, ptr %3, i64 632
  store i64 %163, ptr %191, align 8
  %192 = getelementptr inbounds nuw i8, ptr %3, i64 640
  store i64 %164, ptr %192, align 8
  %193 = getelementptr inbounds nuw i8, ptr %3, i64 648
  store i64 %165, ptr %193, align 8
  %194 = getelementptr inbounds nuw i8, ptr %3, i64 656
  store i64 %166, ptr %194, align 8
  %195 = getelementptr inbounds nuw i8, ptr %3, i64 664
  store i64 %167, ptr %195, align 8
  %196 = getelementptr inbounds nuw i8, ptr %3, i64 672
  store i64 %168, ptr %196, align 8
  %197 = getelementptr inbounds nuw i8, ptr %3, i64 680
  store i64 %169, ptr %197, align 8
  %198 = getelementptr inbounds nuw i8, ptr %3, i64 688
  store i64 %170, ptr %198, align 8
  %199 = getelementptr inbounds nuw i8, ptr %3, i64 696
  store i64 %171, ptr %199, align 8
  %200 = getelementptr inbounds nuw i8, ptr %3, i64 704
  store i64 %172, ptr %200, align 8
  %201 = getelementptr inbounds nuw i8, ptr %3, i64 712
  store i64 %173, ptr %201, align 8
  %202 = getelementptr inbounds nuw i8, ptr %3, i64 720
  store i64 %174, ptr %202, align 8
  %203 = getelementptr inbounds nuw i8, ptr %3, i64 728
  store i64 %175, ptr %203, align 8
  %204 = getelementptr inbounds nuw i8, ptr %3, i64 736
  store i64 %176, ptr %204, align 8
  %205 = getelementptr inbounds nuw i8, ptr %3, i64 744
  store i64 %177, ptr %205, align 8
  br label %230

206:                                              ; preds = %179
  store i64 -4734510112055689544, ptr %181, align 8
  %207 = getelementptr inbounds nuw i8, ptr %3, i64 568
  store i64 2066345149520216444, ptr %207, align 8
  %208 = getelementptr inbounds nuw i8, ptr %3, i64 576
  store i64 -2623469361688619810, ptr %208, align 8
  %209 = getelementptr inbounds nuw i8, ptr %3, i64 584
  store i64 2262974939099578482, ptr %209, align 8
  %210 = getelementptr inbounds nuw i8, ptr %3, i64 592
  store i64 8711581037947681227, ptr %210, align 8
  %211 = getelementptr inbounds nuw i8, ptr %3, i64 600
  store i64 2410270004345854594, ptr %211, align 8
  %212 = getelementptr inbounds nuw i8, ptr %3, i64 608
  store i64 -8204357891075471176, ptr %212, align 8
  %213 = getelementptr inbounds nuw i8, ptr %3, i64 616
  store i64 5487137525590930912, ptr %213, align 8
  %214 = getelementptr inbounds nuw i8, ptr %3, i64 624
  store i64 -3818837453329782724, ptr %214, align 8
  %215 = getelementptr inbounds nuw i8, ptr %3, i64 632
  store i64 -6688317018830679928, ptr %215, align 8
  %216 = getelementptr inbounds nuw i8, ptr %3, i64 640
  store i64 5690594596133299313, ptr %216, align 8
  %217 = getelementptr inbounds nuw i8, ptr %3, i64 648
  store i64 -2833645246901970632, ptr %217, align 8
  %218 = getelementptr inbounds nuw i8, ptr %3, i64 656
  store i64 4554437623014685352, ptr %218, align 8
  %219 = getelementptr inbounds nuw i8, ptr %3, i64 664
  store i64 2111919702937427193, ptr %219, align 8
  %220 = getelementptr inbounds nuw i8, ptr %3, i64 672
  store i64 3556072174620004746, ptr %220, align 8
  %221 = getelementptr inbounds nuw i8, ptr %3, i64 680
  store i64 7238261902898274248, ptr %221, align 8
  %222 = getelementptr inbounds nuw i8, ptr %3, i64 688
  store i64 -4329134394285701654, ptr %222, align 8
  %223 = getelementptr inbounds nuw i8, ptr %3, i64 696
  store i64 -1485321483350670907, ptr %223, align 8
  %224 = getelementptr inbounds nuw i8, ptr %3, i64 704
  store i64 5321830579834785047, ptr %224, align 8
  %225 = getelementptr inbounds nuw i8, ptr %3, i64 712
  store i64 -7032137544937171245, ptr %225, align 8
  %226 = getelementptr inbounds nuw i8, ptr %3, i64 720
  store i64 -242834301215959509, ptr %226, align 8
  %227 = getelementptr inbounds nuw i8, ptr %3, i64 728
  store i64 -3588858202114426737, ptr %227, align 8
  %228 = getelementptr inbounds nuw i8, ptr %3, i64 736
  store i64 2883454493032893253, ptr %228, align 8
  %229 = getelementptr inbounds nuw i8, ptr %3, i64 744
  store i64 9097354517224871855, ptr %229, align 8
  br label %230

230:                                              ; preds = %182, %206
  %231 = getelementptr inbounds nuw i8, ptr %3, i64 752
  store i64 3266489917, ptr %231, align 8
  %232 = getelementptr inbounds nuw i8, ptr %3, i64 760
  store i64 -7046029288634856825, ptr %232, align 8
  %233 = getelementptr inbounds nuw i8, ptr %3, i64 768
  store i64 -4417276706812531889, ptr %233, align 8
  %234 = getelementptr inbounds nuw i8, ptr %3, i64 776
  store i64 1609587929392839161, ptr %234, align 8
  %235 = getelementptr inbounds nuw i8, ptr %3, i64 784
  store i64 -8796714831421723037, ptr %235, align 8
  %236 = getelementptr inbounds nuw i8, ptr %3, i64 792
  store i64 2246822519, ptr %236, align 8
  %237 = getelementptr inbounds nuw i8, ptr %3, i64 800
  store i64 2870177450012600261, ptr %237, align 8
  %238 = getelementptr inbounds nuw i8, ptr %3, i64 808
  store i64 2654435761, ptr %238, align 8
  %239 = getelementptr inbounds nuw i8, ptr %3, i64 816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %239, ptr noundef nonnull align 64 dereferenceable(256) %5, i64 256, i1 false)
  %240 = getelementptr inbounds nuw i8, ptr %3, i64 1072
  store i64 %180, ptr %240, align 8
  %241 = getelementptr inbounds nuw i8, ptr %3, i64 1080
  store i64 %180, ptr %241, align 8
  %242 = getelementptr inbounds nuw i8, ptr %3, i64 1088
  store i64 %2, ptr %242, align 8
  %243 = getelementptr inbounds nuw i8, ptr %3, i64 1096
  store i64 128, ptr %243, align 8
  %244 = getelementptr inbounds nuw i8, ptr %3, i64 1104
  store i64 16, ptr %244, align 8
  %245 = getelementptr inbounds nuw i8, ptr %3, i64 1112
  store i64 0, ptr %245, align 8
  %246 = icmp eq i64 %1, %2
  %247 = or i1 %6, %246
  br i1 %247, label %273, label %248

248:                                              ; preds = %230
  %249 = add i64 %1, -4734510112055689544
  %250 = sub i64 2066345149520216444, %1
  %251 = add i64 %1, -2623469361688619810
  %252 = sub i64 2262974939099578482, %1
  %253 = add i64 %1, 8711581037947681227
  %254 = sub i64 2410270004345854594, %1
  %255 = add i64 %1, -8204357891075471176
  %256 = sub i64 5487137525590930912, %1
  %257 = add i64 %1, -3818837453329782724
  %258 = sub i64 -6688317018830679928, %1
  %259 = add i64 %1, 5690594596133299313
  %260 = sub i64 -2833645246901970632, %1
  %261 = add i64 %1, 4554437623014685352
  %262 = sub i64 2111919702937427193, %1
  %263 = add i64 %1, 3556072174620004746
  %264 = sub i64 7238261902898274248, %1
  %265 = add i64 %1, -4329134394285701654
  %266 = sub i64 -1485321483350670907, %1
  %267 = add i64 %1, 5321830579834785047
  %268 = sub i64 -7032137544937171245, %1
  %269 = add i64 %1, -242834301215959509
  %270 = sub i64 -3588858202114426737, %1
  %271 = add i64 %1, 2883454493032893253
  %272 = sub i64 9097354517224871855, %1
  br label %273

273:                                              ; preds = %248, %230
  %274 = phi i64 [ %154, %230 ], [ %249, %248 ]
  %275 = phi i64 [ %155, %230 ], [ %250, %248 ]
  %276 = phi i64 [ %156, %230 ], [ %251, %248 ]
  %277 = phi i64 [ %157, %230 ], [ %252, %248 ]
  %278 = phi i64 [ %158, %230 ], [ %253, %248 ]
  %279 = phi i64 [ %159, %230 ], [ %254, %248 ]
  %280 = phi i64 [ %160, %230 ], [ %255, %248 ]
  %281 = phi i64 [ %161, %230 ], [ %256, %248 ]
  %282 = phi i64 [ %162, %230 ], [ %257, %248 ]
  %283 = phi i64 [ %163, %230 ], [ %258, %248 ]
  %284 = phi i64 [ %164, %230 ], [ %259, %248 ]
  %285 = phi i64 [ %165, %230 ], [ %260, %248 ]
  %286 = phi i64 [ %166, %230 ], [ %261, %248 ]
  %287 = phi i64 [ %167, %230 ], [ %262, %248 ]
  %288 = phi i64 [ %168, %230 ], [ %263, %248 ]
  %289 = phi i64 [ %169, %230 ], [ %264, %248 ]
  %290 = phi i64 [ %170, %230 ], [ %265, %248 ]
  %291 = phi i64 [ %171, %230 ], [ %266, %248 ]
  %292 = phi i64 [ %172, %230 ], [ %267, %248 ]
  %293 = phi i64 [ %173, %230 ], [ %268, %248 ]
  %294 = phi i64 [ %174, %230 ], [ %269, %248 ]
  %295 = phi i64 [ %175, %230 ], [ %270, %248 ]
  %296 = phi i64 [ %176, %230 ], [ %271, %248 ]
  %297 = phi i64 [ %177, %230 ], [ %272, %248 ]
  br i1 %57, label %299, label %298

298:                                              ; preds = %273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(10) %5, ptr noundef nonnull align 1 dereferenceable(10) %0, i64 10, i1 false)
  br label %299

299:                                              ; preds = %273, %298
  %300 = phi i64 [ 0, %273 ], [ 10, %298 ]
  %301 = getelementptr inbounds nuw i8, ptr %3, i64 1120
  br i1 %6, label %326, label %302

302:                                              ; preds = %299
  store i64 %274, ptr %301, align 8
  %303 = getelementptr inbounds nuw i8, ptr %3, i64 1128
  store i64 %275, ptr %303, align 8
  %304 = getelementptr inbounds nuw i8, ptr %3, i64 1136
  store i64 %276, ptr %304, align 8
  %305 = getelementptr inbounds nuw i8, ptr %3, i64 1144
  store i64 %277, ptr %305, align 8
  %306 = getelementptr inbounds nuw i8, ptr %3, i64 1152
  store i64 %278, ptr %306, align 8
  %307 = getelementptr inbounds nuw i8, ptr %3, i64 1160
  store i64 %279, ptr %307, align 8
  %308 = getelementptr inbounds nuw i8, ptr %3, i64 1168
  store i64 %280, ptr %308, align 8
  %309 = getelementptr inbounds nuw i8, ptr %3, i64 1176
  store i64 %281, ptr %309, align 8
  %310 = getelementptr inbounds nuw i8, ptr %3, i64 1184
  store i64 %282, ptr %310, align 8
  %311 = getelementptr inbounds nuw i8, ptr %3, i64 1192
  store i64 %283, ptr %311, align 8
  %312 = getelementptr inbounds nuw i8, ptr %3, i64 1200
  store i64 %284, ptr %312, align 8
  %313 = getelementptr inbounds nuw i8, ptr %3, i64 1208
  store i64 %285, ptr %313, align 8
  %314 = getelementptr inbounds nuw i8, ptr %3, i64 1216
  store i64 %286, ptr %314, align 8
  %315 = getelementptr inbounds nuw i8, ptr %3, i64 1224
  store i64 %287, ptr %315, align 8
  %316 = getelementptr inbounds nuw i8, ptr %3, i64 1232
  store i64 %288, ptr %316, align 8
  %317 = getelementptr inbounds nuw i8, ptr %3, i64 1240
  store i64 %289, ptr %317, align 8
  %318 = getelementptr inbounds nuw i8, ptr %3, i64 1248
  store i64 %290, ptr %318, align 8
  %319 = getelementptr inbounds nuw i8, ptr %3, i64 1256
  store i64 %291, ptr %319, align 8
  %320 = getelementptr inbounds nuw i8, ptr %3, i64 1264
  store i64 %292, ptr %320, align 8
  %321 = getelementptr inbounds nuw i8, ptr %3, i64 1272
  store i64 %293, ptr %321, align 8
  %322 = getelementptr inbounds nuw i8, ptr %3, i64 1280
  store i64 %294, ptr %322, align 8
  %323 = getelementptr inbounds nuw i8, ptr %3, i64 1288
  store i64 %295, ptr %323, align 8
  %324 = getelementptr inbounds nuw i8, ptr %3, i64 1296
  store i64 %296, ptr %324, align 8
  %325 = getelementptr inbounds nuw i8, ptr %3, i64 1304
  store i64 %297, ptr %325, align 8
  br label %350

326:                                              ; preds = %299
  store i64 -4734510112055689544, ptr %301, align 8
  %327 = getelementptr inbounds nuw i8, ptr %3, i64 1128
  store i64 2066345149520216444, ptr %327, align 8
  %328 = getelementptr inbounds nuw i8, ptr %3, i64 1136
  store i64 -2623469361688619810, ptr %328, align 8
  %329 = getelementptr inbounds nuw i8, ptr %3, i64 1144
  store i64 2262974939099578482, ptr %329, align 8
  %330 = getelementptr inbounds nuw i8, ptr %3, i64 1152
  store i64 8711581037947681227, ptr %330, align 8
  %331 = getelementptr inbounds nuw i8, ptr %3, i64 1160
  store i64 2410270004345854594, ptr %331, align 8
  %332 = getelementptr inbounds nuw i8, ptr %3, i64 1168
  store i64 -8204357891075471176, ptr %332, align 8
  %333 = getelementptr inbounds nuw i8, ptr %3, i64 1176
  store i64 5487137525590930912, ptr %333, align 8
  %334 = getelementptr inbounds nuw i8, ptr %3, i64 1184
  store i64 -3818837453329782724, ptr %334, align 8
  %335 = getelementptr inbounds nuw i8, ptr %3, i64 1192
  store i64 -6688317018830679928, ptr %335, align 8
  %336 = getelementptr inbounds nuw i8, ptr %3, i64 1200
  store i64 5690594596133299313, ptr %336, align 8
  %337 = getelementptr inbounds nuw i8, ptr %3, i64 1208
  store i64 -2833645246901970632, ptr %337, align 8
  %338 = getelementptr inbounds nuw i8, ptr %3, i64 1216
  store i64 4554437623014685352, ptr %338, align 8
  %339 = getelementptr inbounds nuw i8, ptr %3, i64 1224
  store i64 2111919702937427193, ptr %339, align 8
  %340 = getelementptr inbounds nuw i8, ptr %3, i64 1232
  store i64 3556072174620004746, ptr %340, align 8
  %341 = getelementptr inbounds nuw i8, ptr %3, i64 1240
  store i64 7238261902898274248, ptr %341, align 8
  %342 = getelementptr inbounds nuw i8, ptr %3, i64 1248
  store i64 -4329134394285701654, ptr %342, align 8
  %343 = getelementptr inbounds nuw i8, ptr %3, i64 1256
  store i64 -1485321483350670907, ptr %343, align 8
  %344 = getelementptr inbounds nuw i8, ptr %3, i64 1264
  store i64 5321830579834785047, ptr %344, align 8
  %345 = getelementptr inbounds nuw i8, ptr %3, i64 1272
  store i64 -7032137544937171245, ptr %345, align 8
  %346 = getelementptr inbounds nuw i8, ptr %3, i64 1280
  store i64 -242834301215959509, ptr %346, align 8
  %347 = getelementptr inbounds nuw i8, ptr %3, i64 1288
  store i64 -3588858202114426737, ptr %347, align 8
  %348 = getelementptr inbounds nuw i8, ptr %3, i64 1296
  store i64 2883454493032893253, ptr %348, align 8
  %349 = getelementptr inbounds nuw i8, ptr %3, i64 1304
  store i64 9097354517224871855, ptr %349, align 8
  br label %350

350:                                              ; preds = %302, %326
  %351 = getelementptr inbounds nuw i8, ptr %3, i64 1312
  store i64 3266489917, ptr %351, align 8
  %352 = getelementptr inbounds nuw i8, ptr %3, i64 1320
  store i64 -7046029288634856825, ptr %352, align 8
  %353 = getelementptr inbounds nuw i8, ptr %3, i64 1328
  store i64 -4417276706812531889, ptr %353, align 8
  %354 = getelementptr inbounds nuw i8, ptr %3, i64 1336
  store i64 1609587929392839161, ptr %354, align 8
  %355 = getelementptr inbounds nuw i8, ptr %3, i64 1344
  store i64 -8796714831421723037, ptr %355, align 8
  %356 = getelementptr inbounds nuw i8, ptr %3, i64 1352
  store i64 2246822519, ptr %356, align 8
  %357 = getelementptr inbounds nuw i8, ptr %3, i64 1360
  store i64 2870177450012600261, ptr %357, align 8
  %358 = getelementptr inbounds nuw i8, ptr %3, i64 1368
  store i64 2654435761, ptr %358, align 8
  %359 = getelementptr inbounds nuw i8, ptr %3, i64 1376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %359, ptr noundef nonnull align 64 dereferenceable(256) %5, i64 256, i1 false)
  %360 = getelementptr inbounds nuw i8, ptr %3, i64 1632
  store i64 %300, ptr %360, align 8
  %361 = getelementptr inbounds nuw i8, ptr %3, i64 1640
  store i64 %300, ptr %361, align 8
  %362 = getelementptr inbounds nuw i8, ptr %3, i64 1648
  store i64 %1, ptr %362, align 8
  %363 = getelementptr inbounds nuw i8, ptr %3, i64 1656
  store i64 128, ptr %363, align 8
  %364 = getelementptr inbounds nuw i8, ptr %3, i64 1664
  store i64 16, ptr %364, align 8
  %365 = getelementptr inbounds nuw i8, ptr %3, i64 1672
  store i64 0, ptr %365, align 8
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
