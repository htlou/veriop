; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/662b223/wrap_reset.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/662b223/wrap_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_rst_seed_aba(i64 noundef %0, i64 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %3
  %6 = add i64 %0, -4734510112055689544
  %7 = sub i64 2066345149520216444, %0
  %8 = add i64 %0, -2623469361688619810
  %9 = sub i64 2262974939099578482, %0
  %10 = add i64 %0, 8711581037947681227
  %11 = sub i64 2410270004345854594, %0
  %12 = add i64 %0, -8204357891075471176
  %13 = sub i64 5487137525590930912, %0
  %14 = add i64 %0, -3818837453329782724
  %15 = sub i64 -6688317018830679928, %0
  %16 = add i64 %0, 5690594596133299313
  %17 = sub i64 -2833645246901970632, %0
  %18 = add i64 %0, 4554437623014685352
  %19 = sub i64 2111919702937427193, %0
  %20 = add i64 %0, 3556072174620004746
  %21 = sub i64 7238261902898274248, %0
  %22 = add i64 %0, -4329134394285701654
  %23 = sub i64 -1485321483350670907, %0
  %24 = add i64 %0, 5321830579834785047
  %25 = sub i64 -7032137544937171245, %0
  %26 = add i64 %0, -242834301215959509
  %27 = sub i64 -3588858202114426737, %0
  %28 = add i64 %0, 2883454493032893253
  %29 = sub i64 9097354517224871855, %0
  br label %30

30:                                               ; preds = %3, %5
  %31 = phi i64 [ %6, %5 ], [ -4734510112055689544, %3 ]
  %32 = phi i64 [ %7, %5 ], [ 2066345149520216444, %3 ]
  %33 = phi i64 [ %8, %5 ], [ -2623469361688619810, %3 ]
  %34 = phi i64 [ %9, %5 ], [ 2262974939099578482, %3 ]
  %35 = phi i64 [ %10, %5 ], [ 8711581037947681227, %3 ]
  %36 = phi i64 [ %11, %5 ], [ 2410270004345854594, %3 ]
  %37 = phi i64 [ %12, %5 ], [ -8204357891075471176, %3 ]
  %38 = phi i64 [ %13, %5 ], [ 5487137525590930912, %3 ]
  %39 = phi i64 [ %14, %5 ], [ -3818837453329782724, %3 ]
  %40 = phi i64 [ %15, %5 ], [ -6688317018830679928, %3 ]
  %41 = phi i64 [ %16, %5 ], [ 5690594596133299313, %3 ]
  %42 = phi i64 [ %17, %5 ], [ -2833645246901970632, %3 ]
  %43 = phi i64 [ %18, %5 ], [ 4554437623014685352, %3 ]
  %44 = phi i64 [ %19, %5 ], [ 2111919702937427193, %3 ]
  %45 = phi i64 [ %20, %5 ], [ 3556072174620004746, %3 ]
  %46 = phi i64 [ %21, %5 ], [ 7238261902898274248, %3 ]
  %47 = phi i64 [ %22, %5 ], [ -4329134394285701654, %3 ]
  %48 = phi i64 [ %23, %5 ], [ -1485321483350670907, %3 ]
  %49 = phi i64 [ %24, %5 ], [ 5321830579834785047, %3 ]
  %50 = phi i64 [ %25, %5 ], [ -7032137544937171245, %3 ]
  %51 = phi i64 [ %26, %5 ], [ -242834301215959509, %3 ]
  %52 = phi i64 [ %27, %5 ], [ -3588858202114426737, %3 ]
  %53 = phi i64 [ %28, %5 ], [ 2883454493032893253, %3 ]
  %54 = phi i64 [ %29, %5 ], [ 9097354517224871855, %3 ]
  %55 = phi i64 [ %29, %5 ], [ 0, %3 ]
  %56 = phi i64 [ %28, %5 ], [ 0, %3 ]
  %57 = phi i64 [ %27, %5 ], [ 0, %3 ]
  %58 = phi i64 [ %26, %5 ], [ 0, %3 ]
  %59 = phi i64 [ %25, %5 ], [ 0, %3 ]
  %60 = phi i64 [ %24, %5 ], [ 0, %3 ]
  %61 = phi i64 [ %23, %5 ], [ 0, %3 ]
  %62 = phi i64 [ %22, %5 ], [ 0, %3 ]
  %63 = phi i64 [ %21, %5 ], [ 0, %3 ]
  %64 = phi i64 [ %20, %5 ], [ 0, %3 ]
  %65 = phi i64 [ %19, %5 ], [ 0, %3 ]
  %66 = phi i64 [ %18, %5 ], [ 0, %3 ]
  %67 = phi i64 [ %17, %5 ], [ 0, %3 ]
  %68 = phi i64 [ %16, %5 ], [ 0, %3 ]
  %69 = phi i64 [ %15, %5 ], [ 0, %3 ]
  %70 = phi i64 [ %14, %5 ], [ 0, %3 ]
  %71 = phi i64 [ %13, %5 ], [ 0, %3 ]
  %72 = phi i64 [ %12, %5 ], [ 0, %3 ]
  %73 = phi i64 [ %11, %5 ], [ 0, %3 ]
  %74 = phi i64 [ %10, %5 ], [ 0, %3 ]
  %75 = phi i64 [ %9, %5 ], [ 0, %3 ]
  %76 = phi i64 [ %8, %5 ], [ 0, %3 ]
  %77 = phi i64 [ %7, %5 ], [ 0, %3 ]
  %78 = phi i64 [ %6, %5 ], [ 0, %3 ]
  store i64 %31, ptr %2, align 8
  %79 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %32, ptr %79, align 8
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %33, ptr %80, align 8
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %34, ptr %81, align 8
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %35, ptr %82, align 8
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %36, ptr %83, align 8
  %84 = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %37, ptr %84, align 8
  %85 = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 %38, ptr %85, align 8
  %86 = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %39, ptr %86, align 8
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 %40, ptr %87, align 8
  %88 = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 %41, ptr %88, align 8
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %42, ptr %89, align 8
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i64 %43, ptr %90, align 8
  %91 = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %44, ptr %91, align 8
  %92 = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i64 %45, ptr %92, align 8
  %93 = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i64 %46, ptr %93, align 8
  %94 = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i64 %47, ptr %94, align 8
  %95 = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i64 %48, ptr %95, align 8
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 144
  store i64 %49, ptr %96, align 8
  %97 = getelementptr inbounds nuw i8, ptr %2, i64 152
  store i64 %50, ptr %97, align 8
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 160
  store i64 %51, ptr %98, align 8
  %99 = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i64 %52, ptr %99, align 8
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 176
  store i64 %53, ptr %100, align 8
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 184
  store i64 %54, ptr %101, align 8
  %102 = getelementptr inbounds nuw i8, ptr %2, i64 192
  store i64 3266489917, ptr %102, align 8
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 200
  store i64 -7046029288634856825, ptr %103, align 8
  %104 = getelementptr inbounds nuw i8, ptr %2, i64 208
  store i64 -4417276706812531889, ptr %104, align 8
  %105 = getelementptr inbounds nuw i8, ptr %2, i64 216
  store i64 1609587929392839161, ptr %105, align 8
  %106 = getelementptr inbounds nuw i8, ptr %2, i64 224
  store i64 -8796714831421723037, ptr %106, align 8
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 232
  store i64 2246822519, ptr %107, align 8
  %108 = getelementptr inbounds nuw i8, ptr %2, i64 240
  store i64 2870177450012600261, ptr %108, align 8
  %109 = getelementptr inbounds nuw i8, ptr %2, i64 248
  store i64 2654435761, ptr %109, align 8
  %110 = getelementptr inbounds nuw i8, ptr %2, i64 256
  %111 = getelementptr inbounds nuw i8, ptr %2, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %110, i8 0, i64 16, i1 false)
  store i64 %0, ptr %111, align 8
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 280
  store i64 128, ptr %112, align 8
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 288
  store i64 16, ptr %113, align 8
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 296
  store i64 0, ptr %114, align 8
  %115 = icmp eq i64 %1, 0
  br i1 %115, label %143, label %116

