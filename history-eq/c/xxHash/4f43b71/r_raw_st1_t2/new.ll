; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4f43b71/wrap_raw.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4f43b71/wrap_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @target_raw_large(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 512
  %4 = load i32, ptr %3, align 64
  %5 = icmp eq i32 %4, 100
  br i1 %5, label %6, label %152

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 520
  %8 = load i64, ptr %7, align 8
  %9 = icmp eq i64 %8, 14
  br i1 %9, label %10, label %152

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 536
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %12, 16
  br i1 %13, label %14, label %152

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %16 = load i64, ptr %15, align 32
  %17 = icmp eq i64 %16, 128
  br i1 %17, label %18, label %152

18:                                               ; preds = %14
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %152

22:                                               ; preds = %18
  %23 = ptrtoint ptr %1 to i64
  %24 = ptrtoint ptr %0 to i64
  %25 = add i64 %23, 200
  %26 = icmp ule i64 %25, %24
  %27 = add i64 %24, 576
  %28 = icmp ule i64 %27, %23
  %29 = or i1 %28, %26
  br i1 %29, label %30, label %152

30:                                               ; preds = %22
  %31 = icmp ne ptr %1, null
  tail call void @llvm.assume(i1 %31)
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 528
  %33 = load i64, ptr %32, align 16
  %34 = add i64 %33, 200
  store i64 %34, ptr %32, align 16
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %36 = load <4 x i64>, ptr %0, align 64
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %38 = load <4 x i64>, ptr %37, align 32
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 356
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(156) %40, ptr noundef nonnull align 1 dereferenceable(156) %1, i64 156, i1 false)
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %42 = load <4 x i64>, ptr %41, align 1
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %44 = load <4 x i64>, ptr %43, align 1
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %46, i32 0, i32 3, i32 1)
  %47 = load <4 x i64>, ptr %39, align 1
  %48 = load <4 x i64>, ptr %45, align 1
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %50 = load <4 x i64>, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %52 = load <4 x i64>, ptr %51, align 1
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %54, i32 0, i32 3, i32 1)
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %56 = load <4 x i64>, ptr %53, align 1
  %57 = load <4 x i64>, ptr %55, align 1
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %59 = load <4 x i64>, ptr %58, align 1
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %61 = load <4 x i64>, ptr %60, align 1
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %63 = shufflevector <4 x i64> %50, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %64 = add <4 x i64> %38, %63
  %65 = xor <4 x i64> %52, %50
  %66 = and <4 x i64> %65, splat (i64 4294967295)
  %67 = lshr <4 x i64> %65, splat (i64 32)
  %68 = mul nuw <4 x i64> %66, %67
  %69 = add <4 x i64> %64, %68
  %70 = shufflevector <4 x i64> %59, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %71 = add <4 x i64> %69, %70
  %72 = xor <4 x i64> %61, %59
  %73 = and <4 x i64> %72, splat (i64 4294967295)
  %74 = lshr <4 x i64> %72, splat (i64 32)
  %75 = mul nuw <4 x i64> %73, %74
  %76 = add <4 x i64> %71, %75
  %77 = lshr <4 x i64> %76, splat (i64 47)
  %78 = xor <4 x i64> %44, %77
  %79 = xor <4 x i64> %78, %76
  %80 = and <4 x i64> %79, splat (i64 4294967295)
  %81 = mul nuw <4 x i64> %80, splat (i64 2654435761)
  %82 = lshr <4 x i64> %79, splat (i64 32)
  %83 = mul <4 x i64> %82, splat (i64 -7046029290881679360)
  %84 = add <4 x i64> %81, %83
  %85 = shufflevector <4 x i64> %47, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %86 = add <4 x i64> %36, %85
  %87 = xor <4 x i64> %48, %47
  %88 = and <4 x i64> %87, splat (i64 4294967295)
  %89 = lshr <4 x i64> %87, splat (i64 32)
  %90 = mul nuw <4 x i64> %88, %89
  %91 = add <4 x i64> %86, %90
  %92 = shufflevector <4 x i64> %56, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %93 = add <4 x i64> %91, %92
  %94 = xor <4 x i64> %57, %56
  %95 = and <4 x i64> %94, splat (i64 4294967295)
  %96 = lshr <4 x i64> %94, splat (i64 32)
  %97 = mul nuw <4 x i64> %95, %96
  %98 = add <4 x i64> %93, %97
  %99 = lshr <4 x i64> %98, splat (i64 47)
  %100 = xor <4 x i64> %42, %99
  %101 = xor <4 x i64> %100, %98
  %102 = and <4 x i64> %101, splat (i64 4294967295)
  %103 = mul nuw <4 x i64> %102, splat (i64 2654435761)
  %104 = lshr <4 x i64> %101, splat (i64 32)
  %105 = mul <4 x i64> %104, splat (i64 -7046029290881679360)
  %106 = add <4 x i64> %103, %105
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %107, i32 0, i32 3, i32 1)
  %108 = load <4 x i64>, ptr %62, align 1
  %109 = load <4 x i64>, ptr %35, align 1
  %110 = xor <4 x i64> %109, %108
  %111 = lshr <4 x i64> %110, splat (i64 32)
  %112 = and <4 x i64> %110, splat (i64 4294967295)
  %113 = mul nuw <4 x i64> %112, %111
  %114 = shufflevector <4 x i64> %108, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %115 = add <4 x i64> %106, %114
  %116 = add <4 x i64> %115, %113
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %118 = load <4 x i64>, ptr %117, align 1
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %120 = load <4 x i64>, ptr %119, align 1
  %121 = xor <4 x i64> %120, %118
  %122 = lshr <4 x i64> %121, splat (i64 32)
  %123 = and <4 x i64> %121, splat (i64 4294967295)
  %124 = mul nuw <4 x i64> %123, %122
  %125 = shufflevector <4 x i64> %118, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %126 = add <4 x i64> %84, %125
  %127 = add <4 x i64> %126, %124
  %128 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 768
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %129, i32 0, i32 3, i32 1)
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %131 = load <4 x i64>, ptr %128, align 1
  %132 = load <4 x i64>, ptr %130, align 1
  %133 = xor <4 x i64> %132, %131
  %134 = lshr <4 x i64> %133, splat (i64 32)
  %135 = and <4 x i64> %133, splat (i64 4294967295)
  %136 = mul nuw <4 x i64> %135, %134
  %137 = shufflevector <4 x i64> %131, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %138 = add <4 x i64> %116, %137
  %139 = add <4 x i64> %138, %136
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 480
  %141 = load <4 x i64>, ptr %140, align 1
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %143 = load <4 x i64>, ptr %142, align 1
  %144 = xor <4 x i64> %143, %141
  %145 = lshr <4 x i64> %144, splat (i64 32)
  %146 = and <4 x i64> %144, splat (i64 4294967295)
  %147 = mul nuw <4 x i64> %146, %145
  %148 = shufflevector <4 x i64> %141, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %149 = add <4 x i64> %127, %148
  %150 = add <4 x i64> %149, %147
  store i64 2, ptr %7, align 8
  store i32 0, ptr %3, align 64
  %151 = getelementptr inbounds nuw i8, ptr %1, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(44) %39, ptr noundef nonnull align 1 dereferenceable(44) %151, i64 44, i1 false)
  store i32 44, ptr %3, align 64
  store <4 x i64> %139, ptr %0, align 64
  store <4 x i64> %150, ptr %37, align 32
  br label %152

