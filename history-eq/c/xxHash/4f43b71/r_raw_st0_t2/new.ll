; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4f43b71/wrap_raw.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4f43b71/wrap_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @target_raw_large(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %4 = load i32, ptr %3, align 64
  %5 = icmp eq i32 %4, 100
  br i1 %5, label %6, label %153

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %8 = load i64, ptr %7, align 8
  %9 = icmp eq i64 %8, 14
  br i1 %9, label %10, label %153

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %12, 16
  br i1 %13, label %14, label %153

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %16 = load i64, ptr %15, align 32
  %17 = icmp eq i64 %16, 128
  br i1 %17, label %18, label %153

18:                                               ; preds = %14
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %153

22:                                               ; preds = %18
  %23 = ptrtoint ptr %1 to i64
  %24 = ptrtoint ptr %0 to i64
  %25 = add i64 %23, 200
  %26 = icmp ule i64 %25, %24
  %27 = add i64 %24, 576
  %28 = icmp ule i64 %27, %23
  %29 = or i1 %28, %26
  br i1 %29, label %30, label %153

30:                                               ; preds = %22
  %31 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %31)
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %33 = load i64, ptr %32, align 16
  %34 = add i64 %33, 200
  store i64 %34, ptr %32, align 16
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 356
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(156) %37, ptr noundef nonnull align 1 dereferenceable(156) %1, i64 156, i1 false)
  %38 = load <4 x i64>, ptr %0, align 32
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %40 = load <4 x i64>, ptr %39, align 1
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %42 = load <4 x i64>, ptr %41, align 1
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %44 = load <4 x i64>, ptr %43, align 32
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %46, i32 0, i32 3, i32 1)
  %47 = load <4 x i64>, ptr %36, align 1
  %48 = load <4 x i64>, ptr %45, align 1
  %49 = xor <4 x i64> %48, %47
  %50 = lshr <4 x i64> %49, splat (i64 32)
  %51 = and <4 x i64> %49, splat (i64 4294967295)
  %52 = mul nuw <4 x i64> %51, %50
  %53 = shufflevector <4 x i64> %47, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %54 = add <4 x i64> %38, %53
  %55 = add <4 x i64> %54, %52
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %57 = load <4 x i64>, ptr %56, align 1
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %59 = load <4 x i64>, ptr %58, align 1
  %60 = xor <4 x i64> %59, %57
  %61 = lshr <4 x i64> %60, splat (i64 32)
  %62 = and <4 x i64> %60, splat (i64 4294967295)
  %63 = mul nuw <4 x i64> %62, %61
  %64 = shufflevector <4 x i64> %57, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %65 = add <4 x i64> %44, %64
  %66 = add <4 x i64> %65, %63
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %68, i32 0, i32 3, i32 1)
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %70 = load <4 x i64>, ptr %67, align 1
  %71 = load <4 x i64>, ptr %69, align 1
  %72 = xor <4 x i64> %71, %70
  %73 = lshr <4 x i64> %72, splat (i64 32)
  %74 = and <4 x i64> %72, splat (i64 4294967295)
  %75 = mul nuw <4 x i64> %74, %73
  %76 = shufflevector <4 x i64> %70, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %77 = add <4 x i64> %55, %76
  %78 = add <4 x i64> %77, %75
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %80 = load <4 x i64>, ptr %79, align 1
  %81 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %82 = load <4 x i64>, ptr %81, align 1
  %83 = xor <4 x i64> %82, %80
  %84 = lshr <4 x i64> %83, splat (i64 32)
  %85 = and <4 x i64> %83, splat (i64 4294967295)
  %86 = mul nuw <4 x i64> %85, %84
  %87 = shufflevector <4 x i64> %80, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %88 = add <4 x i64> %66, %87
  %89 = add <4 x i64> %88, %86
  %90 = lshr <4 x i64> %78, splat (i64 47)
  %91 = xor <4 x i64> %40, %90
  %92 = xor <4 x i64> %91, %78
  %93 = lshr <4 x i64> %92, splat (i64 32)
  %94 = and <4 x i64> %92, splat (i64 4294967295)
  %95 = mul nuw <4 x i64> %94, splat (i64 2654435761)
  %96 = mul <4 x i64> %93, splat (i64 -7046029290881679360)
  %97 = add <4 x i64> %95, %96
  store <4 x i64> %97, ptr %0, align 32
  %98 = lshr <4 x i64> %89, splat (i64 47)
  %99 = xor <4 x i64> %42, %98
  %100 = xor <4 x i64> %99, %89
  %101 = lshr <4 x i64> %100, splat (i64 32)
  %102 = and <4 x i64> %100, splat (i64 4294967295)
  %103 = mul nuw <4 x i64> %102, splat (i64 2654435761)
  %104 = mul <4 x i64> %101, splat (i64 -7046029290881679360)
  %105 = add <4 x i64> %103, %104
  store <4 x i64> %105, ptr %43, align 32
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %108, i32 0, i32 3, i32 1)
  %109 = load <4 x i64>, ptr %107, align 1
  %110 = load <4 x i64>, ptr %35, align 1
  %111 = xor <4 x i64> %110, %109
  %112 = lshr <4 x i64> %111, splat (i64 32)
  %113 = and <4 x i64> %111, splat (i64 4294967295)
  %114 = mul nuw <4 x i64> %113, %112
  %115 = shufflevector <4 x i64> %109, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %116 = add <4 x i64> %97, %115
  %117 = add <4 x i64> %116, %114
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %119 = load <4 x i64>, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %121 = load <4 x i64>, ptr %120, align 1
  %122 = xor <4 x i64> %121, %119
  %123 = lshr <4 x i64> %122, splat (i64 32)
  %124 = and <4 x i64> %122, splat (i64 4294967295)
  %125 = mul nuw <4 x i64> %124, %123
  %126 = shufflevector <4 x i64> %119, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %127 = add <4 x i64> %105, %126
  %128 = add <4 x i64> %127, %125
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %130, i32 0, i32 3, i32 1)
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %132 = load <4 x i64>, ptr %129, align 1
  %133 = load <4 x i64>, ptr %131, align 1
  %134 = xor <4 x i64> %133, %132
  %135 = lshr <4 x i64> %134, splat (i64 32)
  %136 = and <4 x i64> %134, splat (i64 4294967295)
  %137 = mul nuw <4 x i64> %136, %135
  %138 = shufflevector <4 x i64> %132, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %139 = add <4 x i64> %117, %138
  %140 = add <4 x i64> %139, %137
  %141 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %142 = load <4 x i64>, ptr %141, align 1
  %143 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %144 = load <4 x i64>, ptr %143, align 1
  %145 = xor <4 x i64> %144, %142
  %146 = lshr <4 x i64> %145, splat (i64 32)
  %147 = and <4 x i64> %145, splat (i64 4294967295)
  %148 = mul nuw <4 x i64> %147, %146
  %149 = shufflevector <4 x i64> %142, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %150 = add <4 x i64> %128, %149
  %151 = add <4 x i64> %150, %148
  store <4 x i64> %140, ptr %0, align 32
  store <4 x i64> %151, ptr %106, align 32
  store i64 2, ptr %7, align 8
  store i32 0, ptr %3, align 64
  %152 = getelementptr inbounds nuw i8, ptr %1, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(44) %36, ptr noundef nonnull align 1 dereferenceable(44) %152, i64 44, i1 false)
  store i32 44, ptr %3, align 64
  br label %153

