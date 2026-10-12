; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_obs.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_obs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_INLINE_XXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_obs128_reuse_seed_250(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly initializes((0, 1120)) %3) local_unnamed_addr #0 {
  %5 = alloca %struct.XXH_INLINE_XXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %5) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %5, i8 0, i64 576, i1 false)
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %56, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %9 = add i64 %1, -4734510112055689544
  %10 = sub i64 2066345149520216444, %1
  store i64 %9, ptr %8, align 64
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 %10, ptr %11, align 8
  %12 = add i64 %1, -2623469361688619810
  %13 = sub i64 2262974939099578482, %1
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 %12, ptr %14, align 16
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 %13, ptr %15, align 8
  %16 = add i64 %1, 8711581037947681227
  %17 = sub i64 2410270004345854594, %1
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i64 %16, ptr %18, align 32
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i64 %17, ptr %19, align 8
  %20 = add i64 %1, -8204357891075471176
  %21 = sub i64 5487137525590930912, %1
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i64 %20, ptr %22, align 16
  %23 = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i64 %21, ptr %23, align 8
  %24 = add i64 %1, -3818837453329782724
  %25 = sub i64 -6688317018830679928, %1
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 128
  store i64 %24, ptr %26, align 64
  %27 = getelementptr inbounds nuw i8, ptr %5, i64 136
  store i64 %25, ptr %27, align 8
  %28 = add i64 %1, 5690594596133299313
  %29 = sub i64 -2833645246901970632, %1
  %30 = getelementptr inbounds nuw i8, ptr %5, i64 144
  store i64 %28, ptr %30, align 16
  %31 = getelementptr inbounds nuw i8, ptr %5, i64 152
  store i64 %29, ptr %31, align 8
  %32 = add i64 %1, 4554437623014685352
  %33 = sub i64 2111919702937427193, %1
  %34 = getelementptr inbounds nuw i8, ptr %5, i64 160
  store i64 %32, ptr %34, align 32
  %35 = getelementptr inbounds nuw i8, ptr %5, i64 168
  store i64 %33, ptr %35, align 8
  %36 = add i64 %1, 3556072174620004746
  %37 = sub i64 7238261902898274248, %1
  %38 = getelementptr inbounds nuw i8, ptr %5, i64 176
  store i64 %36, ptr %38, align 16
  %39 = getelementptr inbounds nuw i8, ptr %5, i64 184
  store i64 %37, ptr %39, align 8
  %40 = add i64 %1, -4329134394285701654
  %41 = sub i64 -1485321483350670907, %1
  %42 = getelementptr inbounds nuw i8, ptr %5, i64 192
  store i64 %40, ptr %42, align 64
  %43 = getelementptr inbounds nuw i8, ptr %5, i64 200
  store i64 %41, ptr %43, align 8
  %44 = add i64 %1, 5321830579834785047
  %45 = sub i64 -7032137544937171245, %1
  %46 = getelementptr inbounds nuw i8, ptr %5, i64 208
  store i64 %44, ptr %46, align 16
  %47 = getelementptr inbounds nuw i8, ptr %5, i64 216
  store i64 %45, ptr %47, align 8
  %48 = add i64 %1, -242834301215959509
  %49 = sub i64 -3588858202114426737, %1
  %50 = getelementptr inbounds nuw i8, ptr %5, i64 224
  store i64 %48, ptr %50, align 32
  %51 = getelementptr inbounds nuw i8, ptr %5, i64 232
  store i64 %49, ptr %51, align 8
  %52 = add i64 %1, 2883454493032893253
  %53 = sub i64 9097354517224871855, %1
  %54 = getelementptr inbounds nuw i8, ptr %5, i64 240
  store i64 %52, ptr %54, align 16
  %55 = getelementptr inbounds nuw i8, ptr %5, i64 248
  store i64 %53, ptr %55, align 8
  br label %56

56:                                               ; preds = %4, %7
  store i64 3266489917, ptr %5, align 64
  %57 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 -7046029288634856825, ptr %57, align 8
  %58 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 -4417276706812531889, ptr %58, align 16
  %59 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 1609587929392839161, ptr %59, align 8
  %60 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 -8796714831421723037, ptr %60, align 32
  %61 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 2246822519, ptr %61, align 8
  %62 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 2870177450012600261, ptr %62, align 16
  %63 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 2654435761, ptr %63, align 8
  %64 = icmp eq ptr %0, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %56
  %66 = getelementptr inbounds nuw i8, ptr %5, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(100) %66, ptr noundef nonnull readonly align 1 dereferenceable(100) %0, i64 range(i64 100, 151) 100, i1 false)
  br label %67