116:                                              ; preds = %30
  %117 = icmp eq i64 %1, %0
  br i1 %117, label %143, label %118

118:                                              ; preds = %116
  %119 = add i64 %1, -4734510112055689544
  %120 = sub i64 2066345149520216444, %1
  %121 = add i64 %1, -2623469361688619810
  %122 = sub i64 2262974939099578482, %1
  %123 = add i64 %1, 8711581037947681227
  %124 = sub i64 2410270004345854594, %1
  %125 = add i64 %1, -8204357891075471176
  %126 = sub i64 5487137525590930912, %1
  %127 = add i64 %1, -3818837453329782724
  %128 = sub i64 -6688317018830679928, %1
  %129 = add i64 %1, 5690594596133299313
  %130 = sub i64 -2833645246901970632, %1
  %131 = add i64 %1, 4554437623014685352
  %132 = sub i64 2111919702937427193, %1
  %133 = add i64 %1, 3556072174620004746
  %134 = sub i64 7238261902898274248, %1
  %135 = add i64 %1, -4329134394285701654
  %136 = sub i64 -1485321483350670907, %1
  %137 = add i64 %1, 5321830579834785047
  %138 = sub i64 -7032137544937171245, %1
  %139 = add i64 %1, -242834301215959509
  %140 = sub i64 -3588858202114426737, %1
  %141 = add i64 %1, 2883454493032893253
  %142 = sub i64 9097354517224871855, %1
  br label %143

