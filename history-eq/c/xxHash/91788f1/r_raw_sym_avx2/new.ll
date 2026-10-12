; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/91788f1/wrap_raw_sym.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/91788f1/wrap_raw_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_acc_nsym(ptr noundef writeonly %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noundef readonly %9, ptr noundef readonly %10, i64 noundef %11) local_unnamed_addr #0 {
  %13 = insertelement <4 x i64> poison, i64 %1, i64 0
  %14 = insertelement <4 x i64> %13, i64 %2, i64 1
  %15 = insertelement <4 x i64> %14, i64 %3, i64 2
  %16 = insertelement <4 x i64> %15, i64 %4, i64 3
  %17 = insertelement <4 x i64> poison, i64 %5, i64 0
  %18 = insertelement <4 x i64> %17, i64 %6, i64 1
  %19 = insertelement <4 x i64> %18, i64 %7, i64 2
  %20 = insertelement <4 x i64> %19, i64 %8, i64 3
  %21 = icmp eq i64 %11, 0
  br i1 %21, label %143, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds nuw i8, ptr %9, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %23, i32 0, i32 3, i32 1)
  %24 = load <4 x i64>, ptr %9, align 1
  %25 = load <4 x i64>, ptr %10, align 1
  %26 = xor <4 x i64> %25, %24
  %27 = bitcast <4 x i64> %26 to <8 x i32>
  %28 = shufflevector <8 x i32> %27, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %29 = bitcast <8 x i32> %28 to <4 x i64>
  %30 = and <4 x i64> %26, splat (i64 4294967295)
  %31 = and <4 x i64> %29, splat (i64 4294967295)
  %32 = mul nuw <4 x i64> %31, %30
  %33 = shufflevector <4 x i64> %24, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %34 = add <4 x i64> %16, %33
  %35 = add <4 x i64> %34, %32
  %36 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %37 = load <4 x i64>, ptr %36, align 1
  %38 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %39 = load <4 x i64>, ptr %38, align 1
  %40 = xor <4 x i64> %39, %37
  %41 = bitcast <4 x i64> %40 to <8 x i32>
  %42 = shufflevector <8 x i32> %41, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %43 = bitcast <8 x i32> %42 to <4 x i64>
  %44 = and <4 x i64> %40, splat (i64 4294967295)
  %45 = and <4 x i64> %43, splat (i64 4294967295)
  %46 = mul nuw <4 x i64> %45, %44
  %47 = shufflevector <4 x i64> %37, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %48 = add <4 x i64> %20, %47
  %49 = add <4 x i64> %48, %46
  %50 = icmp eq i64 %11, 1
  br i1 %50, label %143, label %51

51:                                               ; preds = %22
  %52 = getelementptr inbounds nuw i8, ptr %9, i64 64
  %53 = getelementptr inbounds nuw i8, ptr %9, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %53, i32 0, i32 3, i32 1)
  %54 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %55 = load <4 x i64>, ptr %52, align 1
  %56 = load <4 x i64>, ptr %54, align 1
  %57 = xor <4 x i64> %56, %55
  %58 = bitcast <4 x i64> %57 to <8 x i32>
  %59 = shufflevector <8 x i32> %58, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %60 = bitcast <8 x i32> %59 to <4 x i64>
  %61 = and <4 x i64> %57, splat (i64 4294967295)
  %62 = and <4 x i64> %60, splat (i64 4294967295)
  %63 = mul nuw <4 x i64> %62, %61
  %64 = shufflevector <4 x i64> %55, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %65 = add <4 x i64> %35, %64
  %66 = add <4 x i64> %65, %63
  %67 = getelementptr inbounds nuw i8, ptr %9, i64 96
  %68 = load <4 x i64>, ptr %67, align 1
  %69 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %70 = load <4 x i64>, ptr %69, align 1
  %71 = xor <4 x i64> %70, %68
  %72 = bitcast <4 x i64> %71 to <8 x i32>
  %73 = shufflevector <8 x i32> %72, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %74 = bitcast <8 x i32> %73 to <4 x i64>
  %75 = and <4 x i64> %71, splat (i64 4294967295)
  %76 = and <4 x i64> %74, splat (i64 4294967295)
  %77 = mul nuw <4 x i64> %76, %75
  %78 = shufflevector <4 x i64> %68, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %79 = add <4 x i64> %49, %78
  %80 = add <4 x i64> %79, %77
  %81 = icmp eq i64 %11, 2
  br i1 %81, label %143, label %82

