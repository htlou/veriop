; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c5953f1/raw_accum_nb4_avx2/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c5953f1/raw_accum_nb4_avx2/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_accum(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ugt i64 %3, 4
  br i1 %5, label %115, label %6

6:                                                ; preds = %4
  %7 = load <4 x i64>, ptr %0, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = load <4 x i64>, ptr %8, align 8
  %10 = icmp eq i64 %3, 0
  br i1 %10, label %112, label %11

11:                                               ; preds = %6
  %12 = load <8 x i32>, ptr %1, align 1
  %13 = load <8 x i32>, ptr %2, align 1
  %14 = add <8 x i32> %13, %12
  %15 = bitcast <8 x i32> %14 to <4 x i64>
  %16 = shufflevector <8 x i32> %14, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %17 = bitcast <8 x i32> %16 to <4 x i64>
  %18 = and <4 x i64> %15, splat (i64 4294967295)
  %19 = and <4 x i64> %17, splat (i64 4294967295)
  %20 = mul nuw <4 x i64> %19, %18
  %21 = add <4 x i64> %20, %7
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %23 = load <8 x i32>, ptr %22, align 1
  %24 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %25 = load <8 x i32>, ptr %24, align 1
  %26 = add <8 x i32> %25, %23
  %27 = bitcast <8 x i32> %26 to <4 x i64>
  %28 = shufflevector <8 x i32> %26, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %29 = bitcast <8 x i32> %28 to <4 x i64>
  %30 = and <4 x i64> %27, splat (i64 4294967295)
  %31 = and <4 x i64> %29, splat (i64 4294967295)
  %32 = mul nuw <4 x i64> %31, %30
  %33 = add <4 x i64> %32, %9
  %34 = icmp eq i64 %3, 1
  br i1 %34, label %112, label %35

35:                                               ; preds = %11
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %38 = load <8 x i32>, ptr %37, align 1
  %39 = load <8 x i32>, ptr %36, align 1
  %40 = add <8 x i32> %39, %38
  %41 = bitcast <8 x i32> %40 to <4 x i64>
  %42 = shufflevector <8 x i32> %40, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %43 = bitcast <8 x i32> %42 to <4 x i64>
  %44 = and <4 x i64> %41, splat (i64 4294967295)
  %45 = and <4 x i64> %43, splat (i64 4294967295)
  %46 = mul nuw <4 x i64> %45, %44
  %47 = add <4 x i64> %46, %21
  %48 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %49 = load <8 x i32>, ptr %48, align 1
  %50 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %51 = load <8 x i32>, ptr %50, align 1
  %52 = add <8 x i32> %51, %49
  %53 = bitcast <8 x i32> %52 to <4 x i64>
  %54 = shufflevector <8 x i32> %52, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %55 = bitcast <8 x i32> %54 to <4 x i64>
  %56 = and <4 x i64> %53, splat (i64 4294967295)
  %57 = and <4 x i64> %55, splat (i64 4294967295)
  %58 = mul nuw <4 x i64> %57, %56
  %59 = add <4 x i64> %58, %33
  %60 = icmp eq i64 %3, 2
  br i1 %60, label %112, label %61

61:                                               ; preds = %35
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %64 = load <8 x i32>, ptr %63, align 1
  %65 = load <8 x i32>, ptr %62, align 1
  %66 = add <8 x i32> %65, %64
  %67 = bitcast <8 x i32> %66 to <4 x i64>
  %68 = shufflevector <8 x i32> %66, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %69 = bitcast <8 x i32> %68 to <4 x i64>
  %70 = and <4 x i64> %67, splat (i64 4294967295)
  %71 = and <4 x i64> %69, splat (i64 4294967295)
  %72 = mul nuw <4 x i64> %71, %70
  %73 = add <4 x i64> %72, %47
  %74 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %75 = load <8 x i32>, ptr %74, align 1
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %77 = load <8 x i32>, ptr %76, align 1
  %78 = add <8 x i32> %77, %75
  %79 = bitcast <8 x i32> %78 to <4 x i64>
  %80 = shufflevector <8 x i32> %78, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %81 = bitcast <8 x i32> %80 to <4 x i64>
  %82 = and <4 x i64> %79, splat (i64 4294967295)
  %83 = and <4 x i64> %81, splat (i64 4294967295)
  %84 = mul nuw <4 x i64> %83, %82
  %85 = add <4 x i64> %84, %59
  %86 = icmp eq i64 %3, 3
  br i1 %86, label %112, label %87

87:                                               ; preds = %61
  %88 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %89 = getelementptr inbounds nuw i8, ptr %1, i64 192
  %90 = load <8 x i32>, ptr %89, align 1
  %91 = load <8 x i32>, ptr %88, align 1
  %92 = add <8 x i32> %91, %90
  %93 = bitcast <8 x i32> %92 to <4 x i64>
  %94 = shufflevector <8 x i32> %92, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %95 = bitcast <8 x i32> %94 to <4 x i64>
  %96 = and <4 x i64> %93, splat (i64 4294967295)
  %97 = and <4 x i64> %95, splat (i64 4294967295)
  %98 = mul nuw <4 x i64> %97, %96
  %99 = add <4 x i64> %98, %73
  %100 = getelementptr inbounds nuw i8, ptr %1, i64 224
  %101 = load <8 x i32>, ptr %100, align 1
  %102 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %103 = load <8 x i32>, ptr %102, align 1
  %104 = add <8 x i32> %103, %101
  %105 = bitcast <8 x i32> %104 to <4 x i64>
  %106 = shufflevector <8 x i32> %104, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %107 = bitcast <8 x i32> %106 to <4 x i64>
  %108 = and <4 x i64> %105, splat (i64 4294967295)
  %109 = and <4 x i64> %107, splat (i64 4294967295)
  %110 = mul nuw <4 x i64> %109, %108
  %111 = add <4 x i64> %110, %85
  br label %112

112:                                              ; preds = %6, %11, %35, %61, %87
  %113 = phi <4 x i64> [ %9, %6 ], [ %33, %11 ], [ %59, %35 ], [ %85, %61 ], [ %111, %87 ]
  %114 = phi <4 x i64> [ %7, %6 ], [ %21, %11 ], [ %47, %35 ], [ %73, %61 ], [ %99, %87 ]
  store <4 x i64> %114, ptr %0, align 8
  store <4 x i64> %113, ptr %8, align 8
  br label %115

115:                                              ; preds = %4, %112
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.enable"}