152:                                              ; preds = %22, %2, %6, %10, %14, %18, %30
  %153 = phi i32 [ 0, %30 ], [ -1, %18 ], [ -1, %14 ], [ -1, %10 ], [ -1, %6 ], [ -1, %2 ], [ -1, %22 ]
  ret i32 %153
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
!12 = distinct !{!12, !13, !"XXH3_consumeStripes: argument 1"}
!13 = distinct !{!13, !"XXH3_consumeStripes"}
!14 = !{!15}
!15 = distinct !{!15, !13, !"XXH3_consumeStripes: argument 2"}
!16 = !{!17}
!17 = distinct !{!17, !13, !"XXH3_consumeStripes: argument 3"}
!18 = !{!19, !17}
!19 = distinct !{!19, !20, !"XXH3_scrambleAcc_avx2: argument 1"}
!20 = distinct !{!20, !"XXH3_scrambleAcc_avx2"}
!21 = !{!22, !23, !12, !15}
!22 = distinct !{!22, !20, !"XXH3_scrambleAcc_avx2: argument 0"}
!23 = distinct !{!23, !13, !"XXH3_consumeStripes: argument 0"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"XXH3_accumulate_avx2: argument 1"}
!26 = distinct !{!26, !"XXH3_accumulate_avx2"}
!27 = !{!28}
!28 = distinct !{!28, !26, !"XXH3_accumulate_avx2: argument 2"}
!29 = !{!28, !12, !17}
!30 = !{!31}
!31 = distinct !{!31, !32, !"XXH3_accumulate_512_avx2: argument 1"}
!32 = distinct !{!32, !"XXH3_accumulate_512_avx2"}
!33 = !{!34}
!34 = distinct !{!34, !32, !"XXH3_accumulate_512_avx2: argument 2"}
!35 = !{!31, !25, !15}
!36 = !{!37, !34, !38, !28, !23, !12, !17}
!37 = distinct !{!37, !32, !"XXH3_accumulate_512_avx2: argument 0"}
!38 = distinct !{!38, !26, !"XXH3_accumulate_avx2: argument 0"}
!39 = !{!34, !28, !17}
!40 = !{!37, !31, !38, !25, !23, !12, !15}
!41 = !{!42}
!42 = distinct !{!42, !32, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!43 = !{!44}
!44 = distinct !{!44, !32, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!45 = !{!42, !25, !15}
!46 = !{!37, !44, !38, !28, !23, !12, !17}
!47 = !{!44, !28, !17}
!48 = !{!37, !42, !38, !25, !23, !12, !15}
!49 = !{!50}
!50 = distinct !{!50, !51, !"XXH3_accumulate_avx2: argument 1"}
!51 = distinct !{!51, !"XXH3_accumulate_avx2"}
!52 = !{!53}
!53 = distinct !{!53, !51, !"XXH3_accumulate_avx2: argument 2"}
!54 = !{!53, !12, !17}
!55 = !{!56}
!56 = distinct !{!56, !57, !"XXH3_accumulate_512_avx2: argument 1"}
!57 = distinct !{!57, !"XXH3_accumulate_512_avx2"}
!58 = !{!59}
!59 = distinct !{!59, !57, !"XXH3_accumulate_512_avx2: argument 2"}
!60 = !{!56, !50, !15}
!61 = !{!62, !59, !63, !53, !23, !12, !17}
!62 = distinct !{!62, !57, !"XXH3_accumulate_512_avx2: argument 0"}
!63 = distinct !{!63, !51, !"XXH3_accumulate_avx2: argument 0"}
!64 = !{!59, !53, !17}
!65 = !{!62, !56, !63, !50, !23, !12, !15}
!66 = !{!67}
!67 = distinct !{!67, !57, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!68 = !{!69}
!69 = distinct !{!69, !57, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!70 = !{!67, !50, !15}
!71 = !{!62, !69, !63, !53, !23, !12, !17}
!72 = !{!69, !53, !17}
!73 = !{!62, !67, !63, !50, !23, !12, !15}
!74 = !{!23, !15, !17}
