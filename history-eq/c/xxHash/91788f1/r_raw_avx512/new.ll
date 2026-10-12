; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/91788f1/wrap_raw.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/91788f1/wrap_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_acc_n1(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noundef readonly %9, ptr noundef readonly %10) local_unnamed_addr #0 {
  %12 = insertelement <8 x i64> poison, i64 %1, i64 0
  %13 = insertelement <8 x i64> %12, i64 %2, i64 1
  %14 = insertelement <8 x i64> %13, i64 %3, i64 2
  %15 = insertelement <8 x i64> %14, i64 %4, i64 3
  %16 = insertelement <8 x i64> %15, i64 %5, i64 4
  %17 = insertelement <8 x i64> %16, i64 %6, i64 5
  %18 = insertelement <8 x i64> %17, i64 %7, i64 6
  %19 = insertelement <8 x i64> %18, i64 %8, i64 7
  %20 = getelementptr inbounds nuw i8, ptr %9, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %20, i32 0, i32 3, i32 1)
  %21 = load <8 x i64>, ptr %9, align 1
  %22 = load <8 x i64>, ptr %10, align 1
  %23 = xor <8 x i64> %22, %21
  %24 = bitcast <8 x i64> %23 to <16 x i32>
  %25 = shufflevector <16 x i32> %24, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %26 = bitcast <16 x i32> %25 to <8 x i64>
  %27 = and <8 x i64> %23, splat (i64 4294967295)
  %28 = and <8 x i64> %26, splat (i64 4294967295)
  %29 = mul nuw <8 x i64> %28, %27
  %30 = shufflevector <8 x i64> %21, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %31 = add <8 x i64> %19, %30
  %32 = add <8 x i64> %31, %29
  store <8 x i64> %32, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_acc_n2(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noundef readonly %9, ptr noundef readonly %10) local_unnamed_addr #0 {
  %12 = insertelement <8 x i64> poison, i64 %1, i64 0
  %13 = insertelement <8 x i64> %12, i64 %2, i64 1
  %14 = insertelement <8 x i64> %13, i64 %3, i64 2
  %15 = insertelement <8 x i64> %14, i64 %4, i64 3
  %16 = insertelement <8 x i64> %15, i64 %5, i64 4
  %17 = insertelement <8 x i64> %16, i64 %6, i64 5
  %18 = insertelement <8 x i64> %17, i64 %7, i64 6
  %19 = insertelement <8 x i64> %18, i64 %8, i64 7
  %20 = getelementptr inbounds nuw i8, ptr %9, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %20, i32 0, i32 3, i32 1)
  %21 = load <8 x i64>, ptr %9, align 1
  %22 = load <8 x i64>, ptr %10, align 1
  %23 = xor <8 x i64> %22, %21
  %24 = bitcast <8 x i64> %23 to <16 x i32>
  %25 = shufflevector <16 x i32> %24, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %26 = bitcast <16 x i32> %25 to <8 x i64>
  %27 = and <8 x i64> %23, splat (i64 4294967295)
  %28 = and <8 x i64> %26, splat (i64 4294967295)
  %29 = mul nuw <8 x i64> %28, %27
  %30 = shufflevector <8 x i64> %21, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %31 = add <8 x i64> %19, %30
  %32 = add <8 x i64> %31, %29
  %33 = getelementptr inbounds nuw i8, ptr %9, i64 64
  %34 = getelementptr inbounds nuw i8, ptr %9, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %34, i32 0, i32 3, i32 1)
  %35 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %36 = load <8 x i64>, ptr %33, align 1
  %37 = load <8 x i64>, ptr %35, align 1
  %38 = xor <8 x i64> %37, %36
  %39 = bitcast <8 x i64> %38 to <16 x i32>
  %40 = shufflevector <16 x i32> %39, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %41 = bitcast <16 x i32> %40 to <8 x i64>
  %42 = and <8 x i64> %38, splat (i64 4294967295)
  %43 = and <8 x i64> %41, splat (i64 4294967295)
  %44 = mul nuw <8 x i64> %43, %42
  %45 = shufflevector <8 x i64> %36, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %46 = add <8 x i64> %32, %45
  %47 = add <8 x i64> %46, %44
  store <8 x i64> %47, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_acc_n4(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noundef readonly %9, ptr noundef readonly %10) local_unnamed_addr #0 {
  %12 = insertelement <8 x i64> poison, i64 %1, i64 0
  %13 = insertelement <8 x i64> %12, i64 %2, i64 1
  %14 = insertelement <8 x i64> %13, i64 %3, i64 2
  %15 = insertelement <8 x i64> %14, i64 %4, i64 3
  %16 = insertelement <8 x i64> %15, i64 %5, i64 4
  %17 = insertelement <8 x i64> %16, i64 %6, i64 5
  %18 = insertelement <8 x i64> %17, i64 %7, i64 6
  %19 = insertelement <8 x i64> %18, i64 %8, i64 7
  %20 = getelementptr inbounds nuw i8, ptr %9, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %20, i32 0, i32 3, i32 1)
  %21 = load <8 x i64>, ptr %9, align 1
  %22 = load <8 x i64>, ptr %10, align 1
  %23 = xor <8 x i64> %22, %21
  %24 = bitcast <8 x i64> %23 to <16 x i32>
  %25 = shufflevector <16 x i32> %24, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %26 = bitcast <16 x i32> %25 to <8 x i64>
  %27 = and <8 x i64> %23, splat (i64 4294967295)
  %28 = and <8 x i64> %26, splat (i64 4294967295)
  %29 = mul nuw <8 x i64> %28, %27
  %30 = shufflevector <8 x i64> %21, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %31 = add <8 x i64> %19, %30
  %32 = add <8 x i64> %31, %29
  %33 = getelementptr inbounds nuw i8, ptr %9, i64 64
  %34 = getelementptr inbounds nuw i8, ptr %9, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %34, i32 0, i32 3, i32 1)
  %35 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %36 = load <8 x i64>, ptr %33, align 1
  %37 = load <8 x i64>, ptr %35, align 1
  %38 = xor <8 x i64> %37, %36
  %39 = bitcast <8 x i64> %38 to <16 x i32>
  %40 = shufflevector <16 x i32> %39, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %41 = bitcast <16 x i32> %40 to <8 x i64>
  %42 = and <8 x i64> %38, splat (i64 4294967295)
  %43 = and <8 x i64> %41, splat (i64 4294967295)
  %44 = mul nuw <8 x i64> %43, %42
  %45 = shufflevector <8 x i64> %36, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %46 = add <8 x i64> %32, %45
  %47 = add <8 x i64> %46, %44
  %48 = getelementptr inbounds nuw i8, ptr %9, i64 128
  %49 = getelementptr inbounds nuw i8, ptr %9, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %49, i32 0, i32 3, i32 1)
  %50 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %51 = load <8 x i64>, ptr %48, align 1
  %52 = load <8 x i64>, ptr %50, align 1
  %53 = xor <8 x i64> %52, %51
  %54 = bitcast <8 x i64> %53 to <16 x i32>
  %55 = shufflevector <16 x i32> %54, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %56 = bitcast <16 x i32> %55 to <8 x i64>
  %57 = and <8 x i64> %53, splat (i64 4294967295)
  %58 = and <8 x i64> %56, splat (i64 4294967295)
  %59 = mul nuw <8 x i64> %58, %57
  %60 = shufflevector <8 x i64> %51, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %61 = add <8 x i64> %47, %60
  %62 = add <8 x i64> %61, %59
  %63 = getelementptr inbounds nuw i8, ptr %9, i64 192
  %64 = getelementptr inbounds nuw i8, ptr %9, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %64, i32 0, i32 3, i32 1)
  %65 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %66 = load <8 x i64>, ptr %63, align 1
  %67 = load <8 x i64>, ptr %65, align 1
  %68 = xor <8 x i64> %67, %66
  %69 = bitcast <8 x i64> %68 to <16 x i32>
  %70 = shufflevector <16 x i32> %69, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %71 = bitcast <16 x i32> %70 to <8 x i64>
  %72 = and <8 x i64> %68, splat (i64 4294967295)
  %73 = and <8 x i64> %71, splat (i64 4294967295)
  %74 = mul nuw <8 x i64> %73, %72
  %75 = shufflevector <8 x i64> %66, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %76 = add <8 x i64> %62, %75
  %77 = add <8 x i64> %76, %74
  store <8 x i64> %77, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+avx512f,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_accumulate_avx512: argument 1"}
!7 = distinct !{!7, !"XXH3_accumulate_avx512"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"XXH3_accumulate_avx512: argument 2"}
!10 = !{!11, !9}
!11 = distinct !{!11, !7, !"XXH3_accumulate_avx512: argument 0"}
!12 = !{!11, !6}
!13 = !{!14}
!14 = distinct !{!14, !15, !"XXH3_accumulate_avx512: argument 1"}
!15 = distinct !{!15, !"XXH3_accumulate_avx512"}
!16 = !{!17}
!17 = distinct !{!17, !15, !"XXH3_accumulate_avx512: argument 2"}
!18 = !{!19, !17}
!19 = distinct !{!19, !15, !"XXH3_accumulate_avx512: argument 0"}
!20 = !{!19, !14}
!21 = !{!22}
!22 = distinct !{!22, !23, !"XXH3_accumulate_avx512: argument 1"}
!23 = distinct !{!23, !"XXH3_accumulate_avx512"}
!24 = !{!25}
!25 = distinct !{!25, !23, !"XXH3_accumulate_avx512: argument 2"}
!26 = !{!27, !25}
!27 = distinct !{!27, !23, !"XXH3_accumulate_avx512: argument 0"}
!28 = !{!27, !22}
