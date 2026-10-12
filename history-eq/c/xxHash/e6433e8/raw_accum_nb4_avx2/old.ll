; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e6433e8/raw_accum_nb4_avx2/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/e6433e8/raw_accum_nb4_avx2/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @target_accum(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ugt i64 %3, 4
  br i1 %5, label %131, label %6

6:                                                ; preds = %4
  %7 = load <4 x i64>, ptr %0, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = load <4 x i64>, ptr %8, align 8
  %10 = icmp eq i64 %3, 0
  br i1 %10, label %128, label %11

11:                                               ; preds = %6
  %12 = load <4 x i64>, ptr %1, align 1
  %13 = load <8 x i32>, ptr %2, align 1
  %14 = bitcast <4 x i64> %12 to <8 x i32>
  %15 = add <8 x i32> %13, %14
  %16 = bitcast <8 x i32> %15 to <4 x i64>
  %17 = shufflevector <8 x i32> %15, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %18 = bitcast <8 x i32> %17 to <4 x i64>
  %19 = and <4 x i64> %16, splat (i64 4294967295)
  %20 = and <4 x i64> %18, splat (i64 4294967295)
  %21 = mul nuw <4 x i64> %20, %19
  %22 = add <4 x i64> %12, %7
  %23 = add <4 x i64> %22, %21
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %25 = load <4 x i64>, ptr %24, align 1
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %27 = load <8 x i32>, ptr %26, align 1
  %28 = bitcast <4 x i64> %25 to <8 x i32>
  %29 = add <8 x i32> %27, %28
  %30 = bitcast <8 x i32> %29 to <4 x i64>
  %31 = shufflevector <8 x i32> %29, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %32 = bitcast <8 x i32> %31 to <4 x i64>
  %33 = and <4 x i64> %30, splat (i64 4294967295)
  %34 = and <4 x i64> %32, splat (i64 4294967295)
  %35 = mul nuw <4 x i64> %34, %33
  %36 = add <4 x i64> %25, %9
  %37 = add <4 x i64> %36, %35
  %38 = icmp eq i64 %3, 1
  br i1 %38, label %128, label %39

39:                                               ; preds = %11
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %42 = load <4 x i64>, ptr %41, align 1
  %43 = load <8 x i32>, ptr %40, align 1
  %44 = bitcast <4 x i64> %42 to <8 x i32>
  %45 = add <8 x i32> %43, %44
  %46 = bitcast <8 x i32> %45 to <4 x i64>
  %47 = shufflevector <8 x i32> %45, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %48 = bitcast <8 x i32> %47 to <4 x i64>
  %49 = and <4 x i64> %46, splat (i64 4294967295)
  %50 = and <4 x i64> %48, splat (i64 4294967295)
  %51 = mul nuw <4 x i64> %50, %49
  %52 = add <4 x i64> %42, %23
  %53 = add <4 x i64> %52, %51
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %55 = load <4 x i64>, ptr %54, align 1
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %57 = load <8 x i32>, ptr %56, align 1
  %58 = bitcast <4 x i64> %55 to <8 x i32>
  %59 = add <8 x i32> %57, %58
  %60 = bitcast <8 x i32> %59 to <4 x i64>
  %61 = shufflevector <8 x i32> %59, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %62 = bitcast <8 x i32> %61 to <4 x i64>
  %63 = and <4 x i64> %60, splat (i64 4294967295)
  %64 = and <4 x i64> %62, splat (i64 4294967295)
  %65 = mul nuw <4 x i64> %64, %63
  %66 = add <4 x i64> %55, %37
  %67 = add <4 x i64> %66, %65
  %68 = icmp eq i64 %3, 2
  br i1 %68, label %128, label %69

69:                                               ; preds = %39
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %72 = load <4 x i64>, ptr %71, align 1
  %73 = load <8 x i32>, ptr %70, align 1
  %74 = bitcast <4 x i64> %72 to <8 x i32>
  %75 = add <8 x i32> %73, %74
  %76 = bitcast <8 x i32> %75 to <4 x i64>
  %77 = shufflevector <8 x i32> %75, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %78 = bitcast <8 x i32> %77 to <4 x i64>
  %79 = and <4 x i64> %76, splat (i64 4294967295)
  %80 = and <4 x i64> %78, splat (i64 4294967295)
  %81 = mul nuw <4 x i64> %80, %79
  %82 = add <4 x i64> %72, %53
  %83 = add <4 x i64> %82, %81
  %84 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %85 = load <4 x i64>, ptr %84, align 1
  %86 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %87 = load <8 x i32>, ptr %86, align 1
  %88 = bitcast <4 x i64> %85 to <8 x i32>
  %89 = add <8 x i32> %87, %88
  %90 = bitcast <8 x i32> %89 to <4 x i64>
  %91 = shufflevector <8 x i32> %89, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %92 = bitcast <8 x i32> %91 to <4 x i64>
  %93 = and <4 x i64> %90, splat (i64 4294967295)
  %94 = and <4 x i64> %92, splat (i64 4294967295)
  %95 = mul nuw <4 x i64> %94, %93
  %96 = add <4 x i64> %85, %67
  %97 = add <4 x i64> %96, %95
  %98 = icmp eq i64 %3, 3
  br i1 %98, label %128, label %99

99:                                               ; preds = %69
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %101 = getelementptr inbounds nuw i8, ptr %1, i64 192
  %102 = load <4 x i64>, ptr %101, align 1
  %103 = load <8 x i32>, ptr %100, align 1
  %104 = bitcast <4 x i64> %102 to <8 x i32>
  %105 = add <8 x i32> %103, %104
  %106 = bitcast <8 x i32> %105 to <4 x i64>
  %107 = shufflevector <8 x i32> %105, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %108 = bitcast <8 x i32> %107 to <4 x i64>
  %109 = and <4 x i64> %106, splat (i64 4294967295)
  %110 = and <4 x i64> %108, splat (i64 4294967295)
  %111 = mul nuw <4 x i64> %110, %109
  %112 = add <4 x i64> %102, %83
  %113 = add <4 x i64> %112, %111
  %114 = getelementptr inbounds nuw i8, ptr %1, i64 224
  %115 = load <4 x i64>, ptr %114, align 1
  %116 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %117 = load <8 x i32>, ptr %116, align 1
  %118 = bitcast <4 x i64> %115 to <8 x i32>
  %119 = add <8 x i32> %117, %118
  %120 = bitcast <8 x i32> %119 to <4 x i64>
  %121 = shufflevector <8 x i32> %119, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %122 = bitcast <8 x i32> %121 to <4 x i64>
  %123 = and <4 x i64> %120, splat (i64 4294967295)
  %124 = and <4 x i64> %122, splat (i64 4294967295)
  %125 = mul nuw <4 x i64> %124, %123
  %126 = add <4 x i64> %115, %97
  %127 = add <4 x i64> %126, %125
  br label %128

128:                                              ; preds = %11, %39, %69, %99, %6
  %129 = phi <4 x i64> [ %9, %6 ], [ %37, %11 ], [ %67, %39 ], [ %97, %69 ], [ %127, %99 ]
  %130 = phi <4 x i64> [ %7, %6 ], [ %23, %11 ], [ %53, %39 ], [ %83, %69 ], [ %113, %99 ]
  store <4 x i64> %130, ptr %0, align 8
  store <4 x i64> %129, ptr %8, align 8
  br label %131

131:                                              ; preds = %4, %128
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