143:                                              ; preds = %116, %118, %30
  %144 = phi i64 [ -4734510112055689544, %30 ], [ %119, %118 ], [ %78, %116 ]
  %145 = phi i64 [ 2066345149520216444, %30 ], [ %120, %118 ], [ %77, %116 ]
  %146 = phi i64 [ -2623469361688619810, %30 ], [ %121, %118 ], [ %76, %116 ]
  %147 = phi i64 [ 2262974939099578482, %30 ], [ %122, %118 ], [ %75, %116 ]
  %148 = phi i64 [ 8711581037947681227, %30 ], [ %123, %118 ], [ %74, %116 ]
  %149 = phi i64 [ 2410270004345854594, %30 ], [ %124, %118 ], [ %73, %116 ]
  %150 = phi i64 [ -8204357891075471176, %30 ], [ %125, %118 ], [ %72, %116 ]
  %151 = phi i64 [ 5487137525590930912, %30 ], [ %126, %118 ], [ %71, %116 ]
  %152 = phi i64 [ -3818837453329782724, %30 ], [ %127, %118 ], [ %70, %116 ]
  %153 = phi i64 [ -6688317018830679928, %30 ], [ %128, %118 ], [ %69, %116 ]
  %154 = phi i64 [ 5690594596133299313, %30 ], [ %129, %118 ], [ %68, %116 ]
  %155 = phi i64 [ -2833645246901970632, %30 ], [ %130, %118 ], [ %67, %116 ]
  %156 = phi i64 [ 4554437623014685352, %30 ], [ %131, %118 ], [ %66, %116 ]
  %157 = phi i64 [ 2111919702937427193, %30 ], [ %132, %118 ], [ %65, %116 ]
  %158 = phi i64 [ 3556072174620004746, %30 ], [ %133, %118 ], [ %64, %116 ]
  %159 = phi i64 [ 7238261902898274248, %30 ], [ %134, %118 ], [ %63, %116 ]
  %160 = phi i64 [ -4329134394285701654, %30 ], [ %135, %118 ], [ %62, %116 ]
  %161 = phi i64 [ -1485321483350670907, %30 ], [ %136, %118 ], [ %61, %116 ]
  %162 = phi i64 [ 5321830579834785047, %30 ], [ %137, %118 ], [ %60, %116 ]
  %163 = phi i64 [ -7032137544937171245, %30 ], [ %138, %118 ], [ %59, %116 ]
  %164 = phi i64 [ -242834301215959509, %30 ], [ %139, %118 ], [ %58, %116 ]
  %165 = phi i64 [ -3588858202114426737, %30 ], [ %140, %118 ], [ %57, %116 ]
  %166 = phi i64 [ 2883454493032893253, %30 ], [ %141, %118 ], [ %56, %116 ]
  %167 = phi i64 [ 9097354517224871855, %30 ], [ %142, %118 ], [ %55, %116 ]
  %168 = phi i64 [ %55, %30 ], [ %142, %118 ], [ %55, %116 ]
  %169 = phi i64 [ %56, %30 ], [ %141, %118 ], [ %56, %116 ]
  %170 = phi i64 [ %57, %30 ], [ %140, %118 ], [ %57, %116 ]
  %171 = phi i64 [ %58, %30 ], [ %139, %118 ], [ %58, %116 ]
  %172 = phi i64 [ %59, %30 ], [ %138, %118 ], [ %59, %116 ]
  %173 = phi i64 [ %60, %30 ], [ %137, %118 ], [ %60, %116 ]
  %174 = phi i64 [ %61, %30 ], [ %136, %118 ], [ %61, %116 ]
  %175 = phi i64 [ %62, %30 ], [ %135, %118 ], [ %62, %116 ]
  %176 = phi i64 [ %63, %30 ], [ %134, %118 ], [ %63, %116 ]
  %177 = phi i64 [ %64, %30 ], [ %133, %118 ], [ %64, %116 ]
  %178 = phi i64 [ %65, %30 ], [ %132, %118 ], [ %65, %116 ]
  %179 = phi i64 [ %66, %30 ], [ %131, %118 ], [ %66, %116 ]
  %180 = phi i64 [ %67, %30 ], [ %130, %118 ], [ %67, %116 ]
  %181 = phi i64 [ %68, %30 ], [ %129, %118 ], [ %68, %116 ]
  %182 = phi i64 [ %69, %30 ], [ %128, %118 ], [ %69, %116 ]
  %183 = phi i64 [ %70, %30 ], [ %127, %118 ], [ %70, %116 ]
  %184 = phi i64 [ %71, %30 ], [ %126, %118 ], [ %71, %116 ]
  %185 = phi i64 [ %72, %30 ], [ %125, %118 ], [ %72, %116 ]
  %186 = phi i64 [ %73, %30 ], [ %124, %118 ], [ %73, %116 ]
  %187 = phi i64 [ %74, %30 ], [ %123, %118 ], [ %74, %116 ]
  %188 = phi i64 [ %75, %30 ], [ %122, %118 ], [ %75, %116 ]
  %189 = phi i64 [ %76, %30 ], [ %121, %118 ], [ %76, %116 ]
  %190 = phi i64 [ %77, %30 ], [ %120, %118 ], [ %77, %116 ]
  %191 = phi i64 [ %78, %30 ], [ %119, %118 ], [ %78, %116 ]
  %192 = getelementptr inbounds nuw i8, ptr %2, i64 304
  store i64 %144, ptr %192, align 8
  %193 = getelementptr inbounds nuw i8, ptr %2, i64 312
  store i64 %145, ptr %193, align 8
  %194 = getelementptr inbounds nuw i8, ptr %2, i64 320
  store i64 %146, ptr %194, align 8
  %195 = getelementptr inbounds nuw i8, ptr %2, i64 328
  store i64 %147, ptr %195, align 8
  %196 = getelementptr inbounds nuw i8, ptr %2, i64 336
  store i64 %148, ptr %196, align 8
  %197 = getelementptr inbounds nuw i8, ptr %2, i64 344
  store i64 %149, ptr %197, align 8
  %198 = getelementptr inbounds nuw i8, ptr %2, i64 352
  store i64 %150, ptr %198, align 8
  %199 = getelementptr inbounds nuw i8, ptr %2, i64 360
  store i64 %151, ptr %199, align 8
  %200 = getelementptr inbounds nuw i8, ptr %2, i64 368
  store i64 %152, ptr %200, align 8
  %201 = getelementptr inbounds nuw i8, ptr %2, i64 376
  store i64 %153, ptr %201, align 8
  %202 = getelementptr inbounds nuw i8, ptr %2, i64 384
  store i64 %154, ptr %202, align 8
  %203 = getelementptr inbounds nuw i8, ptr %2, i64 392
  store i64 %155, ptr %203, align 8
  %204 = getelementptr inbounds nuw i8, ptr %2, i64 400
  store i64 %156, ptr %204, align 8
  %205 = getelementptr inbounds nuw i8, ptr %2, i64 408
  store i64 %157, ptr %205, align 8
  %206 = getelementptr inbounds nuw i8, ptr %2, i64 416
  store i64 %158, ptr %206, align 8
  %207 = getelementptr inbounds nuw i8, ptr %2, i64 424
  store i64 %159, ptr %207, align 8
  %208 = getelementptr inbounds nuw i8, ptr %2, i64 432
  store i64 %160, ptr %208, align 8
  %209 = getelementptr inbounds nuw i8, ptr %2, i64 440
  store i64 %161, ptr %209, align 8
  %210 = getelementptr inbounds nuw i8, ptr %2, i64 448
  store i64 %162, ptr %210, align 8
  %211 = getelementptr inbounds nuw i8, ptr %2, i64 456
  store i64 %163, ptr %211, align 8
  %212 = getelementptr inbounds nuw i8, ptr %2, i64 464
  store i64 %164, ptr %212, align 8
  %213 = getelementptr inbounds nuw i8, ptr %2, i64 472
  store i64 %165, ptr %213, align 8
  %214 = getelementptr inbounds nuw i8, ptr %2, i64 480
  store i64 %166, ptr %214, align 8
  %215 = getelementptr inbounds nuw i8, ptr %2, i64 488
  store i64 %167, ptr %215, align 8
  %216 = getelementptr inbounds nuw i8, ptr %2, i64 496
  store i64 3266489917, ptr %216, align 8
  %217 = getelementptr inbounds nuw i8, ptr %2, i64 504
  store i64 -7046029288634856825, ptr %217, align 8
  %218 = getelementptr inbounds nuw i8, ptr %2, i64 512
  store i64 -4417276706812531889, ptr %218, align 8
  %219 = getelementptr inbounds nuw i8, ptr %2, i64 520
  store i64 1609587929392839161, ptr %219, align 8
  %220 = getelementptr inbounds nuw i8, ptr %2, i64 528
  store i64 -8796714831421723037, ptr %220, align 8
  %221 = getelementptr inbounds nuw i8, ptr %2, i64 536
  store i64 2246822519, ptr %221, align 8
  %222 = getelementptr inbounds nuw i8, ptr %2, i64 544
  store i64 2870177450012600261, ptr %222, align 8
  %223 = getelementptr inbounds nuw i8, ptr %2, i64 552
  store i64 2654435761, ptr %223, align 8
  %224 = getelementptr inbounds nuw i8, ptr %2, i64 560
  %225 = getelementptr inbounds nuw i8, ptr %2, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %224, i8 0, i64 16, i1 false)
  store i64 %1, ptr %225, align 8
  %226 = getelementptr inbounds nuw i8, ptr %2, i64 584
  store i64 128, ptr %226, align 8
  %227 = getelementptr inbounds nuw i8, ptr %2, i64 592
  store i64 16, ptr %227, align 8
  %228 = getelementptr inbounds nuw i8, ptr %2, i64 600
  store i64 0, ptr %228, align 8
  br i1 %4, label %256, label %229

