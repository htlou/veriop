; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_obs.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_obs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_INLINE_XXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_obs128_reuse_seed_250(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noundef writeonly initializes((0, 1120)) %3) local_unnamed_addr #0 {
  %5 = alloca %struct.XXH_INLINE_XXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %5) #4
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 256
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(320) %8, i8 0, i64 320, i1 false)
  store i64 3266489917, ptr %5, align 64
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 -7046029288634856825, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 -4417276706812531889, ptr %10, align 16
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 1609587929392839161, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 -8796714831421723037, ptr %12, align 32
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 2246822519, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 2870177450012600261, ptr %14, align 16
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 2654435761, ptr %15, align 8
  %16 = add i64 %1, -4734510112055689544
  %17 = sub i64 2066345149520216444, %1
  store i64 %16, ptr %6, align 64
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 %17, ptr %18, align 8
  %19 = add i64 %1, -2623469361688619810
  %20 = sub i64 2262974939099578482, %1
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 %19, ptr %21, align 16
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 %20, ptr %22, align 8
  %23 = add i64 %1, 8711581037947681227
  %24 = sub i64 2410270004345854594, %1
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i64 %23, ptr %25, align 32
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i64 %24, ptr %26, align 8
  %27 = add i64 %1, -8204357891075471176
  %28 = sub i64 5487137525590930912, %1
  %29 = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i64 %27, ptr %29, align 16
  %30 = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i64 %28, ptr %30, align 8
  %31 = add i64 %1, -3818837453329782724
  %32 = sub i64 -6688317018830679928, %1
  %33 = getelementptr inbounds nuw i8, ptr %5, i64 128
  store i64 %31, ptr %33, align 64
  %34 = getelementptr inbounds nuw i8, ptr %5, i64 136
  store i64 %32, ptr %34, align 8
  %35 = add i64 %1, 5690594596133299313
  %36 = sub i64 -2833645246901970632, %1
  %37 = getelementptr inbounds nuw i8, ptr %5, i64 144
  store i64 %35, ptr %37, align 16
  %38 = getelementptr inbounds nuw i8, ptr %5, i64 152
  store i64 %36, ptr %38, align 8
  %39 = add i64 %1, 4554437623014685352
  %40 = sub i64 2111919702937427193, %1
  %41 = getelementptr inbounds nuw i8, ptr %5, i64 160
  store i64 %39, ptr %41, align 32
  %42 = getelementptr inbounds nuw i8, ptr %5, i64 168
  store i64 %40, ptr %42, align 8
  %43 = add i64 %1, 3556072174620004746
  %44 = sub i64 7238261902898274248, %1
  %45 = getelementptr inbounds nuw i8, ptr %5, i64 176
  store i64 %43, ptr %45, align 16
  %46 = getelementptr inbounds nuw i8, ptr %5, i64 184
  store i64 %44, ptr %46, align 8
  %47 = add i64 %1, -4329134394285701654
  %48 = sub i64 -1485321483350670907, %1
  %49 = getelementptr inbounds nuw i8, ptr %5, i64 192
  store i64 %47, ptr %49, align 64
  %50 = getelementptr inbounds nuw i8, ptr %5, i64 200
  store i64 %48, ptr %50, align 8
  %51 = add i64 %1, 5321830579834785047
  %52 = sub i64 -7032137544937171245, %1
  %53 = getelementptr inbounds nuw i8, ptr %5, i64 208
  store i64 %51, ptr %53, align 16
  %54 = getelementptr inbounds nuw i8, ptr %5, i64 216
  store i64 %52, ptr %54, align 8
  %55 = add i64 %1, -242834301215959509
  %56 = sub i64 -3588858202114426737, %1
  %57 = getelementptr inbounds nuw i8, ptr %5, i64 224
  store i64 %55, ptr %57, align 32
  %58 = getelementptr inbounds nuw i8, ptr %5, i64 232
  store i64 %56, ptr %58, align 8
  %59 = add i64 %1, 2883454493032893253
  %60 = sub i64 9097354517224871855, %1
  %61 = getelementptr inbounds nuw i8, ptr %5, i64 240
  store i64 %59, ptr %61, align 16
  %62 = getelementptr inbounds nuw i8, ptr %5, i64 248
  store i64 %60, ptr %62, align 8
  %63 = icmp eq ptr %0, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(100) %7, ptr noundef nonnull readonly align 1 dereferenceable(100) %0, i64 range(i64 100, 151) 100, i1 false)
  br label %65