67:                                               ; preds = %56, %65
  %68 = phi i64 [ 0, %56 ], [ 100, %65 ]
  br i1 %6, label %71, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %3, ptr noundef nonnull readonly align 64 dereferenceable(192) %70, i64 192, i1 false)
  br label %95

71:                                               ; preds = %67
  store i64 -4734510112055689544, ptr %3, align 8
  %72 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2066345149520216444, ptr %72, align 8
  %73 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 -2623469361688619810, ptr %73, align 8
  %74 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 2262974939099578482, ptr %74, align 8
  %75 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 8711581037947681227, ptr %75, align 8
  %76 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 2410270004345854594, ptr %76, align 8
  %77 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 -8204357891075471176, ptr %77, align 8
  %78 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 5487137525590930912, ptr %78, align 8
  %79 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 -3818837453329782724, ptr %79, align 8
  %80 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 -6688317018830679928, ptr %80, align 8
  %81 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 5690594596133299313, ptr %81, align 8
  %82 = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 -2833645246901970632, ptr %82, align 8
  %83 = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i64 4554437623014685352, ptr %83, align 8
  %84 = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 2111919702937427193, ptr %84, align 8
  %85 = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 3556072174620004746, ptr %85, align 8
  %86 = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 7238261902898274248, ptr %86, align 8
  %87 = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 -4329134394285701654, ptr %87, align 8
  %88 = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i64 -1485321483350670907, ptr %88, align 8
  %89 = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i64 5321830579834785047, ptr %89, align 8
  %90 = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i64 -7032137544937171245, ptr %90, align 8
  %91 = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i64 -242834301215959509, ptr %91, align 8
  %92 = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i64 -3588858202114426737, ptr %92, align 8
  %93 = getelementptr inbounds nuw i8, ptr %3, i64 176
  store i64 2883454493032893253, ptr %93, align 8
  %94 = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i64 9097354517224871855, ptr %94, align 8
  br label %95

95:                                               ; preds = %69, %71
  %96 = getelementptr inbounds nuw i8, ptr %3, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %96, ptr noundef nonnull readonly align 64 dereferenceable(64) %5, i64 64, i1 false)
  %97 = getelementptr inbounds nuw i8, ptr %3, i64 256
  %98 = getelementptr inbounds nuw i8, ptr %5, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %97, ptr noundef nonnull readonly align 64 dereferenceable(256) %98, i64 256, i1 false)
  %99 = getelementptr inbounds nuw i8, ptr %3, i64 512
  store i64 %68, ptr %99, align 8
  %100 = getelementptr inbounds nuw i8, ptr %3, i64 520
  store i64 %68, ptr %100, align 8
  %101 = getelementptr inbounds nuw i8, ptr %3, i64 528
  store i64 %1, ptr %101, align 8
  %102 = getelementptr inbounds nuw i8, ptr %3, i64 536
  store i64 128, ptr %102, align 8
  %103 = getelementptr inbounds nuw i8, ptr %3, i64 544
  store i64 16, ptr %103, align 8
  %104 = getelementptr inbounds nuw i8, ptr %3, i64 552
  store i64 0, ptr %104, align 8
  %105 = icmp eq i64 %2, 0
  %106 = icmp eq i64 %2, %1
  %107 = or i1 %105, %106
  br i1 %107, label %157, label %108

