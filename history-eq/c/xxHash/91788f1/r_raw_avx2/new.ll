; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/91788f1/wrap_raw.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/91788f1/wrap_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_acc_n1(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noundef readonly %9, ptr noundef readonly %10) local_unnamed_addr #0 {
  %12 = insertelement <4 x i64> poison, i64 %1, i64 0
  %13 = insertelement <4 x i64> %12, i64 %2, i64 1
  %14 = insertelement <4 x i64> %13, i64 %3, i64 2
  %15 = insertelement <4 x i64> %14, i64 %4, i64 3
  %16 = insertelement <4 x i64> poison, i64 %5, i64 0
  %17 = insertelement <4 x i64> %16, i64 %6, i64 1
  %18 = insertelement <4 x i64> %17, i64 %7, i64 2
  %19 = insertelement <4 x i64> %18, i64 %8, i64 3
  %20 = getelementptr inbounds nuw i8, ptr %9, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %20, i32 0, i32 3, i32 1)
  %21 = load <4 x i64>, ptr %9, align 1
  %22 = load <4 x i64>, ptr %10, align 1
  %23 = xor <4 x i64> %22, %21
  %24 = bitcast <4 x i64> %23 to <8 x i32>
  %25 = shufflevector <8 x i32> %24, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %26 = bitcast <8 x i32> %25 to <4 x i64>
  %27 = and <4 x i64> %23, splat (i64 4294967295)
  %28 = and <4 x i64> %26, splat (i64 4294967295)
  %29 = mul nuw <4 x i64> %28, %27
  %30 = shufflevector <4 x i64> %21, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %31 = add <4 x i64> %15, %30
  %32 = add <4 x i64> %31, %29
  %33 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %34 = load <4 x i64>, ptr %33, align 1
  %35 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %36 = load <4 x i64>, ptr %35, align 1
  %37 = xor <4 x i64> %36, %34
  %38 = bitcast <4 x i64> %37 to <8 x i32>
  %39 = shufflevector <8 x i32> %38, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %40 = bitcast <8 x i32> %39 to <4 x i64>
  %41 = and <4 x i64> %37, splat (i64 4294967295)
  %42 = and <4 x i64> %40, splat (i64 4294967295)
  %43 = mul nuw <4 x i64> %42, %41
  %44 = shufflevector <4 x i64> %34, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %45 = add <4 x i64> %19, %44
  %46 = add <4 x i64> %45, %43
  store <4 x i64> %32, ptr %0, align 8
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> %46, ptr %47, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_acc_n2(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noundef readonly %9, ptr noundef readonly %10) local_unnamed_addr #0 {
  %12 = insertelement <4 x i64> poison, i64 %1, i64 0
  %13 = insertelement <4 x i64> %12, i64 %2, i64 1
  %14 = insertelement <4 x i64> %13, i64 %3, i64 2
  %15 = insertelement <4 x i64> %14, i64 %4, i64 3
  %16 = insertelement <4 x i64> poison, i64 %5, i64 0
  %17 = insertelement <4 x i64> %16, i64 %6, i64 1
  %18 = insertelement <4 x i64> %17, i64 %7, i64 2
  %19 = insertelement <4 x i64> %18, i64 %8, i64 3
  %20 = getelementptr inbounds nuw i8, ptr %9, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %20, i32 0, i32 3, i32 1)
  %21 = load <4 x i64>, ptr %9, align 1
  %22 = load <4 x i64>, ptr %10, align 1
  %23 = xor <4 x i64> %22, %21
  %24 = bitcast <4 x i64> %23 to <8 x i32>
  %25 = shufflevector <8 x i32> %24, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %26 = bitcast <8 x i32> %25 to <4 x i64>
  %27 = and <4 x i64> %23, splat (i64 4294967295)
  %28 = and <4 x i64> %26, splat (i64 4294967295)
  %29 = mul nuw <4 x i64> %28, %27
  %30 = shufflevector <4 x i64> %21, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %31 = add <4 x i64> %15, %30
  %32 = add <4 x i64> %31, %29
  %33 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %34 = load <4 x i64>, ptr %33, align 1
  %35 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %36 = load <4 x i64>, ptr %35, align 1
  %37 = xor <4 x i64> %36, %34
  %38 = bitcast <4 x i64> %37 to <8 x i32>
  %39 = shufflevector <8 x i32> %38, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %40 = bitcast <8 x i32> %39 to <4 x i64>
  %41 = and <4 x i64> %37, splat (i64 4294967295)
  %42 = and <4 x i64> %40, splat (i64 4294967295)
  %43 = mul nuw <4 x i64> %42, %41
  %44 = shufflevector <4 x i64> %34, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %45 = add <4 x i64> %19, %44
  %46 = add <4 x i64> %45, %43
  %47 = getelementptr inbounds nuw i8, ptr %9, i64 64
  %48 = getelementptr inbounds nuw i8, ptr %9, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %48, i32 0, i32 3, i32 1)
  %49 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %50 = load <4 x i64>, ptr %47, align 1
  %51 = load <4 x i64>, ptr %49, align 1
  %52 = xor <4 x i64> %51, %50
  %53 = bitcast <4 x i64> %52 to <8 x i32>
  %54 = shufflevector <8 x i32> %53, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %55 = bitcast <8 x i32> %54 to <4 x i64>
  %56 = and <4 x i64> %52, splat (i64 4294967295)
  %57 = and <4 x i64> %55, splat (i64 4294967295)
  %58 = mul nuw <4 x i64> %57, %56
  %59 = shufflevector <4 x i64> %50, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %60 = add <4 x i64> %32, %59
  %61 = add <4 x i64> %60, %58
  %62 = getelementptr inbounds nuw i8, ptr %9, i64 96
  %63 = load <4 x i64>, ptr %62, align 1
  %64 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %65 = load <4 x i64>, ptr %64, align 1
  %66 = xor <4 x i64> %65, %63
  %67 = bitcast <4 x i64> %66 to <8 x i32>
  %68 = shufflevector <8 x i32> %67, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %69 = bitcast <8 x i32> %68 to <4 x i64>
  %70 = and <4 x i64> %66, splat (i64 4294967295)
  %71 = and <4 x i64> %69, splat (i64 4294967295)
  %72 = mul nuw <4 x i64> %71, %70
  %73 = shufflevector <4 x i64> %63, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %74 = add <4 x i64> %46, %73
  %75 = add <4 x i64> %74, %72
  store <4 x i64> %61, ptr %0, align 8
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> %75, ptr %76, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_acc_n4(ptr noundef writeonly initializes((0, 64)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noundef readonly %9, ptr noundef readonly %10) local_unnamed_addr #0 {
  %12 = insertelement <4 x i64> poison, i64 %1, i64 0
  %13 = insertelement <4 x i64> %12, i64 %2, i64 1
  %14 = insertelement <4 x i64> %13, i64 %3, i64 2
  %15 = insertelement <4 x i64> %14, i64 %4, i64 3
  %16 = insertelement <4 x i64> poison, i64 %5, i64 0
  %17 = insertelement <4 x i64> %16, i64 %6, i64 1
  %18 = insertelement <4 x i64> %17, i64 %7, i64 2
  %19 = insertelement <4 x i64> %18, i64 %8, i64 3
  %20 = getelementptr inbounds nuw i8, ptr %9, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %20, i32 0, i32 3, i32 1)
  %21 = load <4 x i64>, ptr %9, align 1
  %22 = load <4 x i64>, ptr %10, align 1
  %23 = xor <4 x i64> %22, %21
  %24 = bitcast <4 x i64> %23 to <8 x i32>
  %25 = shufflevector <8 x i32> %24, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %26 = bitcast <8 x i32> %25 to <4 x i64>
  %27 = and <4 x i64> %23, splat (i64 4294967295)
  %28 = and <4 x i64> %26, splat (i64 4294967295)
  %29 = mul nuw <4 x i64> %28, %27
  %30 = shufflevector <4 x i64> %21, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %31 = add <4 x i64> %15, %30
  %32 = add <4 x i64> %31, %29
  %33 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %34 = load <4 x i64>, ptr %33, align 1
  %35 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %36 = load <4 x i64>, ptr %35, align 1
  %37 = xor <4 x i64> %36, %34
  %38 = bitcast <4 x i64> %37 to <8 x i32>
  %39 = shufflevector <8 x i32> %38, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %40 = bitcast <8 x i32> %39 to <4 x i64>
  %41 = and <4 x i64> %37, splat (i64 4294967295)
  %42 = and <4 x i64> %40, splat (i64 4294967295)
  %43 = mul nuw <4 x i64> %42, %41
  %44 = shufflevector <4 x i64> %34, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %45 = add <4 x i64> %19, %44
  %46 = add <4 x i64> %45, %43
  %47 = getelementptr inbounds nuw i8, ptr %9, i64 64
  %48 = getelementptr inbounds nuw i8, ptr %9, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %48, i32 0, i32 3, i32 1)
  %49 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %50 = load <4 x i64>, ptr %47, align 1
  %51 = load <4 x i64>, ptr %49, align 1
  %52 = xor <4 x i64> %51, %50
  %53 = bitcast <4 x i64> %52 to <8 x i32>
  %54 = shufflevector <8 x i32> %53, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %55 = bitcast <8 x i32> %54 to <4 x i64>
  %56 = and <4 x i64> %52, splat (i64 4294967295)
  %57 = and <4 x i64> %55, splat (i64 4294967295)
  %58 = mul nuw <4 x i64> %57, %56
  %59 = shufflevector <4 x i64> %50, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %60 = add <4 x i64> %32, %59
  %61 = add <4 x i64> %60, %58
  %62 = getelementptr inbounds nuw i8, ptr %9, i64 96
  %63 = load <4 x i64>, ptr %62, align 1
  %64 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %65 = load <4 x i64>, ptr %64, align 1
  %66 = xor <4 x i64> %65, %63
  %67 = bitcast <4 x i64> %66 to <8 x i32>
  %68 = shufflevector <8 x i32> %67, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %69 = bitcast <8 x i32> %68 to <4 x i64>
  %70 = and <4 x i64> %66, splat (i64 4294967295)
  %71 = and <4 x i64> %69, splat (i64 4294967295)
  %72 = mul nuw <4 x i64> %71, %70
  %73 = shufflevector <4 x i64> %63, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %74 = add <4 x i64> %46, %73
  %75 = add <4 x i64> %74, %72
  %76 = getelementptr inbounds nuw i8, ptr %9, i64 128
  %77 = getelementptr inbounds nuw i8, ptr %9, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %77, i32 0, i32 3, i32 1)
  %78 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %79 = load <4 x i64>, ptr %76, align 1
  %80 = load <4 x i64>, ptr %78, align 1
  %81 = xor <4 x i64> %80, %79
  %82 = bitcast <4 x i64> %81 to <8 x i32>
  %83 = shufflevector <8 x i32> %82, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %84 = bitcast <8 x i32> %83 to <4 x i64>
  %85 = and <4 x i64> %81, splat (i64 4294967295)
  %86 = and <4 x i64> %84, splat (i64 4294967295)
  %87 = mul nuw <4 x i64> %86, %85
  %88 = shufflevector <4 x i64> %79, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %89 = add <4 x i64> %61, %88
  %90 = add <4 x i64> %89, %87
  %91 = getelementptr inbounds nuw i8, ptr %9, i64 160
  %92 = load <4 x i64>, ptr %91, align 1
  %93 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %94 = load <4 x i64>, ptr %93, align 1
  %95 = xor <4 x i64> %94, %92
  %96 = bitcast <4 x i64> %95 to <8 x i32>
  %97 = shufflevector <8 x i32> %96, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %98 = bitcast <8 x i32> %97 to <4 x i64>
  %99 = and <4 x i64> %95, splat (i64 4294967295)
  %100 = and <4 x i64> %98, splat (i64 4294967295)
  %101 = mul nuw <4 x i64> %100, %99
  %102 = shufflevector <4 x i64> %92, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %103 = add <4 x i64> %75, %102
  %104 = add <4 x i64> %103, %101
  %105 = getelementptr inbounds nuw i8, ptr %9, i64 192
  %106 = getelementptr inbounds nuw i8, ptr %9, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %106, i32 0, i32 3, i32 1)
  %107 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %108 = load <4 x i64>, ptr %105, align 1
  %109 = load <4 x i64>, ptr %107, align 1
  %110 = xor <4 x i64> %109, %108
  %111 = bitcast <4 x i64> %110 to <8 x i32>
  %112 = shufflevector <8 x i32> %111, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %113 = bitcast <8 x i32> %112 to <4 x i64>
  %114 = and <4 x i64> %110, splat (i64 4294967295)
  %115 = and <4 x i64> %113, splat (i64 4294967295)
  %116 = mul nuw <4 x i64> %115, %114
  %117 = shufflevector <4 x i64> %108, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %118 = add <4 x i64> %90, %117
  %119 = add <4 x i64> %118, %116
  %120 = getelementptr inbounds nuw i8, ptr %9, i64 224
  %121 = load <4 x i64>, ptr %120, align 1
  %122 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %123 = load <4 x i64>, ptr %122, align 1
  %124 = xor <4 x i64> %123, %121
  %125 = bitcast <4 x i64> %124 to <8 x i32>
  %126 = shufflevector <8 x i32> %125, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %127 = bitcast <8 x i32> %126 to <4 x i64>
  %128 = and <4 x i64> %124, splat (i64 4294967295)
  %129 = and <4 x i64> %127, splat (i64 4294967295)
  %130 = mul nuw <4 x i64> %129, %128
  %131 = shufflevector <4 x i64> %121, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %132 = add <4 x i64> %104, %131
  %133 = add <4 x i64> %132, %130
  store <4 x i64> %119, ptr %0, align 8
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> %133, ptr %134, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
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
!6 = distinct !{!6, !7, !"XXH3_accumulate_avx2: argument 1"}
!7 = distinct !{!7, !"XXH3_accumulate_avx2"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"XXH3_accumulate_avx2: argument 2"}
!10 = !{!11, !9}
!11 = distinct !{!11, !7, !"XXH3_accumulate_avx2: argument 0"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"XXH3_accumulate_512_avx2: argument 1"}
!14 = distinct !{!14, !"XXH3_accumulate_512_avx2"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"XXH3_accumulate_512_avx2: argument 2"}
!17 = !{!13, !6}
!18 = !{!19, !16, !11, !9}
!19 = distinct !{!19, !14, !"XXH3_accumulate_512_avx2: argument 0"}
!20 = !{!16, !9}
!21 = !{!19, !13, !11, !6}
!22 = !{!23}
!23 = distinct !{!23, !24, !"XXH3_accumulate_avx2: argument 1"}
!24 = distinct !{!24, !"XXH3_accumulate_avx2"}
!25 = !{!26}
!26 = distinct !{!26, !24, !"XXH3_accumulate_avx2: argument 2"}
!27 = !{!28, !26}
!28 = distinct !{!28, !24, !"XXH3_accumulate_avx2: argument 0"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"XXH3_accumulate_512_avx2: argument 1"}
!31 = distinct !{!31, !"XXH3_accumulate_512_avx2"}
!32 = !{!33}
!33 = distinct !{!33, !31, !"XXH3_accumulate_512_avx2: argument 2"}
!34 = !{!30, !23}
!35 = !{!36, !33, !28, !26}
!36 = distinct !{!36, !31, !"XXH3_accumulate_512_avx2: argument 0"}
!37 = !{!33, !26}
!38 = !{!36, !30, !28, !23}
!39 = !{!40}
!40 = distinct !{!40, !31, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!41 = !{!42}
!42 = distinct !{!42, !31, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!43 = !{!40, !23}
!44 = !{!36, !42, !28, !26}
!45 = !{!42, !26}
!46 = !{!36, !40, !28, !23}
!47 = !{!48}
!48 = distinct !{!48, !49, !"XXH3_accumulate_avx2: argument 1"}
!49 = distinct !{!49, !"XXH3_accumulate_avx2"}
!50 = !{!51}
!51 = distinct !{!51, !49, !"XXH3_accumulate_avx2: argument 2"}
!52 = !{!53, !51}
!53 = distinct !{!53, !49, !"XXH3_accumulate_avx2: argument 0"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"XXH3_accumulate_512_avx2: argument 1"}
!56 = distinct !{!56, !"XXH3_accumulate_512_avx2"}
!57 = !{!58}
!58 = distinct !{!58, !56, !"XXH3_accumulate_512_avx2: argument 2"}
!59 = !{!55, !48}
!60 = !{!61, !58, !53, !51}
!61 = distinct !{!61, !56, !"XXH3_accumulate_512_avx2: argument 0"}
!62 = !{!58, !51}
!63 = !{!61, !55, !53, !48}
!64 = !{!65}
!65 = distinct !{!65, !56, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!66 = !{!67}
!67 = distinct !{!67, !56, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!68 = !{!65, !48}
!69 = !{!61, !67, !53, !51}
!70 = !{!67, !51}
!71 = !{!61, !65, !53, !48}
!72 = !{!73}
!73 = distinct !{!73, !56, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!74 = !{!75}
!75 = distinct !{!75, !56, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!76 = !{!73, !48}
!77 = !{!61, !75, !53, !51}
!78 = !{!75, !51}
!79 = !{!61, !73, !53, !48}
!80 = !{!81}
!81 = distinct !{!81, !56, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!82 = !{!83}
!83 = distinct !{!83, !56, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!84 = !{!81, !48}
!85 = !{!61, !83, !53, !51}
!86 = !{!83, !51}
!87 = !{!61, !81, !53, !48}
