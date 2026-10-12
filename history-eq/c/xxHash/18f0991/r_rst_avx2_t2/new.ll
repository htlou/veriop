; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_reset.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_INLINE_XXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_rst_seed_seed(i64 noundef %0, i64 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.XXH_INLINE_XXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %4) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %4, i8 0, i64 576, i1 false)
  %5 = icmp eq i64 %0, 0
  br i1 %5, label %6, label %41

6:                                                ; preds = %3
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %7, i8 0, i64 56, i1 false)
  store i64 3266489917, ptr %4, align 64
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 -7046029288634856825, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 -4417276706812531889, ptr %9, align 16
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1609587929392839161, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 -8796714831421723037, ptr %11, align 32
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 2246822519, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 2870177450012600261, ptr %13, align 16
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 2654435761, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 568
  store ptr @XXH3_kSecret, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 536
  store i64 128, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 520
  store i64 16, ptr %17, align 8
  store i64 -4734510112055689544, ptr %2, align 8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2066345149520216444, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 -2623469361688619810, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 2262974939099578482, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 8711581037947681227, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 2410270004345854594, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 -8204357891075471176, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 5487137525590930912, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 -3818837453329782724, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 -6688317018830679928, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 5690594596133299313, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 -2833645246901970632, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i64 4554437623014685352, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 2111919702937427193, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i64 3556072174620004746, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i64 7238261902898274248, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i64 -4329134394285701654, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i64 -1485321483350670907, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 144
  store i64 5321830579834785047, ptr %35, align 8
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 152
  store i64 -7032137544937171245, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 160
  store i64 -242834301215959509, ptr %37, align 8
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i64 -3588858202114426737, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 176
  store i64 2883454493032893253, ptr %39, align 8
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 184
  store i64 9097354517224871855, ptr %40, align 8
  br label %73

41:                                               ; preds = %3
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 552
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %43, i32 0, i32 3, i32 1)
  %44 = sub nsw i64 0, %0
  %45 = insertelement <4 x i64> poison, i64 %0, i64 0
  %46 = insertelement <4 x i64> %45, i64 %44, i64 1
  %47 = insertelement <4 x i64> %46, i64 %0, i64 2
  %48 = insertelement <4 x i64> %47, i64 %44, i64 3
  %49 = freeze ptr %43
  %50 = add <4 x i64> %48, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %50, ptr %49, align 32
  %51 = add <4 x i64> %48, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %52 = getelementptr inbounds nuw i8, ptr %49, i64 32
  store <4 x i64> %51, ptr %52, align 32
  %53 = add <4 x i64> %48, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %54 = getelementptr inbounds nuw i8, ptr %49, i64 64
  store <4 x i64> %53, ptr %54, align 32
  %55 = add <4 x i64> %48, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %56 = getelementptr inbounds nuw i8, ptr %49, i64 96
  store <4 x i64> %55, ptr %56, align 32
  %57 = add <4 x i64> %48, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %58 = getelementptr inbounds nuw i8, ptr %49, i64 128
  store <4 x i64> %57, ptr %58, align 32
  %59 = add <4 x i64> %48, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %60 = getelementptr inbounds nuw i8, ptr %49, i64 160
  store <4 x i64> %59, ptr %60, align 32
  %61 = getelementptr inbounds nuw i8, ptr %4, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %61, i8 0, i64 56, i1 false)
  store i64 3266489917, ptr %4, align 64
  %62 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 -7046029288634856825, ptr %62, align 8
  %63 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 -4417276706812531889, ptr %63, align 16
  %64 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1609587929392839161, ptr %64, align 8
  %65 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 -8796714831421723037, ptr %65, align 32
  %66 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 2246822519, ptr %66, align 8
  %67 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 2870177450012600261, ptr %67, align 16
  %68 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 2654435761, ptr %68, align 8
  store i64 %0, ptr %42, align 8
  %69 = getelementptr inbounds nuw i8, ptr %4, i64 568
  store ptr null, ptr %69, align 8
  %70 = getelementptr inbounds nuw i8, ptr %4, i64 536
  store i64 128, ptr %70, align 8
  %71 = getelementptr inbounds nuw i8, ptr %4, i64 520
  store i64 16, ptr %71, align 8
  %72 = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull readonly align 64 dereferenceable(192) %72, i64 192, i1 false)
  br label %73