229:                                              ; preds = %143
  %230 = icmp eq i64 %0, %1
  br i1 %230, label %256, label %231

231:                                              ; preds = %229
  %232 = add i64 %0, -4734510112055689544
  %233 = sub i64 2066345149520216444, %0
  %234 = add i64 %0, -2623469361688619810
  %235 = sub i64 2262974939099578482, %0
  %236 = add i64 %0, 8711581037947681227
  %237 = sub i64 2410270004345854594, %0
  %238 = add i64 %0, -8204357891075471176
  %239 = sub i64 5487137525590930912, %0
  %240 = add i64 %0, -3818837453329782724
  %241 = sub i64 -6688317018830679928, %0
  %242 = add i64 %0, 5690594596133299313
  %243 = sub i64 -2833645246901970632, %0
  %244 = add i64 %0, 4554437623014685352
  %245 = sub i64 2111919702937427193, %0
  %246 = add i64 %0, 3556072174620004746
  %247 = sub i64 7238261902898274248, %0
  %248 = add i64 %0, -4329134394285701654
  %249 = sub i64 -1485321483350670907, %0
  %250 = add i64 %0, 5321830579834785047
  %251 = sub i64 -7032137544937171245, %0
  %252 = add i64 %0, -242834301215959509
  %253 = sub i64 -3588858202114426737, %0
  %254 = add i64 %0, 2883454493032893253
  %255 = sub i64 9097354517224871855, %0
  br label %256