153:                                              ; preds = %22, %2, %6, %10, %14, %18, %30
  %154 = phi i32 [ 0, %30 ], [ -1, %18 ], [ -1, %14 ], [ -1, %10 ], [ -1, %6 ], [ -1, %2 ], [ -1, %22 ]
  ret i32 %154
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_update: argument 1"}
!7 = distinct !{!7, !"XXH3_update"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"XXH3_update: argument 0"}
!10 = !{!9, !6}
!11 = !{!12}
!12 = distinct !{!12, !13, !"XXH3_consumeStripes: argument 0"}
!13 = distinct !{!13, !"XXH3_consumeStripes"}
!14 = !{!15}
!15 = distinct !{!15, !13, !"XXH3_consumeStripes: argument 1"}
!16 = !{!17}
!17 = distinct !{!17, !13, !"XXH3_consumeStripes: argument 2"}
!18 = !{!19}
!19 = distinct !{!19, !13, !"XXH3_consumeStripes: argument 3"}
!20 = !{!21, !23, !12}
!21 = distinct !{!21, !22, !"XXH3_accumulate_512_avx2: argument 0"}
!22 = distinct !{!22, !"XXH3_accumulate_512_avx2"}
!23 = distinct !{!23, !24, !"XXH3_accumulate_avx2: argument 0"}
!24 = distinct !{!24, !"XXH3_accumulate_avx2"}
!25 = !{!26, !27, !28, !29, !15, !17, !19}
!26 = distinct !{!26, !22, !"XXH3_accumulate_512_avx2: argument 1"}
!27 = distinct !{!27, !22, !"XXH3_accumulate_512_avx2: argument 2"}
!28 = distinct !{!28, !24, !"XXH3_accumulate_avx2: argument 1"}
!29 = distinct !{!29, !24, !"XXH3_accumulate_avx2: argument 2"}
!30 = !{!31, !19}
!31 = distinct !{!31, !32, !"XXH3_scrambleAcc_avx2: argument 1"}
!32 = distinct !{!32, !"XXH3_scrambleAcc_avx2"}
!33 = !{!34, !12, !15, !17}
!34 = distinct !{!34, !32, !"XXH3_scrambleAcc_avx2: argument 0"}
!35 = !{!15, !17, !19}
!36 = !{!37}
!37 = distinct !{!37, !38, !"XXH3_accumulate_avx2: argument 1"}
!38 = distinct !{!38, !"XXH3_accumulate_avx2"}
!39 = !{!40}
!40 = distinct !{!40, !38, !"XXH3_accumulate_avx2: argument 2"}
!41 = !{!40, !15, !19}
!42 = !{!43}
!43 = distinct !{!43, !44, !"XXH3_accumulate_512_avx2: argument 1"}
!44 = distinct !{!44, !"XXH3_accumulate_512_avx2"}
!45 = !{!46}
!46 = distinct !{!46, !44, !"XXH3_accumulate_512_avx2: argument 2"}
!47 = !{!43, !37, !17}
!48 = !{!49, !46, !50, !40, !12, !15, !19}
!49 = distinct !{!49, !44, !"XXH3_accumulate_512_avx2: argument 0"}
!50 = distinct !{!50, !38, !"XXH3_accumulate_avx2: argument 0"}
!51 = !{!46, !40, !19}
!52 = !{!49, !43, !50, !37, !12, !15, !17}
!53 = !{!54}
!54 = distinct !{!54, !44, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!55 = !{!56}
!56 = distinct !{!56, !44, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!57 = !{!54, !37, !17}
!58 = !{!49, !56, !50, !40, !12, !15, !19}
!59 = !{!56, !40, !19}
!60 = !{!49, !54, !50, !37, !12, !15, !17}
!61 = !{!34}
!62 = !{!31}
!63 = !{!34, !12}
!64 = !{!31, !15, !17, !19}
!65 = !{!23}
!66 = !{!28}
!67 = !{!29}
!68 = !{!29, !15, !19}
!69 = !{!21}
!70 = !{!26}
!71 = !{!27}
!72 = !{!26, !28, !17}
!73 = !{!21, !27, !23, !29, !12, !15, !19}
!74 = !{!27, !29, !19}
!75 = !{!21, !26, !23, !28, !12, !15, !17}
!76 = !{!77}
!77 = distinct !{!77, !22, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!78 = !{!79}
!79 = distinct !{!79, !22, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!80 = !{!77, !28, !17}
!81 = !{!82, !79, !23, !29, !12, !15, !19}
!82 = distinct !{!82, !22, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!83 = !{!79, !29, !19}
!84 = !{!82, !77, !23, !28, !12, !15, !17}
!85 = !{!12, !17, !19}