65:                                               ; preds = %4, %64
  %66 = phi i64 [ 0, %4 ], [ 100, %64 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %3, ptr noundef nonnull readonly align 64 dereferenceable(192) %6, i64 192, i1 false)
  %67 = getelementptr inbounds nuw i8, ptr %3, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %67, ptr noundef nonnull readonly align 64 dereferenceable(64) %5, i64 64, i1 false)
  %68 = getelementptr inbounds nuw i8, ptr %3, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %68, ptr noundef nonnull readonly align 64 dereferenceable(256) %7, i64 256, i1 false)
  %69 = getelementptr inbounds nuw i8, ptr %3, i64 512
  store i64 %66, ptr %69, align 8
  %70 = getelementptr inbounds nuw i8, ptr %3, i64 520
  store i64 %66, ptr %70, align 8
  %71 = getelementptr inbounds nuw i8, ptr %3, i64 528
  store i64 %1, ptr %71, align 8
  %72 = getelementptr inbounds nuw i8, ptr %3, i64 536
  store i64 128, ptr %72, align 8
  %73 = getelementptr inbounds nuw i8, ptr %3, i64 544
  store i64 16, ptr %73, align 8
  %74 = getelementptr inbounds nuw i8, ptr %3, i64 552
  store i64 0, ptr %74, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %7, i8 0, i64 320, i1 false)
  store i64 3266489917, ptr %5, align 64
  store i64 -7046029288634856825, ptr %9, align 8
  store i64 -4417276706812531889, ptr %10, align 16
  store i64 1609587929392839161, ptr %11, align 8
  store i64 -8796714831421723037, ptr %12, align 32
  store i64 2246822519, ptr %13, align 8
  store i64 2870177450012600261, ptr %14, align 16
  store i64 2654435761, ptr %15, align 8
  %75 = add i64 %2, -4734510112055689544
  %76 = sub i64 2066345149520216444, %2
  store i64 %75, ptr %6, align 64
  store i64 %76, ptr %18, align 8
  %77 = add i64 %2, -2623469361688619810
  %78 = sub i64 2262974939099578482, %2
  store i64 %77, ptr %21, align 16
  store i64 %78, ptr %22, align 8
  %79 = add i64 %2, 8711581037947681227
  %80 = sub i64 2410270004345854594, %2
  store i64 %79, ptr %25, align 32
  store i64 %80, ptr %26, align 8
  %81 = add i64 %2, -8204357891075471176
  %82 = sub i64 5487137525590930912, %2
  store i64 %81, ptr %29, align 16
  store i64 %82, ptr %30, align 8
  %83 = add i64 %2, -3818837453329782724
  %84 = sub i64 -6688317018830679928, %2
  store i64 %83, ptr %33, align 64
  store i64 %84, ptr %34, align 8
  %85 = add i64 %2, 5690594596133299313
  %86 = sub i64 -2833645246901970632, %2
  store i64 %85, ptr %37, align 16
  store i64 %86, ptr %38, align 8
  %87 = add i64 %2, 4554437623014685352
  %88 = sub i64 2111919702937427193, %2
  store i64 %87, ptr %41, align 32
  store i64 %88, ptr %42, align 8
  %89 = add i64 %2, 3556072174620004746
  %90 = sub i64 7238261902898274248, %2
  store i64 %89, ptr %45, align 16
  store i64 %90, ptr %46, align 8
  %91 = add i64 %2, -4329134394285701654
  %92 = sub i64 -1485321483350670907, %2
  store i64 %91, ptr %49, align 64
  store i64 %92, ptr %50, align 8
  %93 = add i64 %2, 5321830579834785047
  %94 = sub i64 -7032137544937171245, %2
  store i64 %93, ptr %53, align 16
  store i64 %94, ptr %54, align 8
  %95 = add i64 %2, -242834301215959509
  %96 = sub i64 -3588858202114426737, %2
  store i64 %95, ptr %57, align 32
  store i64 %96, ptr %58, align 8
  %97 = add i64 %2, 2883454493032893253
  %98 = sub i64 9097354517224871855, %2
  store i64 %97, ptr %61, align 16
  store i64 %98, ptr %62, align 8
  br i1 %63, label %100, label %99

99:                                               ; preds = %65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(100) %7, ptr noundef nonnull readonly align 1 dereferenceable(100) %0, i64 range(i64 100, 151) 100, i1 false)
  br label %100

100:                                              ; preds = %65, %99
  %101 = phi i64 [ 250, %99 ], [ 150, %65 ]
  %102 = phi i32 [ 100, %99 ], [ 0, %65 ]
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %105 = getelementptr inbounds nuw i8, ptr %7, i64 %103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(150) %105, ptr noundef nonnull readonly align 1 dereferenceable(150) %104, i64 range(i64 100, 151) 150, i1 false)
  %106 = add nuw nsw i32 %102, 150
  %107 = getelementptr inbounds nuw i8, ptr %3, i64 560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %107, ptr noundef nonnull readonly align 64 dereferenceable(192) %6, i64 192, i1 false)
  %108 = getelementptr inbounds nuw i8, ptr %3, i64 752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %108, ptr noundef nonnull readonly align 64 dereferenceable(64) %5, i64 64, i1 false)
  %109 = getelementptr inbounds nuw i8, ptr %3, i64 816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %109, ptr noundef nonnull readonly align 64 dereferenceable(256) %7, i64 256, i1 false)
  %110 = zext nneg i32 %106 to i64
  %111 = getelementptr inbounds nuw i8, ptr %3, i64 1072
  store i64 %110, ptr %111, align 8
  %112 = getelementptr inbounds nuw i8, ptr %3, i64 1080
  store i64 %101, ptr %112, align 8
  %113 = getelementptr inbounds nuw i8, ptr %3, i64 1088
  store i64 %2, ptr %113, align 8
  %114 = getelementptr inbounds nuw i8, ptr %3, i64 1096
  store i64 128, ptr %114, align 8
  %115 = getelementptr inbounds nuw i8, ptr %3, i64 1104
  store i64 16, ptr %115, align 8
  %116 = getelementptr inbounds nuw i8, ptr %3, i64 1112
  store i64 0, ptr %116, align 8
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
