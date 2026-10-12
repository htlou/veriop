; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/662b223/wrap_reset.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/662b223/wrap_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_INLINE_XXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

; Function Attrs: nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_rst_seed(i64 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.XXH_INLINE_XXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %3) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %3, i8 0, i64 576, i1 false)
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %5, label %36

5:                                                ; preds = %2
  store i64 3266489917, ptr %3, align 64
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -7046029288634856825, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 -4417276706812531889, ptr %7, align 16
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1609587929392839161, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 -8796714831421723037, ptr %9, align 32
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 2246822519, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 2870177450012600261, ptr %11, align 16
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 2654435761, ptr %12, align 8
  store i64 -4734510112055689544, ptr %1, align 8
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 2066345149520216444, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 -2623469361688619810, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 2262974939099578482, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 8711581037947681227, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 2410270004345854594, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 -8204357891075471176, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 5487137525590930912, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 -3818837453329782724, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 -6688317018830679928, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 5690594596133299313, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 -2833645246901970632, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 4554437623014685352, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 2111919702937427193, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 3556072174620004746, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 7238261902898274248, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 -4329134394285701654, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 -1485321483350670907, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i64 5321830579834785047, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 -7032137544937171245, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 -242834301215959509, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 -3588858202114426737, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i64 2883454493032893253, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i64 9097354517224871855, ptr %35, align 8
  br label %63

36:                                               ; preds = %2
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %37, i32 0, i32 3, i32 1)
  %38 = sub nsw i64 0, %0
  %39 = insertelement <4 x i64> poison, i64 %0, i64 0
  %40 = insertelement <4 x i64> %39, i64 %38, i64 1
  %41 = insertelement <4 x i64> %40, i64 %0, i64 2
  %42 = insertelement <4 x i64> %41, i64 %38, i64 3
  %43 = freeze ptr %37
  %44 = add <4 x i64> %42, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %44, ptr %43, align 32
  %45 = add <4 x i64> %42, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %46 = getelementptr inbounds nuw i8, ptr %43, i64 32
  store <4 x i64> %45, ptr %46, align 32
  %47 = add <4 x i64> %42, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %48 = getelementptr inbounds nuw i8, ptr %43, i64 64
  store <4 x i64> %47, ptr %48, align 32
  %49 = add <4 x i64> %42, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %50 = getelementptr inbounds nuw i8, ptr %43, i64 96
  store <4 x i64> %49, ptr %50, align 32
  %51 = add <4 x i64> %42, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %52 = getelementptr inbounds nuw i8, ptr %43, i64 128
  store <4 x i64> %51, ptr %52, align 32
  %53 = add <4 x i64> %42, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %54 = getelementptr inbounds nuw i8, ptr %43, i64 160
  store <4 x i64> %53, ptr %54, align 32
  store i64 3266489917, ptr %3, align 64
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -7046029288634856825, ptr %55, align 8
  %56 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 -4417276706812531889, ptr %56, align 16
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1609587929392839161, ptr %57, align 8
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 -8796714831421723037, ptr %58, align 32
  %59 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 2246822519, ptr %59, align 8
  %60 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 2870177450012600261, ptr %60, align 16
  %61 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 2654435761, ptr %61, align 8
  %62 = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull readonly align 64 dereferenceable(192) %62, i64 192, i1 false)
  br label %63

63:                                               ; preds = %5, %36
  %64 = getelementptr inbounds nuw i8, ptr %1, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %64, ptr noundef nonnull readonly align 64 dereferenceable(64) %3, i64 64, i1 false)
  %65 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %66 = getelementptr inbounds nuw i8, ptr %1, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %65, i8 0, i64 16, i1 false)
  store i64 %0, ptr %66, align 8
  %67 = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 128, ptr %67, align 8
  %68 = getelementptr inbounds nuw i8, ptr %1, i64 288
  store i64 16, ptr %68, align 8
  %69 = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 0, ptr %69, align 8
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %3) #5
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
!5 = !{i64 547112}