73:                                               ; preds = %6, %41
  %74 = phi ptr [ %17, %6 ], [ %71, %41 ]
  %75 = phi ptr [ %16, %6 ], [ %70, %41 ]
  %76 = phi ptr [ %15, %6 ], [ %69, %41 ]
  %77 = getelementptr inbounds nuw i8, ptr %2, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %77, ptr noundef nonnull readonly align 64 dereferenceable(64) %4, i64 64, i1 false)
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 256
  %79 = getelementptr inbounds nuw i8, ptr %2, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %78, i8 0, i64 16, i1 false)
  store i64 %0, ptr %79, align 8
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 280
  store i64 128, ptr %80, align 8
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 288
  store i64 16, ptr %81, align 8
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 296
  store i64 0, ptr %82, align 8
  %83 = icmp eq i64 %1, 0
  br i1 %83, label %105, label %84

84:                                               ; preds = %73
  %85 = icmp eq i64 %1, %0
  br i1 %85, label %137, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %87, i32 0, i32 3, i32 1)
  %88 = sub nsw i64 0, %1
  %89 = insertelement <4 x i64> poison, i64 %1, i64 0
  %90 = insertelement <4 x i64> %89, i64 %88, i64 1
  %91 = insertelement <4 x i64> %90, i64 %1, i64 2
  %92 = insertelement <4 x i64> %91, i64 %88, i64 3
  %93 = freeze ptr %87
  %94 = add <4 x i64> %92, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %94, ptr %93, align 32
  %95 = add <4 x i64> %92, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %96 = getelementptr inbounds nuw i8, ptr %93, i64 32
  store <4 x i64> %95, ptr %96, align 32
  %97 = add <4 x i64> %92, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %98 = getelementptr inbounds nuw i8, ptr %93, i64 64
  store <4 x i64> %97, ptr %98, align 32
  %99 = add <4 x i64> %92, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %100 = getelementptr inbounds nuw i8, ptr %93, i64 96
  store <4 x i64> %99, ptr %100, align 32
  %101 = add <4 x i64> %92, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %102 = getelementptr inbounds nuw i8, ptr %93, i64 128
  store <4 x i64> %101, ptr %102, align 32
  %103 = add <4 x i64> %92, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %104 = getelementptr inbounds nuw i8, ptr %93, i64 160
  store <4 x i64> %103, ptr %104, align 32
  br label %137