108:                                              ; preds = %95
  %109 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %110 = add i64 %2, -4734510112055689544
  %111 = sub i64 2066345149520216444, %2
  store i64 %110, ptr %109, align 64
  %112 = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 %111, ptr %112, align 8
  %113 = add i64 %2, -2623469361688619810
  %114 = sub i64 2262974939099578482, %2
  %115 = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 %113, ptr %115, align 16
  %116 = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 %114, ptr %116, align 8
  %117 = add i64 %2, 8711581037947681227
  %118 = sub i64 2410270004345854594, %2
  %119 = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i64 %117, ptr %119, align 32
  %120 = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i64 %118, ptr %120, align 8
  %121 = add i64 %2, -8204357891075471176
  %122 = sub i64 5487137525590930912, %2
  %123 = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i64 %121, ptr %123, align 16
  %124 = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i64 %122, ptr %124, align 8
  %125 = add i64 %2, -3818837453329782724
  %126 = sub i64 -6688317018830679928, %2
  %127 = getelementptr inbounds nuw i8, ptr %5, i64 128
  store i64 %125, ptr %127, align 64
  %128 = getelementptr inbounds nuw i8, ptr %5, i64 136
  store i64 %126, ptr %128, align 8
  %129 = add i64 %2, 5690594596133299313
  %130 = sub i64 -2833645246901970632, %2
  %131 = getelementptr inbounds nuw i8, ptr %5, i64 144
  store i64 %129, ptr %131, align 16
  %132 = getelementptr inbounds nuw i8, ptr %5, i64 152
  store i64 %130, ptr %132, align 8
  %133 = add i64 %2, 4554437623014685352
  %134 = sub i64 2111919702937427193, %2
  %135 = getelementptr inbounds nuw i8, ptr %5, i64 160
  store i64 %133, ptr %135, align 32
  %136 = getelementptr inbounds nuw i8, ptr %5, i64 168
  store i64 %134, ptr %136, align 8
  %137 = add i64 %2, 3556072174620004746
  %138 = sub i64 7238261902898274248, %2
  %139 = getelementptr inbounds nuw i8, ptr %5, i64 176
  store i64 %137, ptr %139, align 16
  %140 = getelementptr inbounds nuw i8, ptr %5, i64 184
  store i64 %138, ptr %140, align 8
  %141 = add i64 %2, -4329134394285701654
  %142 = sub i64 -1485321483350670907, %2
  %143 = getelementptr inbounds nuw i8, ptr %5, i64 192
  store i64 %141, ptr %143, align 64
  %144 = getelementptr inbounds nuw i8, ptr %5, i64 200
  store i64 %142, ptr %144, align 8
  %145 = add i64 %2, 5321830579834785047
  %146 = sub i64 -7032137544937171245, %2
  %147 = getelementptr inbounds nuw i8, ptr %5, i64 208
  store i64 %145, ptr %147, align 16
  %148 = getelementptr inbounds nuw i8, ptr %5, i64 216
  store i64 %146, ptr %148, align 8
  %149 = add i64 %2, -242834301215959509
  %150 = sub i64 -3588858202114426737, %2
  %151 = getelementptr inbounds nuw i8, ptr %5, i64 224
  store i64 %149, ptr %151, align 32
  %152 = getelementptr inbounds nuw i8, ptr %5, i64 232
  store i64 %150, ptr %152, align 8
  %153 = add i64 %2, 2883454493032893253
  %154 = sub i64 9097354517224871855, %2
  %155 = getelementptr inbounds nuw i8, ptr %5, i64 240
  store i64 %153, ptr %155, align 16
  %156 = getelementptr inbounds nuw i8, ptr %5, i64 248
  store i64 %154, ptr %156, align 8
  br label %157

157:                                              ; preds = %108, %95
  store i64 3266489917, ptr %5, align 64
  %158 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 -7046029288634856825, ptr %158, align 8
  %159 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 -4417276706812531889, ptr %159, align 16
  %160 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 1609587929392839161, ptr %160, align 8
  %161 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 -8796714831421723037, ptr %161, align 32
  %162 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 2246822519, ptr %162, align 8
  %163 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 2870177450012600261, ptr %163, align 16
  %164 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 2654435761, ptr %164, align 8
  br i1 %64, label %166, label %165

165:                                              ; preds = %157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(100) %98, ptr noundef nonnull readonly align 1 dereferenceable(100) %0, i64 range(i64 100, 151) 100, i1 false)
  br label %166

166:                                              ; preds = %157, %165
  %167 = phi i32 [ 100, %165 ], [ 0, %157 ]
  %168 = phi i64 [ 250, %165 ], [ 150, %157 ]
  %169 = zext nneg i32 %167 to i64
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %171 = getelementptr inbounds nuw i8, ptr %98, i64 %169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(150) %171, ptr noundef nonnull readonly align 1 dereferenceable(150) %170, i64 range(i64 100, 151) 150, i1 false)
  %172 = getelementptr inbounds nuw i8, ptr %3, i64 560
  br i1 %105, label %175, label %173

173:                                              ; preds = %166
  %174 = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %172, ptr noundef nonnull readonly align 64 dereferenceable(192) %174, i64 192, i1 false)
  br label %199

