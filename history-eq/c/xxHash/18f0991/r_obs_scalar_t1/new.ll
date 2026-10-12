; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_obs.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_obs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_obs_seed_250(ptr noundef readonly %0, i64 noundef %1, ptr noundef writeonly initializes((0, 560)) %2) local_unnamed_addr #0 {
  %4 = alloca [256 x i8], align 64
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(256) %4, i8 0, i64 256, i1 false)
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %3
  %7 = add i64 %1, -4734510112055689544
  %8 = sub i64 2066345149520216444, %1
  %9 = add i64 %1, -2623469361688619810
  %10 = sub i64 2262974939099578482, %1
  %11 = add i64 %1, 8711581037947681227
  %12 = sub i64 2410270004345854594, %1
  %13 = add i64 %1, -8204357891075471176
  %14 = sub i64 5487137525590930912, %1
  %15 = add i64 %1, -3818837453329782724
  %16 = sub i64 -6688317018830679928, %1
  %17 = add i64 %1, 5690594596133299313
  %18 = sub i64 -2833645246901970632, %1
  %19 = add i64 %1, 4554437623014685352
  %20 = sub i64 2111919702937427193, %1
  %21 = add i64 %1, 3556072174620004746
  %22 = sub i64 7238261902898274248, %1
  %23 = add i64 %1, -4329134394285701654
  %24 = sub i64 -1485321483350670907, %1
  %25 = add i64 %1, 5321830579834785047
  %26 = sub i64 -7032137544937171245, %1
  %27 = add i64 %1, -242834301215959509
  %28 = sub i64 -3588858202114426737, %1
  %29 = add i64 %1, 2883454493032893253
  %30 = sub i64 9097354517224871855, %1
  br label %31

31:                                               ; preds = %3, %6
  %32 = phi i64 [ 0, %3 ], [ %7, %6 ]
  %33 = phi i64 [ 0, %3 ], [ %8, %6 ]
  %34 = phi i64 [ 0, %3 ], [ %9, %6 ]
  %35 = phi i64 [ 0, %3 ], [ %10, %6 ]
  %36 = phi i64 [ 0, %3 ], [ %11, %6 ]
  %37 = phi i64 [ 0, %3 ], [ %12, %6 ]
  %38 = phi i64 [ 0, %3 ], [ %13, %6 ]
  %39 = phi i64 [ 0, %3 ], [ %14, %6 ]
  %40 = phi i64 [ 0, %3 ], [ %15, %6 ]
  %41 = phi i64 [ 0, %3 ], [ %16, %6 ]
  %42 = phi i64 [ 0, %3 ], [ %17, %6 ]
  %43 = phi i64 [ 0, %3 ], [ %18, %6 ]
  %44 = phi i64 [ 0, %3 ], [ %19, %6 ]
  %45 = phi i64 [ 0, %3 ], [ %20, %6 ]
  %46 = phi i64 [ 0, %3 ], [ %21, %6 ]
  %47 = phi i64 [ 0, %3 ], [ %22, %6 ]
  %48 = phi i64 [ 0, %3 ], [ %23, %6 ]
  %49 = phi i64 [ 0, %3 ], [ %24, %6 ]
  %50 = phi i64 [ 0, %3 ], [ %25, %6 ]
  %51 = phi i64 [ 0, %3 ], [ %26, %6 ]
  %52 = phi i64 [ 0, %3 ], [ %27, %6 ]
  %53 = phi i64 [ 0, %3 ], [ %28, %6 ]
  %54 = phi i64 [ 0, %3 ], [ %29, %6 ]
  %55 = phi i64 [ 0, %3 ], [ %30, %6 ]
  %56 = icmp eq ptr %0, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(250) %4, ptr noundef nonnull align 1 dereferenceable(250) %0, i64 250, i1 false)
  br label %58

58:                                               ; preds = %31, %57
  %59 = phi i64 [ 0, %31 ], [ 250, %57 ]
  br i1 %5, label %84, label %60

