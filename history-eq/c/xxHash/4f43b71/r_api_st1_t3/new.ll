; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4f43b71/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4f43b71/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_100_200(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca <4 x i64>, align 32
  %3 = alloca %struct.XXH_NAMESPACEXXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %3) #7
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 512
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(512) %5, i8 0, i64 512, i1 false)
  store i64 3266489917, ptr %3, align 64
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -7046029288634856825, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 -4417276706812531889, ptr %7, align 16
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1609587929392839161, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 -8796714831421723037, ptr %9, align 32
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 2246822519, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 2870177450012600261, ptr %11, align 16
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 2654435761, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 568
  store ptr @XXH3_kSecret, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 544
  store i64 128, ptr %14, align 32
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 536
  store i64 16, ptr %15, align 8
  %16 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %16)
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 528
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(100) %18, ptr noundef nonnull align 1 dereferenceable(100) %0, i64 range(i64 100, 201) 100, i1 false)
  store i32 100, ptr %4, align 64
  store i64 300, ptr %17, align 16
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %20 = load <4 x i64>, ptr %3, align 64
  %21 = load <4 x i64>, ptr %9, align 32
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(156) %22, ptr noundef nonnull align 1 dereferenceable(156) %19, i64 156, i1 false)
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 576
  call void @llvm.prefetch.p0(ptr nonnull readonly %23, i32 0, i32 3, i32 1)
  %24 = load <4 x i64>, ptr %18, align 64
  %25 = xor <4 x i64> %24, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  %26 = lshr <4 x i64> %25, splat (i64 32)
  %27 = and <4 x i64> %25, splat (i64 4294967295)
  %28 = mul nuw <4 x i64> %27, %26
  %29 = shufflevector <4 x i64> %24, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %30 = add <4 x i64> %20, %29
  %31 = add <4 x i64> %30, %28
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 288
  %33 = load <4 x i64>, ptr %32, align 32
  %34 = xor <4 x i64> %33, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %35 = lshr <4 x i64> %34, splat (i64 32)
  %36 = and <4 x i64> %34, splat (i64 4294967295)
  %37 = mul nuw <4 x i64> %36, %35
  %38 = shufflevector <4 x i64> %33, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %39 = add <4 x i64> %21, %38
  %40 = add <4 x i64> %39, %37
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 320
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 640
  call void @llvm.prefetch.p0(ptr nonnull readonly %42, i32 0, i32 3, i32 1)
  %43 = load <4 x i64>, ptr %41, align 64
  %44 = xor <4 x i64> %43, <i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227>
  %45 = lshr <4 x i64> %44, splat (i64 32)
  %46 = and <4 x i64> %44, splat (i64 4294967295)
  %47 = mul nuw <4 x i64> %46, %45
  %48 = shufflevector <4 x i64> %43, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %49 = add <4 x i64> %31, %48
  %50 = add <4 x i64> %49, %47
  %51 = getelementptr inbounds nuw i8, ptr %3, i64 352
  %52 = load <4 x i64>, ptr %51, align 32
  %53 = xor <4 x i64> %52, <i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724>
  %54 = lshr <4 x i64> %53, splat (i64 32)
  %55 = and <4 x i64> %53, splat (i64 4294967295)
  %56 = mul nuw <4 x i64> %55, %54
  %57 = shufflevector <4 x i64> %52, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %58 = add <4 x i64> %40, %57
  %59 = add <4 x i64> %58, %56
  %60 = getelementptr inbounds nuw i8, ptr %3, i64 384
  %61 = getelementptr inbounds nuw i8, ptr %3, i64 704
  call void @llvm.prefetch.p0(ptr nonnull readonly %61, i32 0, i32 3, i32 1)
  %62 = load <4 x i64>, ptr %60, align 64
  %63 = xor <4 x i64> %62, <i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594>
  %64 = lshr <4 x i64> %63, splat (i64 32)
  %65 = and <4 x i64> %63, splat (i64 4294967295)
  %66 = mul nuw <4 x i64> %65, %64
  %67 = shufflevector <4 x i64> %62, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %68 = add <4 x i64> %50, %67
  %69 = add <4 x i64> %68, %66
  %70 = getelementptr inbounds nuw i8, ptr %3, i64 416
  %71 = load <4 x i64>, ptr %70, align 32
  %72 = xor <4 x i64> %71, <i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928>
  %73 = lshr <4 x i64> %72, splat (i64 32)
  %74 = and <4 x i64> %72, splat (i64 4294967295)
  %75 = mul nuw <4 x i64> %74, %73
  %76 = shufflevector <4 x i64> %71, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %77 = add <4 x i64> %59, %76
  %78 = add <4 x i64> %77, %75
  %79 = getelementptr inbounds nuw i8, ptr %3, i64 448
  %80 = getelementptr inbounds nuw i8, ptr %3, i64 768
  call void @llvm.prefetch.p0(ptr nonnull readonly %80, i32 0, i32 3, i32 1)
  %81 = load <4 x i64>, ptr %79, align 64
  %82 = xor <4 x i64> %81, <i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176>
  %83 = lshr <4 x i64> %82, splat (i64 32)
  %84 = and <4 x i64> %82, splat (i64 4294967295)
  %85 = mul nuw <4 x i64> %84, %83
  %86 = shufflevector <4 x i64> %81, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %87 = add <4 x i64> %69, %86
  %88 = add <4 x i64> %87, %85
  %89 = getelementptr inbounds nuw i8, ptr %3, i64 480
  %90 = load <4 x i64>, ptr %89, align 32
  %91 = xor <4 x i64> %90, <i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313>
  %92 = lshr <4 x i64> %91, splat (i64 32)
  %93 = and <4 x i64> %91, splat (i64 4294967295)
  %94 = mul nuw <4 x i64> %93, %92
  %95 = shufflevector <4 x i64> %90, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %96 = add <4 x i64> %78, %95
  %97 = add <4 x i64> %96, %94
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <4 x i64> %88, ptr %3, align 64
  store <4 x i64> %97, ptr %9, align 32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2)
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(20) %2, ptr noundef nonnull align 1 dereferenceable(20) %99, i64 20, i1 false)
  %100 = getelementptr inbounds nuw i8, ptr %2, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %100, ptr noundef nonnull align 1 dereferenceable(12) %98, i64 12, i1 false)
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %102 = load <4 x i64>, ptr %101, align 1
  %103 = load <4 x i64>, ptr %2, align 32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2)
  %104 = shufflevector <4 x i64> %103, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %105 = add <4 x i64> %88, %104
  %106 = xor <4 x i64> %103, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %107 = and <4 x i64> %106, splat (i64 4294967295)
  %108 = lshr <4 x i64> %106, splat (i64 32)
  %109 = mul nuw <4 x i64> %107, %108
  %110 = add <4 x i64> %105, %109
  %111 = extractelement <4 x i64> %110, i64 1
  %112 = xor i64 %111, -6611157965513653271
  %113 = zext i64 %112 to i128
  %114 = extractelement <4 x i64> %110, i64 0
  %115 = xor i64 %114, 7914194659941938988
  %116 = zext i64 %115 to i128
  %117 = mul nuw i128 %113, %116
  %118 = lshr i128 %117, 64
  %119 = xor i128 %118, %117
  %120 = trunc i128 %119 to i64
  %121 = add i64 %120, 7566781886141388340
  %122 = extractelement <4 x i64> %110, i64 3
  %123 = xor i64 %122, -3433288310154277810
  %124 = zext i64 %123 to i128
  %125 = extractelement <4 x i64> %110, i64 2
  %126 = xor i64 %125, -1839215637059881052
  %127 = zext i64 %126 to i128
  %128 = mul nuw i128 %124, %127
  %129 = lshr i128 %128, 64
  %130 = xor i128 %129, %128
  %131 = trunc i128 %130 to i64
  %132 = add i64 %121, %131
  %133 = shufflevector <4 x i64> %102, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %134 = add <4 x i64> %97, %133
  %135 = xor <4 x i64> %102, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %136 = and <4 x i64> %135, splat (i64 4294967295)
  %137 = lshr <4 x i64> %135, splat (i64 32)
  %138 = mul nuw <4 x i64> %136, %137
  %139 = add <4 x i64> %134, %138
  %140 = extractelement <4 x i64> %139, i64 1
  %141 = xor i64 %140, -8055285457383852172
  %142 = zext i64 %141 to i128
  %143 = extractelement <4 x i64> %139, i64 0
  %144 = xor i64 %143, 5046485836271438973
  %145 = zext i64 %144 to i128
  %146 = mul nuw i128 %142, %145
  %147 = lshr i128 %146, 64
  %148 = xor i128 %147, %146
  %149 = trunc i128 %148 to i64
  %150 = add i64 %132, %149
  %151 = extractelement <4 x i64> %139, i64 3
  %152 = xor i64 %151, 7336514198459093435
  %153 = zext i64 %152 to i128
  %154 = extractelement <4 x i64> %139, i64 2
  %155 = xor i64 %154, 5920048007935066598
  %156 = zext i64 %155 to i128
  %157 = mul nuw i128 %153, %156
  %158 = lshr i128 %157, 64
  %159 = xor i128 %158, %157
  %160 = trunc i128 %159 to i64
  %161 = add i64 %150, %160
  %162 = lshr i64 %161, 37
  %163 = xor i64 %162, %161
  %164 = mul i64 %163, 1609587791953885689
  %165 = lshr i64 %164, 32
  %166 = xor i64 %165, %164
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %3) #7
  ret i64 %166
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { nofree norecurse nosync nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nounwind }

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
!8 = !{!9, !6}
!9 = distinct !{!9, !7, !"XXH3_update: argument 0"}
!10 = !{!9}
!11 = !{!12}
!12 = distinct !{!12, !13, !"XXH3_update: argument 1"}
!13 = distinct !{!13, !"XXH3_update"}
!14 = !{!15}
!15 = distinct !{!15, !13, !"XXH3_update: argument 0"}
!16 = !{!15, !12}
!17 = !{!18, !20, !22}
!18 = distinct !{!18, !19, !"XXH3_accumulate_avx2: argument 2"}
!19 = distinct !{!19, !"XXH3_accumulate_avx2"}
!20 = distinct !{!20, !21, !"XXH3_consumeStripes: argument 1"}
!21 = distinct !{!21, !"XXH3_consumeStripes"}
!22 = distinct !{!22, !21, !"XXH3_consumeStripes: argument 3"}
!23 = !{!24, !26, !27, !15}
!24 = distinct !{!24, !25, !"XXH3_accumulate_512_avx2: argument 1"}
!25 = distinct !{!25, !"XXH3_accumulate_512_avx2"}
!26 = distinct !{!26, !19, !"XXH3_accumulate_avx2: argument 1"}
!27 = distinct !{!27, !21, !"XXH3_consumeStripes: argument 2"}
!28 = !{!29, !30, !31, !18, !32, !20, !22, !12}
!29 = distinct !{!29, !25, !"XXH3_accumulate_512_avx2: argument 0"}
!30 = distinct !{!30, !25, !"XXH3_accumulate_512_avx2: argument 2"}
!31 = distinct !{!31, !19, !"XXH3_accumulate_avx2: argument 0"}
!32 = distinct !{!32, !21, !"XXH3_consumeStripes: argument 0"}
!33 = !{!34, !26, !27, !15}
!34 = distinct !{!34, !25, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!35 = !{!29, !36, !31, !18, !32, !20, !22, !12}
!36 = distinct !{!36, !25, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!37 = !{!38, !26, !27, !15}
!38 = distinct !{!38, !25, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!39 = !{!29, !40, !31, !18, !32, !20, !22, !12}
!40 = distinct !{!40, !25, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!41 = !{!42, !26, !27, !15}
!42 = distinct !{!42, !25, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!43 = !{!29, !44, !31, !18, !32, !20, !22, !12}
!44 = distinct !{!44, !25, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"XXH3_accumulate_512_avx2: argument 1"}
!47 = distinct !{!47, !"XXH3_accumulate_512_avx2"}
!48 = !{!49, !50}
!49 = distinct !{!49, !47, !"XXH3_accumulate_512_avx2: argument 0"}
!50 = distinct !{!50, !47, !"XXH3_accumulate_512_avx2: argument 2"}