175:                                              ; preds = %166
  store i64 -4734510112055689544, ptr %172, align 8
  %176 = getelementptr inbounds nuw i8, ptr %3, i64 568
  store i64 2066345149520216444, ptr %176, align 8
  %177 = getelementptr inbounds nuw i8, ptr %3, i64 576
  store i64 -2623469361688619810, ptr %177, align 8
  %178 = getelementptr inbounds nuw i8, ptr %3, i64 584
  store i64 2262974939099578482, ptr %178, align 8
  %179 = getelementptr inbounds nuw i8, ptr %3, i64 592
  store i64 8711581037947681227, ptr %179, align 8
  %180 = getelementptr inbounds nuw i8, ptr %3, i64 600
  store i64 2410270004345854594, ptr %180, align 8
  %181 = getelementptr inbounds nuw i8, ptr %3, i64 608
  store i64 -8204357891075471176, ptr %181, align 8
  %182 = getelementptr inbounds nuw i8, ptr %3, i64 616
  store i64 5487137525590930912, ptr %182, align 8
  %183 = getelementptr inbounds nuw i8, ptr %3, i64 624
  store i64 -3818837453329782724, ptr %183, align 8
  %184 = getelementptr inbounds nuw i8, ptr %3, i64 632
  store i64 -6688317018830679928, ptr %184, align 8
  %185 = getelementptr inbounds nuw i8, ptr %3, i64 640
  store i64 5690594596133299313, ptr %185, align 8
  %186 = getelementptr inbounds nuw i8, ptr %3, i64 648
  store i64 -2833645246901970632, ptr %186, align 8
  %187 = getelementptr inbounds nuw i8, ptr %3, i64 656
  store i64 4554437623014685352, ptr %187, align 8
  %188 = getelementptr inbounds nuw i8, ptr %3, i64 664
  store i64 2111919702937427193, ptr %188, align 8
  %189 = getelementptr inbounds nuw i8, ptr %3, i64 672
  store i64 3556072174620004746, ptr %189, align 8
  %190 = getelementptr inbounds nuw i8, ptr %3, i64 680
  store i64 7238261902898274248, ptr %190, align 8
  %191 = getelementptr inbounds nuw i8, ptr %3, i64 688
  store i64 -4329134394285701654, ptr %191, align 8
  %192 = getelementptr inbounds nuw i8, ptr %3, i64 696
  store i64 -1485321483350670907, ptr %192, align 8
  %193 = getelementptr inbounds nuw i8, ptr %3, i64 704
  store i64 5321830579834785047, ptr %193, align 8
  %194 = getelementptr inbounds nuw i8, ptr %3, i64 712
  store i64 -7032137544937171245, ptr %194, align 8
  %195 = getelementptr inbounds nuw i8, ptr %3, i64 720
  store i64 -242834301215959509, ptr %195, align 8
  %196 = getelementptr inbounds nuw i8, ptr %3, i64 728
  store i64 -3588858202114426737, ptr %196, align 8
  %197 = getelementptr inbounds nuw i8, ptr %3, i64 736
  store i64 2883454493032893253, ptr %197, align 8
  %198 = getelementptr inbounds nuw i8, ptr %3, i64 744
  store i64 9097354517224871855, ptr %198, align 8
  br label %199

199:                                              ; preds = %173, %175
  %200 = add nuw nsw i32 %167, 150
  %201 = getelementptr inbounds nuw i8, ptr %3, i64 752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %201, ptr noundef nonnull readonly align 64 dereferenceable(64) %5, i64 64, i1 false)
  %202 = getelementptr inbounds nuw i8, ptr %3, i64 816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %202, ptr noundef nonnull readonly align 64 dereferenceable(256) %98, i64 256, i1 false)
  %203 = zext nneg i32 %200 to i64
  %204 = getelementptr inbounds nuw i8, ptr %3, i64 1072
  store i64 %203, ptr %204, align 8
  %205 = getelementptr inbounds nuw i8, ptr %3, i64 1080
  store i64 %168, ptr %205, align 8
  %206 = getelementptr inbounds nuw i8, ptr %3, i64 1088
  store i64 %2, ptr %206, align 8
  %207 = getelementptr inbounds nuw i8, ptr %3, i64 1096
  store i64 128, ptr %207, align 8
  %208 = getelementptr inbounds nuw i8, ptr %3, i64 1104
  store i64 16, ptr %208, align 8
  %209 = getelementptr inbounds nuw i8, ptr %3, i64 1112
  store i64 0, ptr %209, align 8
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %5) #4
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
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_initCustomSecret_scalar: argument 0"}
!7 = distinct !{!7, !"XXH3_initCustomSecret_scalar"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"XXH3_initCustomSecret_scalar: argument 0"}
!10 = distinct !{!10, !"XXH3_initCustomSecret_scalar"}
