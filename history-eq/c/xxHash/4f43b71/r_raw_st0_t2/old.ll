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
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %34 = load i64, ptr %33, align 16
  %35 = add i64 %34, 200
  store i64 %35, ptr %33, align 16
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 356
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(156) %37, ptr noundef nonnull align 1 dereferenceable(156) %1, i64 156, i1 false)
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 156
  %39 = load <4 x i64>, ptr %0, align 32
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %41 = load <4 x i64>, ptr %40, align 1
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %43 = load <4 x i64>, ptr %42, align 1
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %45 = load <4 x i64>, ptr %44, align 32
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %47, i32 0, i32 3, i32 1)
  %48 = load <4 x i64>, ptr %36, align 1
  %49 = load <4 x i64>, ptr %46, align 1
  %50 = xor <4 x i64> %49, %48
  %51 = lshr <4 x i64> %50, splat (i64 32)
  %52 = and <4 x i64> %50, splat (i64 4294967295)
  %53 = mul nuw <4 x i64> %52, %51
  %54 = shufflevector <4 x i64> %48, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %55 = add <4 x i64> %39, %54
  %56 = add <4 x i64> %55, %53
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %58 = load <4 x i64>, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %60 = load <4 x i64>, ptr %59, align 1
  %61 = xor <4 x i64> %60, %58
  %62 = lshr <4 x i64> %61, splat (i64 32)
  %63 = and <4 x i64> %61, splat (i64 4294967295)
  %64 = mul nuw <4 x i64> %63, %62
  %65 = shufflevector <4 x i64> %58, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %66 = add <4 x i64> %45, %65
  %67 = add <4 x i64> %66, %64
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %69, i32 0, i32 3, i32 1)
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %71 = load <4 x i64>, ptr %68, align 1
  %72 = load <4 x i64>, ptr %70, align 1
  %73 = xor <4 x i64> %72, %71
  %74 = lshr <4 x i64> %73, splat (i64 32)
  %75 = and <4 x i64> %73, splat (i64 4294967295)
  %76 = mul nuw <4 x i64> %75, %74
  %77 = shufflevector <4 x i64> %71, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %78 = add <4 x i64> %56, %77
  %79 = add <4 x i64> %78, %76
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %81 = load <4 x i64>, ptr %80, align 1
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %83 = load <4 x i64>, ptr %82, align 1
  %84 = xor <4 x i64> %83, %81
  %85 = lshr <4 x i64> %84, splat (i64 32)
  %86 = and <4 x i64> %84, splat (i64 4294967295)
  %87 = mul nuw <4 x i64> %86, %85
  %88 = shufflevector <4 x i64> %81, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %89 = add <4 x i64> %67, %88
  %90 = add <4 x i64> %89, %87
  %91 = lshr <4 x i64> %79, splat (i64 47)
  %92 = xor <4 x i64> %41, %91
  %93 = xor <4 x i64> %92, %79
  %94 = lshr <4 x i64> %93, splat (i64 32)
  %95 = and <4 x i64> %93, splat (i64 4294967295)
  %96 = mul nuw <4 x i64> %95, splat (i64 2654435761)
  %97 = mul <4 x i64> %94, splat (i64 -7046029290881679360)
  %98 = add <4 x i64> %96, %97
  store <4 x i64> %98, ptr %0, align 32
  %99 = lshr <4 x i64> %90, splat (i64 47)
  %100 = xor <4 x i64> %43, %99
  %101 = xor <4 x i64> %100, %90
  %102 = lshr <4 x i64> %101, splat (i64 32)
  %103 = and <4 x i64> %101, splat (i64 4294967295)
  %104 = mul nuw <4 x i64> %103, splat (i64 2654435761)
  %105 = mul <4 x i64> %102, splat (i64 -7046029290881679360)
  %106 = add <4 x i64> %104, %105
  store <4 x i64> %106, ptr %44, align 32
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %109, i32 0, i32 3, i32 1)
  %110 = load <4 x i64>, ptr %108, align 1
  %111 = load <4 x i64>, ptr %32, align 1
  %112 = xor <4 x i64> %111, %110
  %113 = lshr <4 x i64> %112, splat (i64 32)
  %114 = and <4 x i64> %112, splat (i64 4294967295)
  %115 = mul nuw <4 x i64> %114, %113
  %116 = shufflevector <4 x i64> %110, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %117 = add <4 x i64> %98, %116
  %118 = add <4 x i64> %117, %115
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %120 = load <4 x i64>, ptr %119, align 1
  %121 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %122 = load <4 x i64>, ptr %121, align 1
  %123 = xor <4 x i64> %122, %120
  %124 = lshr <4 x i64> %123, splat (i64 32)
  %125 = and <4 x i64> %123, splat (i64 4294967295)
  %126 = mul nuw <4 x i64> %125, %124
  %127 = shufflevector <4 x i64> %120, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %128 = add <4 x i64> %106, %127
  %129 = add <4 x i64> %128, %126
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %131, i32 0, i32 3, i32 1)
  %132 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %133 = load <4 x i64>, ptr %130, align 1
  %134 = load <4 x i64>, ptr %132, align 1
  %135 = xor <4 x i64> %134, %133
  %136 = lshr <4 x i64> %135, splat (i64 32)
  %137 = and <4 x i64> %135, splat (i64 4294967295)
  %138 = mul nuw <4 x i64> %137, %136
  %139 = shufflevector <4 x i64> %133, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %140 = add <4 x i64> %118, %139
  %141 = add <4 x i64> %140, %138
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %143 = load <4 x i64>, ptr %142, align 1
  %144 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %145 = load <4 x i64>, ptr %144, align 1
  %146 = xor <4 x i64> %145, %143
  %147 = lshr <4 x i64> %146, splat (i64 32)
  %148 = and <4 x i64> %146, splat (i64 4294967295)
  %149 = mul nuw <4 x i64> %148, %147
  %150 = shufflevector <4 x i64> %143, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %151 = add <4 x i64> %129, %150
  %152 = add <4 x i64> %151, %149
  store <4 x i64> %141, ptr %0, align 32
  store <4 x i64> %152, ptr %107, align 32
  store i64 2, ptr %7, align 8
  store i32 0, ptr %3, align 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(44) %36, ptr noundef nonnull align 1 dereferenceable(44) %38, i64 44, i1 false)
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
