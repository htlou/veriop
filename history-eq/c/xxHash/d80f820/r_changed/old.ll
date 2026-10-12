; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/d80f820/wrap_rawsimd.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/d80f820/wrap_rawsimd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_acc512(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24) local_unnamed_addr #0 {
  %26 = insertelement <4 x i64> poison, i64 %1, i64 0
  %27 = insertelement <4 x i64> %26, i64 %2, i64 1
  %28 = insertelement <4 x i64> %27, i64 %3, i64 2
  %29 = insertelement <4 x i64> %28, i64 %4, i64 3
  %30 = insertelement <4 x i64> poison, i64 %5, i64 0
  %31 = insertelement <4 x i64> %30, i64 %6, i64 1
  %32 = insertelement <4 x i64> %31, i64 %7, i64 2
  %33 = insertelement <4 x i64> %32, i64 %8, i64 3
  %34 = insertelement <4 x i64> poison, i64 %9, i64 0
  %35 = insertelement <4 x i64> %34, i64 %10, i64 1
  %36 = insertelement <4 x i64> %35, i64 %11, i64 2
  %37 = insertelement <4 x i64> %36, i64 %12, i64 3
  %38 = insertelement <4 x i64> poison, i64 %13, i64 0
  %39 = insertelement <4 x i64> %38, i64 %14, i64 1
  %40 = insertelement <4 x i64> %39, i64 %15, i64 2
  %41 = insertelement <4 x i64> %40, i64 %16, i64 3
  %42 = insertelement <4 x i64> poison, i64 %17, i64 0
  %43 = insertelement <4 x i64> %42, i64 %18, i64 1
  %44 = insertelement <4 x i64> %43, i64 %19, i64 2
  %45 = insertelement <4 x i64> %44, i64 %20, i64 3
  %46 = insertelement <4 x i64> poison, i64 %21, i64 0
  %47 = insertelement <4 x i64> %46, i64 %22, i64 1
  %48 = insertelement <4 x i64> %47, i64 %23, i64 2
  %49 = insertelement <4 x i64> %48, i64 %24, i64 3
  %50 = xor <4 x i64> %45, %37
  %51 = bitcast <4 x i64> %50 to <8 x i32>
  %52 = shufflevector <8 x i32> %51, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %53 = bitcast <8 x i32> %52 to <4 x i64>
  %54 = and <4 x i64> %50, splat (i64 4294967295)
  %55 = and <4 x i64> %53, splat (i64 4294967295)
  %56 = mul nuw <4 x i64> %55, %54
  %57 = shufflevector <4 x i64> %37, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %58 = add <4 x i64> %29, %57
  %59 = add <4 x i64> %58, %56
  %60 = xor <4 x i64> %49, %41
  %61 = bitcast <4 x i64> %60 to <8 x i32>
  %62 = shufflevector <8 x i32> %61, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %63 = bitcast <8 x i32> %62 to <4 x i64>
  %64 = and <4 x i64> %60, splat (i64 4294967295)
  %65 = and <4 x i64> %63, splat (i64 4294967295)
  %66 = mul nuw <4 x i64> %65, %64
  %67 = shufflevector <4 x i64> %41, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %68 = add <4 x i64> %33, %67
  %69 = add <4 x i64> %68, %66
  store <4 x i64> %59, ptr %0, align 8
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> %69, ptr %70, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_scramble(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = insertelement <4 x i64> poison, i64 %1, i64 0
  %19 = insertelement <4 x i64> %18, i64 %2, i64 1
  %20 = insertelement <4 x i64> %19, i64 %3, i64 2
  %21 = insertelement <4 x i64> %20, i64 %4, i64 3
  %22 = insertelement <4 x i64> poison, i64 %5, i64 0
  %23 = insertelement <4 x i64> %22, i64 %6, i64 1
  %24 = insertelement <4 x i64> %23, i64 %7, i64 2
  %25 = insertelement <4 x i64> %24, i64 %8, i64 3
  %26 = insertelement <4 x i64> poison, i64 %9, i64 0
  %27 = insertelement <4 x i64> %26, i64 %10, i64 1
  %28 = insertelement <4 x i64> %27, i64 %11, i64 2
  %29 = insertelement <4 x i64> %28, i64 %12, i64 3
  %30 = insertelement <4 x i64> poison, i64 %13, i64 0
  %31 = insertelement <4 x i64> %30, i64 %14, i64 1
  %32 = insertelement <4 x i64> %31, i64 %15, i64 2
  %33 = insertelement <4 x i64> %32, i64 %16, i64 3
  %34 = lshr <4 x i64> %21, splat (i64 47)
  %35 = xor <4 x i64> %29, %34
  %36 = xor <4 x i64> %35, %21
  %37 = bitcast <4 x i64> %36 to <8 x i32>
  %38 = shufflevector <8 x i32> %37, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %39 = bitcast <8 x i32> %38 to <4 x i64>
  %40 = and <4 x i64> %36, splat (i64 4294967295)
  %41 = mul nuw <4 x i64> %40, splat (i64 2654435761)
  %42 = mul <4 x i64> %39, splat (i64 -7046029290881679360)
  %43 = add <4 x i64> %42, %41
  %44 = lshr <4 x i64> %25, splat (i64 47)
  %45 = xor <4 x i64> %33, %44
  %46 = xor <4 x i64> %45, %25
  %47 = bitcast <4 x i64> %46 to <8 x i32>
  %48 = shufflevector <8 x i32> %47, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %49 = bitcast <8 x i32> %48 to <4 x i64>
  %50 = and <4 x i64> %46, splat (i64 4294967295)
  %51 = mul nuw <4 x i64> %50, splat (i64 2654435761)
  %52 = mul <4 x i64> %49, splat (i64 -7046029290881679360)
  %53 = add <4 x i64> %52, %51
  store <4 x i64> %43, ptr %0, align 8
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> %53, ptr %54, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @target_initsec(ptr noundef writeonly initializes((0, 192)) %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = alloca [192 x i8], align 64
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #5
  call void @llvm.prefetch.p0(ptr nonnull %3, i32 0, i32 3, i32 1)
  %4 = sub i64 0, %1
  %5 = insertelement <4 x i64> poison, i64 %1, i64 0
  %6 = insertelement <4 x i64> %5, i64 %4, i64 1
  %7 = insertelement <4 x i64> %6, i64 %1, i64 2
  %8 = insertelement <4 x i64> %7, i64 %4, i64 3
  %9 = freeze ptr %3
  %10 = add <4 x i64> %8, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  store <4 x i64> %10, ptr %9, align 32
  %11 = add <4 x i64> %8, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store <4 x i64> %11, ptr %12, align 32
  %13 = add <4 x i64> %8, <i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313, i64 -2833645246901970632>
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 64
  store <4 x i64> %13, ptr %14, align 32
  %15 = add <4 x i64> %8, <i64 4554437623014685352, i64 2111919702937427193, i64 3556072174620004746, i64 7238261902898274248>
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 96
  store <4 x i64> %15, ptr %16, align 32
  %17 = add <4 x i64> %8, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %18 = getelementptr inbounds nuw i8, ptr %9, i64 128
  store <4 x i64> %17, ptr %18, align 32
  %19 = add <4 x i64> %8, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %20 = getelementptr inbounds nuw i8, ptr %9, i64 160
  store <4 x i64> %19, ptr %20, align 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(192) %0, ptr noundef nonnull align 64 dereferenceable(192) %3, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 2152062389}