256:                                              ; preds = %229, %231, %143
  %257 = phi i64 [ -4734510112055689544, %143 ], [ %232, %231 ], [ %191, %229 ]
  %258 = phi i64 [ 2066345149520216444, %143 ], [ %233, %231 ], [ %190, %229 ]
  %259 = phi i64 [ -2623469361688619810, %143 ], [ %234, %231 ], [ %189, %229 ]
  %260 = phi i64 [ 2262974939099578482, %143 ], [ %235, %231 ], [ %188, %229 ]
  %261 = phi i64 [ 8711581037947681227, %143 ], [ %236, %231 ], [ %187, %229 ]
  %262 = phi i64 [ 2410270004345854594, %143 ], [ %237, %231 ], [ %186, %229 ]
  %263 = phi i64 [ -8204357891075471176, %143 ], [ %238, %231 ], [ %185, %229 ]
  %264 = phi i64 [ 5487137525590930912, %143 ], [ %239, %231 ], [ %184, %229 ]
  %265 = phi i64 [ -3818837453329782724, %143 ], [ %240, %231 ], [ %183, %229 ]
  %266 = phi i64 [ -6688317018830679928, %143 ], [ %241, %231 ], [ %182, %229 ]
  %267 = phi i64 [ 5690594596133299313, %143 ], [ %242, %231 ], [ %181, %229 ]
  %268 = phi i64 [ -2833645246901970632, %143 ], [ %243, %231 ], [ %180, %229 ]
  %269 = phi i64 [ 4554437623014685352, %143 ], [ %244, %231 ], [ %179, %229 ]
  %270 = phi i64 [ 2111919702937427193, %143 ], [ %245, %231 ], [ %178, %229 ]
  %271 = phi i64 [ 3556072174620004746, %143 ], [ %246, %231 ], [ %177, %229 ]
  %272 = phi i64 [ 7238261902898274248, %143 ], [ %247, %231 ], [ %176, %229 ]
  %273 = phi i64 [ -4329134394285701654, %143 ], [ %248, %231 ], [ %175, %229 ]
  %274 = phi i64 [ -1485321483350670907, %143 ], [ %249, %231 ], [ %174, %229 ]
  %275 = phi i64 [ 5321830579834785047, %143 ], [ %250, %231 ], [ %173, %229 ]
  %276 = phi i64 [ -7032137544937171245, %143 ], [ %251, %231 ], [ %172, %229 ]
  %277 = phi i64 [ -242834301215959509, %143 ], [ %252, %231 ], [ %171, %229 ]
  %278 = phi i64 [ -3588858202114426737, %143 ], [ %253, %231 ], [ %170, %229 ]
  %279 = phi i64 [ 2883454493032893253, %143 ], [ %254, %231 ], [ %169, %229 ]
  %280 = phi i64 [ 9097354517224871855, %143 ], [ %255, %231 ], [ %168, %229 ]
  %281 = getelementptr inbounds nuw i8, ptr %2, i64 608
  store i64 %257, ptr %281, align 8
  %282 = getelementptr inbounds nuw i8, ptr %2, i64 616
  store i64 %258, ptr %282, align 8
  %283 = getelementptr inbounds nuw i8, ptr %2, i64 624
  store i64 %259, ptr %283, align 8
  %284 = getelementptr inbounds nuw i8, ptr %2, i64 632
  store i64 %260, ptr %284, align 8
  %285 = getelementptr inbounds nuw i8, ptr %2, i64 640
  store i64 %261, ptr %285, align 8
  %286 = getelementptr inbounds nuw i8, ptr %2, i64 648
  store i64 %262, ptr %286, align 8
  %287 = getelementptr inbounds nuw i8, ptr %2, i64 656
  store i64 %263, ptr %287, align 8
  %288 = getelementptr inbounds nuw i8, ptr %2, i64 664
  store i64 %264, ptr %288, align 8
  %289 = getelementptr inbounds nuw i8, ptr %2, i64 672
  store i64 %265, ptr %289, align 8
  %290 = getelementptr inbounds nuw i8, ptr %2, i64 680
  store i64 %266, ptr %290, align 8
  %291 = getelementptr inbounds nuw i8, ptr %2, i64 688
  store i64 %267, ptr %291, align 8
  %292 = getelementptr inbounds nuw i8, ptr %2, i64 696
  store i64 %268, ptr %292, align 8
  %293 = getelementptr inbounds nuw i8, ptr %2, i64 704
  store i64 %269, ptr %293, align 8
  %294 = getelementptr inbounds nuw i8, ptr %2, i64 712
  store i64 %270, ptr %294, align 8
  %295 = getelementptr inbounds nuw i8, ptr %2, i64 720
  store i64 %271, ptr %295, align 8
  %296 = getelementptr inbounds nuw i8, ptr %2, i64 728
  store i64 %272, ptr %296, align 8
  %297 = getelementptr inbounds nuw i8, ptr %2, i64 736
  store i64 %273, ptr %297, align 8
  %298 = getelementptr inbounds nuw i8, ptr %2, i64 744
  store i64 %274, ptr %298, align 8
  %299 = getelementptr inbounds nuw i8, ptr %2, i64 752
  store i64 %275, ptr %299, align 8
  %300 = getelementptr inbounds nuw i8, ptr %2, i64 760
  store i64 %276, ptr %300, align 8
  %301 = getelementptr inbounds nuw i8, ptr %2, i64 768
  store i64 %277, ptr %301, align 8
  %302 = getelementptr inbounds nuw i8, ptr %2, i64 776
  store i64 %278, ptr %302, align 8
  %303 = getelementptr inbounds nuw i8, ptr %2, i64 784
  store i64 %279, ptr %303, align 8
  %304 = getelementptr inbounds nuw i8, ptr %2, i64 792
  store i64 %280, ptr %304, align 8
  %305 = getelementptr inbounds nuw i8, ptr %2, i64 800
  store i64 3266489917, ptr %305, align 8
  %306 = getelementptr inbounds nuw i8, ptr %2, i64 808
  store i64 -7046029288634856825, ptr %306, align 8
  %307 = getelementptr inbounds nuw i8, ptr %2, i64 816
  store i64 -4417276706812531889, ptr %307, align 8
  %308 = getelementptr inbounds nuw i8, ptr %2, i64 824
  store i64 1609587929392839161, ptr %308, align 8
  %309 = getelementptr inbounds nuw i8, ptr %2, i64 832
  store i64 -8796714831421723037, ptr %309, align 8
  %310 = getelementptr inbounds nuw i8, ptr %2, i64 840
  store i64 2246822519, ptr %310, align 8
  %311 = getelementptr inbounds nuw i8, ptr %2, i64 848
  store i64 2870177450012600261, ptr %311, align 8
  %312 = getelementptr inbounds nuw i8, ptr %2, i64 856
  store i64 2654435761, ptr %312, align 8
  %313 = getelementptr inbounds nuw i8, ptr %2, i64 864
  %314 = getelementptr inbounds nuw i8, ptr %2, i64 880
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %313, i8 0, i64 16, i1 false)
  store i64 %0, ptr %314, align 8
  %315 = getelementptr inbounds nuw i8, ptr %2, i64 888
  store i64 128, ptr %315, align 8
  %316 = getelementptr inbounds nuw i8, ptr %2, i64 896
  store i64 16, ptr %316, align 8
  %317 = getelementptr inbounds nuw i8, ptr %2, i64 904
  store i64 0, ptr %317, align 8
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