82:                                               ; preds = %51
  %83 = getelementptr inbounds nuw i8, ptr %9, i64 128
  %84 = getelementptr inbounds nuw i8, ptr %9, i64 448
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %84, i32 0, i32 3, i32 1)
  %85 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %86 = load <4 x i64>, ptr %83, align 1
  %87 = load <4 x i64>, ptr %85, align 1
  %88 = xor <4 x i64> %87, %86
  %89 = bitcast <4 x i64> %88 to <8 x i32>
  %90 = shufflevector <8 x i32> %89, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %91 = bitcast <8 x i32> %90 to <4 x i64>
  %92 = and <4 x i64> %88, splat (i64 4294967295)
  %93 = and <4 x i64> %91, splat (i64 4294967295)
  %94 = mul nuw <4 x i64> %93, %92
  %95 = shufflevector <4 x i64> %86, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %96 = add <4 x i64> %66, %95
  %97 = add <4 x i64> %96, %94
  %98 = getelementptr inbounds nuw i8, ptr %9, i64 160
  %99 = load <4 x i64>, ptr %98, align 1
  %100 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %101 = load <4 x i64>, ptr %100, align 1
  %102 = xor <4 x i64> %101, %99
  %103 = bitcast <4 x i64> %102 to <8 x i32>
  %104 = shufflevector <8 x i32> %103, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %105 = bitcast <8 x i32> %104 to <4 x i64>
  %106 = and <4 x i64> %102, splat (i64 4294967295)
  %107 = and <4 x i64> %105, splat (i64 4294967295)
  %108 = mul nuw <4 x i64> %107, %106
  %109 = shufflevector <4 x i64> %99, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %110 = add <4 x i64> %80, %109
  %111 = add <4 x i64> %110, %108
  %112 = icmp eq i64 %11, 3
  br i1 %112, label %143, label %113

113:                                              ; preds = %82
  %114 = getelementptr inbounds nuw i8, ptr %9, i64 192
  %115 = getelementptr inbounds nuw i8, ptr %9, i64 512
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %115, i32 0, i32 3, i32 1)
  %116 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %117 = load <4 x i64>, ptr %114, align 1
  %118 = load <4 x i64>, ptr %116, align 1
  %119 = xor <4 x i64> %118, %117
  %120 = bitcast <4 x i64> %119 to <8 x i32>
  %121 = shufflevector <8 x i32> %120, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %122 = bitcast <8 x i32> %121 to <4 x i64>
  %123 = and <4 x i64> %119, splat (i64 4294967295)
  %124 = and <4 x i64> %122, splat (i64 4294967295)
  %125 = mul nuw <4 x i64> %124, %123
  %126 = shufflevector <4 x i64> %117, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %127 = add <4 x i64> %97, %126
  %128 = add <4 x i64> %127, %125
  %129 = getelementptr inbounds nuw i8, ptr %9, i64 224
  %130 = load <4 x i64>, ptr %129, align 1
  %131 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %132 = load <4 x i64>, ptr %131, align 1
  %133 = xor <4 x i64> %132, %130
  %134 = bitcast <4 x i64> %133 to <8 x i32>
  %135 = shufflevector <8 x i32> %134, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %136 = bitcast <8 x i32> %135 to <4 x i64>
  %137 = and <4 x i64> %133, splat (i64 4294967295)
  %138 = and <4 x i64> %136, splat (i64 4294967295)
  %139 = mul nuw <4 x i64> %138, %137
  %140 = shufflevector <4 x i64> %130, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %141 = add <4 x i64> %111, %140
  %142 = add <4 x i64> %141, %139
  br label %143

143:                                              ; preds = %22, %51, %82, %113, %12
  %144 = phi <4 x i64> [ %20, %12 ], [ %49, %22 ], [ %80, %51 ], [ %111, %82 ], [ %142, %113 ]
  %145 = phi <4 x i64> [ %16, %12 ], [ %35, %22 ], [ %66, %51 ], [ %97, %82 ], [ %128, %113 ]
  store <4 x i64> %145, ptr %0, align 8
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i64> %144, ptr %146, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
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
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!25}
!25 = distinct !{!25, !14, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!26 = !{!27}
!27 = distinct !{!27, !14, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!28 = !{!25, !6}
!29 = !{!19, !27, !11, !9}
!30 = !{!27, !9}
!31 = !{!19, !25, !11, !6}
!32 = !{!33}
!33 = distinct !{!33, !14, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!34 = !{!35}
!35 = distinct !{!35, !14, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!36 = !{!33, !6}
!37 = !{!19, !35, !11, !9}
!38 = !{!35, !9}
!39 = !{!19, !33, !11, !6}
!40 = !{!41}
!41 = distinct !{!41, !14, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!42 = !{!43}
!43 = distinct !{!43, !14, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!44 = !{!41, !6}
!45 = !{!19, !43, !11, !9}
!46 = !{!43, !9}
!47 = !{!19, !41, !11, !6}
