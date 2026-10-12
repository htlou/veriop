; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_obs.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/18f0991/wrap_obs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_obs_seed_250(ptr noundef readonly %0, i64 noundef %1, ptr noundef writeonly initializes((0, 560)) %2) local_unnamed_addr #0 {
  %4 = alloca { [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }, align 64
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(320) %4, i8 0, i64 320, i1 false)
  %5 = icmp eq ptr %0, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(250) %4, ptr noundef nonnull align 1 dereferenceable(250) %0, i64 250, i1 false)
  br label %7

7:                                                ; preds = %3, %6
  %8 = phi i64 [ 0, %3 ], [ 250, %6 ]
  %9 = sub i64 9097354517224871855, %1
  %10 = add i64 %1, 2883454493032893253
  %11 = sub i64 -3588858202114426737, %1
  %12 = add i64 %1, -242834301215959509
  %13 = sub i64 -7032137544937171245, %1
  %14 = add i64 %1, 5321830579834785047
  %15 = sub i64 -1485321483350670907, %1
  %16 = add i64 %1, -4329134394285701654
  %17 = sub i64 7238261902898274248, %1
  %18 = add i64 %1, 3556072174620004746
  %19 = sub i64 2111919702937427193, %1
  %20 = add i64 %1, 4554437623014685352
  %21 = sub i64 -2833645246901970632, %1
  %22 = add i64 %1, 5690594596133299313
  %23 = sub i64 -6688317018830679928, %1
  %24 = add i64 %1, -3818837453329782724
  %25 = sub i64 5487137525590930912, %1
  %26 = add i64 %1, -8204357891075471176
  %27 = sub i64 2410270004345854594, %1
  %28 = add i64 %1, 8711581037947681227
  %29 = sub i64 2262974939099578482, %1
  %30 = add i64 %1, -2623469361688619810
  %31 = sub i64 2066345149520216444, %1
  %32 = add i64 %1, -4734510112055689544
  store i64 %32, ptr %2, align 8
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %31, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %30, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %29, ptr %35, align 8
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %28, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %27, ptr %37, align 8
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %26, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 %25, ptr %39, align 8
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %24, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 %23, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 %22, ptr %42, align 8
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %21, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i64 %20, ptr %44, align 8
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %19, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i64 %18, ptr %46, align 8
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i64 %17, ptr %47, align 8
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i64 %16, ptr %48, align 8
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i64 %15, ptr %49, align 8
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 144
  store i64 %14, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 152
  store i64 %13, ptr %51, align 8
  %52 = getelementptr inbounds nuw i8, ptr %2, i64 160
  store i64 %12, ptr %52, align 8
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i64 %11, ptr %53, align 8
  %54 = getelementptr inbounds nuw i8, ptr %2, i64 176
  store i64 %10, ptr %54, align 8
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 184
  store i64 %9, ptr %55, align 8
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 192
  store i64 3266489917, ptr %56, align 8
  %57 = getelementptr inbounds nuw i8, ptr %2, i64 200
  store i64 -7046029288634856825, ptr %57, align 8
  %58 = getelementptr inbounds nuw i8, ptr %2, i64 208
  store i64 -4417276706812531889, ptr %58, align 8
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 216
  store i64 1609587929392839161, ptr %59, align 8
  %60 = getelementptr inbounds nuw i8, ptr %2, i64 224
  store i64 -8796714831421723037, ptr %60, align 8
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 232
  store i64 2246822519, ptr %61, align 8
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 240
  store i64 2870177450012600261, ptr %62, align 8
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 248
  store i64 2654435761, ptr %63, align 8
  %64 = getelementptr inbounds nuw i8, ptr %2, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %64, ptr noundef nonnull align 64 dereferenceable(256) %4, i64 256, i1 false)
  %65 = getelementptr inbounds nuw i8, ptr %2, i64 512
  store i64 %8, ptr %65, align 8
  %66 = getelementptr inbounds nuw i8, ptr %2, i64 520
  store i64 %8, ptr %66, align 8
  %67 = getelementptr inbounds nuw i8, ptr %2, i64 528
  store i64 %1, ptr %67, align 8
  %68 = getelementptr inbounds nuw i8, ptr %2, i64 536
  store i64 128, ptr %68, align 8
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 544
  store i64 16, ptr %69, align 8
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 552
  store i64 0, ptr %70, align 8
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %4)
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