105:                                              ; preds = %73
  store i64 3266489917, ptr %4, align 64
  %106 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 -7046029288634856825, ptr %106, align 8
  %107 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 -4417276706812531889, ptr %107, align 16
  %108 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1609587929392839161, ptr %108, align 8
  %109 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 -8796714831421723037, ptr %109, align 32
  %110 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 2246822519, ptr %110, align 8
  %111 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 2870177450012600261, ptr %111, align 16
  %112 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 2654435761, ptr %112, align 8
  store ptr @XXH3_kSecret, ptr %76, align 8
  store i64 128, ptr %75, align 8
  store i64 16, ptr %74, align 8
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 304
  store i64 -4734510112055689544, ptr %113, align 8
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 312
  store i64 2066345149520216444, ptr %114, align 8
  %115 = getelementptr inbounds nuw i8, ptr %2, i64 320
  store i64 -2623469361688619810, ptr %115, align 8
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 328
  store i64 2262974939099578482, ptr %116, align 8
  %117 = getelementptr inbounds nuw i8, ptr %2, i64 336
  store i64 8711581037947681227, ptr %117, align 8
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 344
  store i64 2410270004345854594, ptr %118, align 8
  %119 = getelementptr inbounds nuw i8, ptr %2, i64 352
  store i64 -8204357891075471176, ptr %119, align 8
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 360
  store i64 5487137525590930912, ptr %120, align 8
  %121 = getelementptr inbounds nuw i8, ptr %2, i64 368
  store i64 -3818837453329782724, ptr %121, align 8
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 376
  store i64 -6688317018830679928, ptr %122, align 8
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 384
  store i64 5690594596133299313, ptr %123, align 8
  %124 = getelementptr inbounds nuw i8, ptr %2, i64 392
  store i64 -2833645246901970632, ptr %124, align 8
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 400
  store i64 4554437623014685352, ptr %125, align 8
  %126 = getelementptr inbounds nuw i8, ptr %2, i64 408
  store i64 2111919702937427193, ptr %126, align 8
  %127 = getelementptr inbounds nuw i8, ptr %2, i64 416
  store i64 3556072174620004746, ptr %127, align 8
  %128 = getelementptr inbounds nuw i8, ptr %2, i64 424
  store i64 7238261902898274248, ptr %128, align 8
  %129 = getelementptr inbounds nuw i8, ptr %2, i64 432
  store i64 -4329134394285701654, ptr %129, align 8
  %130 = getelementptr inbounds nuw i8, ptr %2, i64 440
  store i64 -1485321483350670907, ptr %130, align 8
  %131 = getelementptr inbounds nuw i8, ptr %2, i64 448
  store i64 5321830579834785047, ptr %131, align 8
  %132 = getelementptr inbounds nuw i8, ptr %2, i64 456
  store i64 -7032137544937171245, ptr %132, align 8
  %133 = getelementptr inbounds nuw i8, ptr %2, i64 464
  store i64 -242834301215959509, ptr %133, align 8
  %134 = getelementptr inbounds nuw i8, ptr %2, i64 472
  store i64 -3588858202114426737, ptr %134, align 8
  %135 = getelementptr inbounds nuw i8, ptr %2, i64 480
  store i64 2883454493032893253, ptr %135, align 8
  %136 = getelementptr inbounds nuw i8, ptr %2, i64 488
  store i64 9097354517224871855, ptr %136, align 8
  br label %147

137:                                              ; preds = %84, %86
  store i64 3266489917, ptr %4, align 64
  %138 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 -7046029288634856825, ptr %138, align 8
  %139 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 -4417276706812531889, ptr %139, align 16
  %140 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1609587929392839161, ptr %140, align 8
  %141 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 -8796714831421723037, ptr %141, align 32
  %142 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 2246822519, ptr %142, align 8
  %143 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 2870177450012600261, ptr %143, align 16
  %144 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 2654435761, ptr %144, align 8
  store ptr null, ptr %76, align 8
  store i64 128, ptr %75, align 8
  store i64 16, ptr %74, align 8
  %145 = getelementptr inbounds nuw i8, ptr %2, i64 304
  %146 = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %145, ptr noundef nonnull readonly align 64 dereferenceable(192) %146, i64 192, i1 false)
  br label %147

147:                                              ; preds = %105, %137
  %148 = getelementptr inbounds nuw i8, ptr %2, i64 496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %148, ptr noundef nonnull readonly align 64 dereferenceable(64) %4, i64 64, i1 false)
  %149 = getelementptr inbounds nuw i8, ptr %2, i64 560
  %150 = getelementptr inbounds nuw i8, ptr %2, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %149, i8 0, i64 16, i1 false)
  store i64 %1, ptr %150, align 8
  %151 = getelementptr inbounds nuw i8, ptr %2, i64 584
  store i64 128, ptr %151, align 8
  %152 = getelementptr inbounds nuw i8, ptr %2, i64 592
  store i64 16, ptr %152, align 8
  %153 = getelementptr inbounds nuw i8, ptr %2, i64 600
  store i64 0, ptr %153, align 8
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %4) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 547111}