60:                                               ; preds = %58
  store i64 %32, ptr %2, align 8
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %33, ptr %61, align 8
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %34, ptr %62, align 8
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %35, ptr %63, align 8
  %64 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %36, ptr %64, align 8
  %65 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %37, ptr %65, align 8
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %38, ptr %66, align 8
  %67 = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 %39, ptr %67, align 8
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %40, ptr %68, align 8
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 %41, ptr %69, align 8
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 %42, ptr %70, align 8
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %43, ptr %71, align 8
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i64 %44, ptr %72, align 8
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %45, ptr %73, align 8
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i64 %46, ptr %74, align 8
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i64 %47, ptr %75, align 8
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i64 %48, ptr %76, align 8
  %77 = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i64 %49, ptr %77, align 8
  %78 = getelementptr inbounds nuw i8, ptr %2, i64 144
  store i64 %50, ptr %78, align 8
  %79 = getelementptr inbounds nuw i8, ptr %2, i64 152
  store i64 %51, ptr %79, align 8
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 160
  store i64 %52, ptr %80, align 8
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i64 %53, ptr %81, align 8
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 176
  store i64 %54, ptr %82, align 8
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 184
  store i64 %55, ptr %83, align 8
  br label %108

84:                                               ; preds = %58
  store i64 -4734510112055689544, ptr %2, align 8
  %85 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2066345149520216444, ptr %85, align 8
  %86 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 -2623469361688619810, ptr %86, align 8
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 2262974939099578482, ptr %87, align 8
  %88 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 8711581037947681227, ptr %88, align 8
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 2410270004345854594, ptr %89, align 8
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 -8204357891075471176, ptr %90, align 8
  %91 = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 5487137525590930912, ptr %91, align 8
  %92 = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 -3818837453329782724, ptr %92, align 8
  %93 = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 -6688317018830679928, ptr %93, align 8
  %94 = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 5690594596133299313, ptr %94, align 8
  %95 = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 -2833645246901970632, ptr %95, align 8
  %96 = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i64 4554437623014685352, ptr %96, align 8
  %97 = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 2111919702937427193, ptr %97, align 8
  %98 = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i64 3556072174620004746, ptr %98, align 8
  %99 = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i64 7238261902898274248, ptr %99, align 8
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i64 -4329134394285701654, ptr %100, align 8
  %101 = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i64 -1485321483350670907, ptr %101, align 8
  %102 = getelementptr inbounds nuw i8, ptr %2, i64 144
  store i64 5321830579834785047, ptr %102, align 8
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 152
  store i64 -7032137544937171245, ptr %103, align 8
  %104 = getelementptr inbounds nuw i8, ptr %2, i64 160
  store i64 -242834301215959509, ptr %104, align 8
  %105 = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i64 -3588858202114426737, ptr %105, align 8
  %106 = getelementptr inbounds nuw i8, ptr %2, i64 176
  store i64 2883454493032893253, ptr %106, align 8
  %107 = getelementptr inbounds nuw i8, ptr %2, i64 184
  store i64 9097354517224871855, ptr %107, align 8
  br label %108

108:                                              ; preds = %60, %84
  %109 = getelementptr inbounds nuw i8, ptr %2, i64 192
  store i64 3266489917, ptr %109, align 8
  %110 = getelementptr inbounds nuw i8, ptr %2, i64 200
  store i64 -7046029288634856825, ptr %110, align 8
  %111 = getelementptr inbounds nuw i8, ptr %2, i64 208
  store i64 -4417276706812531889, ptr %111, align 8
  %112 = getelementptr inbounds nuw i8, ptr %2, i64 216
  store i64 1609587929392839161, ptr %112, align 8
  %113 = getelementptr inbounds nuw i8, ptr %2, i64 224
  store i64 -8796714831421723037, ptr %113, align 8
  %114 = getelementptr inbounds nuw i8, ptr %2, i64 232
  store i64 2246822519, ptr %114, align 8
  %115 = getelementptr inbounds nuw i8, ptr %2, i64 240
  store i64 2870177450012600261, ptr %115, align 8
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 248
  store i64 2654435761, ptr %116, align 8
  %117 = getelementptr inbounds nuw i8, ptr %2, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %117, ptr noundef nonnull align 64 dereferenceable(256) %4, i64 256, i1 false)
  %118 = getelementptr inbounds nuw i8, ptr %2, i64 512
  store i64 %59, ptr %118, align 8
  %119 = getelementptr inbounds nuw i8, ptr %2, i64 520
  store i64 %59, ptr %119, align 8
  %120 = getelementptr inbounds nuw i8, ptr %2, i64 528
  store i64 %1, ptr %120, align 8
  %121 = getelementptr inbounds nuw i8, ptr %2, i64 536
  store i64 128, ptr %121, align 8
  %122 = getelementptr inbounds nuw i8, ptr %2, i64 544
  store i64 16, ptr %122, align 8
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 552
  store i64 0, ptr %123, align 8
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
