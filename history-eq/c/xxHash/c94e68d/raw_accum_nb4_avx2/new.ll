; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c94e68d/raw_accum_nb4_avx2/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c94e68d/raw_accum_nb4_avx2/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @target_accum(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ugt i64 %3, 4
  br i1 %5, label %123, label %6

6:                                                ; preds = %4
  %7 = load <4 x i64>, ptr %0, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = load <4 x i64>, ptr %8, align 8
  %10 = icmp eq i64 %3, 0
  br i1 %10, label %120, label %11

11:                                               ; preds = %6
  %12 = load <4 x i64>, ptr %1, align 1
  %13 = load <4 x i64>, ptr %2, align 1
  %14 = xor <4 x i64> %13, %12
  %15 = bitcast <4 x i64> %14 to <8 x i32>
  %16 = shufflevector <8 x i32> %15, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %17 = bitcast <8 x i32> %16 to <4 x i64>
  %18 = and <4 x i64> %14, splat (i64 4294967295)
  %19 = and <4 x i64> %17, splat (i64 4294967295)
  %20 = mul nuw <4 x i64> %19, %18
  %21 = add <4 x i64> %7, %12
  %22 = add <4 x i64> %21, %20
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %24 = load <4 x i64>, ptr %23, align 1
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %26 = load <4 x i64>, ptr %25, align 1
  %27 = xor <4 x i64> %26, %24
  %28 = bitcast <4 x i64> %27 to <8 x i32>
  %29 = shufflevector <8 x i32> %28, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %30 = bitcast <8 x i32> %29 to <4 x i64>
  %31 = and <4 x i64> %27, splat (i64 4294967295)
  %32 = and <4 x i64> %30, splat (i64 4294967295)
  %33 = mul nuw <4 x i64> %32, %31
  %34 = add <4 x i64> %9, %24
  %35 = add <4 x i64> %34, %33
  %36 = icmp eq i64 %3, 1
  br i1 %36, label %120, label %37

37:                                               ; preds = %11
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %40 = load <4 x i64>, ptr %38, align 1
  %41 = load <4 x i64>, ptr %39, align 1
  %42 = xor <4 x i64> %41, %40
  %43 = bitcast <4 x i64> %42 to <8 x i32>
  %44 = shufflevector <8 x i32> %43, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %45 = bitcast <8 x i32> %44 to <4 x i64>
  %46 = and <4 x i64> %42, splat (i64 4294967295)
  %47 = and <4 x i64> %45, splat (i64 4294967295)
  %48 = mul nuw <4 x i64> %47, %46
  %49 = add <4 x i64> %22, %40
  %50 = add <4 x i64> %49, %48
  %51 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %52 = load <4 x i64>, ptr %51, align 1
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %54 = load <4 x i64>, ptr %53, align 1
  %55 = xor <4 x i64> %54, %52
  %56 = bitcast <4 x i64> %55 to <8 x i32>
  %57 = shufflevector <8 x i32> %56, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %58 = bitcast <8 x i32> %57 to <4 x i64>
  %59 = and <4 x i64> %55, splat (i64 4294967295)
  %60 = and <4 x i64> %58, splat (i64 4294967295)
  %61 = mul nuw <4 x i64> %60, %59
  %62 = add <4 x i64> %35, %52
  %63 = add <4 x i64> %62, %61
  %64 = icmp eq i64 %3, 2
  br i1 %64, label %120, label %65

65:                                               ; preds = %37
  %66 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %67 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %68 = load <4 x i64>, ptr %66, align 1
  %69 = load <4 x i64>, ptr %67, align 1
  %70 = xor <4 x i64> %69, %68
  %71 = bitcast <4 x i64> %70 to <8 x i32>
  %72 = shufflevector <8 x i32> %71, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %73 = bitcast <8 x i32> %72 to <4 x i64>
  %74 = and <4 x i64> %70, splat (i64 4294967295)
  %75 = and <4 x i64> %73, splat (i64 4294967295)
  %76 = mul nuw <4 x i64> %75, %74
  %77 = add <4 x i64> %50, %68
  %78 = add <4 x i64> %77, %76
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %80 = load <4 x i64>, ptr %79, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %82 = load <4 x i64>, ptr %81, align 1
  %83 = xor <4 x i64> %82, %80
  %84 = bitcast <4 x i64> %83 to <8 x i32>
  %85 = shufflevector <8 x i32> %84, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %86 = bitcast <8 x i32> %85 to <4 x i64>
  %87 = and <4 x i64> %83, splat (i64 4294967295)
  %88 = and <4 x i64> %86, splat (i64 4294967295)
  %89 = mul nuw <4 x i64> %88, %87
  %90 = add <4 x i64> %63, %80
  %91 = add <4 x i64> %90, %89
  %92 = icmp eq i64 %3, 3
  br i1 %92, label %120, label %93

93:                                               ; preds = %65
  %94 = getelementptr inbounds nuw i8, ptr %1, i64 192
  %95 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %96 = load <4 x i64>, ptr %94, align 1
  %97 = load <4 x i64>, ptr %95, align 1
  %98 = xor <4 x i64> %97, %96
  %99 = bitcast <4 x i64> %98 to <8 x i32>
  %100 = shufflevector <8 x i32> %99, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %101 = bitcast <8 x i32> %100 to <4 x i64>
  %102 = and <4 x i64> %98, splat (i64 4294967295)
  %103 = and <4 x i64> %101, splat (i64 4294967295)
  %104 = mul nuw <4 x i64> %103, %102
  %105 = add <4 x i64> %78, %96
  %106 = add <4 x i64> %105, %104
  %107 = getelementptr inbounds nuw i8, ptr %1, i64 224
  %108 = load <4 x i64>, ptr %107, align 1
  %109 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %110 = load <4 x i64>, ptr %109, align 1
  %111 = xor <4 x i64> %110, %108
  %112 = bitcast <4 x i64> %111 to <8 x i32>
  %113 = shufflevector <8 x i32> %112, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %114 = bitcast <8 x i32> %113 to <4 x i64>
  %115 = and <4 x i64> %111, splat (i64 4294967295)
  %116 = and <4 x i64> %114, splat (i64 4294967295)
  %117 = mul nuw <4 x i64> %116, %115
  %118 = add <4 x i64> %91, %108
  %119 = add <4 x i64> %118, %117
  br label %120

120:                                              ; preds = %11, %37, %65, %93, %6
  %121 = phi <4 x i64> [ %9, %6 ], [ %35, %11 ], [ %63, %37 ], [ %91, %65 ], [ %119, %93 ]
  %122 = phi <4 x i64> [ %7, %6 ], [ %22, %11 ], [ %50, %37 ], [ %78, %65 ], [ %106, %93 ]
  store <4 x i64> %122, ptr %0, align 8
  store <4 x i64> %121, ptr %8, align 8
  br label %123

123:                                              ; preds = %4, %120
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
