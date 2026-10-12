; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4b12376/wrap_api_big128.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4b12376/wrap_api_big128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_128b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_128_len1100(ptr noundef writeonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = load <8 x i64>, ptr @__const.XXH3_hashLong_128b_internal.acc, align 64
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ 0, %2 ], [ %42, %4 ]
  %6 = phi <8 x i64> [ %3, %2 ], [ %41, %4 ]
  %7 = shl nuw nsw i64 %5, 6
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %9, i32 0, i32 3, i32 1)
  %10 = shl nuw nsw i64 %5, 3
  %11 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %10
  %12 = load <8 x i64>, ptr %8, align 1
  %13 = load <8 x i64>, ptr %11, align 16
  %14 = xor <8 x i64> %13, %12
  %15 = bitcast <8 x i64> %14 to <16 x i32>
  %16 = shufflevector <16 x i32> %15, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %17 = bitcast <16 x i32> %16 to <8 x i64>
  %18 = and <8 x i64> %14, splat (i64 4294967295)
  %19 = and <8 x i64> %17, splat (i64 4294967295)
  %20 = mul nuw <8 x i64> %19, %18
  %21 = shufflevector <8 x i64> %12, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %22 = add <8 x i64> %6, %21
  %23 = add <8 x i64> %22, %20
  %24 = or disjoint i64 %5, 1
  %25 = shl nuw nsw i64 %24, 6
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 %25
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %27, i32 0, i32 3, i32 1)
  %28 = shl nuw nsw i64 %24, 3
  %29 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %28
  %30 = load <8 x i64>, ptr %26, align 1
  %31 = load <8 x i64>, ptr %29, align 8
  %32 = xor <8 x i64> %31, %30
  %33 = bitcast <8 x i64> %32 to <16 x i32>
  %34 = shufflevector <16 x i32> %33, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %35 = bitcast <16 x i32> %34 to <8 x i64>
  %36 = and <8 x i64> %32, splat (i64 4294967295)
  %37 = and <8 x i64> %35, splat (i64 4294967295)
  %38 = mul nuw <8 x i64> %37, %36
  %39 = shufflevector <8 x i64> %30, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %40 = add <8 x i64> %23, %39
  %41 = add <8 x i64> %40, %38
  %42 = add nuw nsw i64 %5, 2
  %43 = icmp eq i64 %42, 16
  br i1 %43, label %44, label %4

44:                                               ; preds = %4
  %45 = lshr <8 x i64> %41, splat (i64 47)
  %46 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @kSecret, i64 128), align 64
  %47 = xor <8 x i64> %45, %46
  %48 = xor <8 x i64> %47, %41
  %49 = bitcast <8 x i64> %48 to <16 x i32>
  %50 = shufflevector <16 x i32> %49, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %51 = bitcast <16 x i32> %50 to <8 x i64>
  %52 = and <8 x i64> %48, splat (i64 4294967295)
  %53 = mul nuw <8 x i64> %52, splat (i64 2654435761)
  %54 = mul <8 x i64> %51, splat (i64 -7046029290881679360)
  %55 = add <8 x i64> %54, %53
  %56 = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 1408
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %57, i32 0, i32 3, i32 1)
  %58 = load <8 x i64>, ptr %56, align 1
  %59 = load <8 x i64>, ptr @kSecret, align 64
  %60 = xor <8 x i64> %59, %58
  %61 = bitcast <8 x i64> %60 to <16 x i32>
  %62 = shufflevector <16 x i32> %61, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %63 = bitcast <16 x i32> %62 to <8 x i64>
  %64 = and <8 x i64> %60, splat (i64 4294967295)
  %65 = and <8 x i64> %63, splat (i64 4294967295)
  %66 = mul nuw <8 x i64> %65, %64
  %67 = shufflevector <8 x i64> %58, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %68 = add <8 x i64> %55, %67
  %69 = getelementptr inbounds nuw i8, ptr %1, i64 1036
  %70 = load <8 x i64>, ptr %69, align 1
  %71 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @kSecret, i64 121), align 1
  %72 = xor <8 x i64> %71, %70
  %73 = bitcast <8 x i64> %72 to <16 x i32>
  %74 = shufflevector <16 x i32> %73, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %75 = bitcast <16 x i32> %74 to <8 x i64>
  %76 = and <8 x i64> %72, splat (i64 4294967295)
  %77 = and <8 x i64> %75, splat (i64 4294967295)
  %78 = mul nuw <8 x i64> %77, %76
  %79 = shufflevector <8 x i64> %70, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %80 = add <8 x i64> %68, %79
  %81 = add <8 x i64> %80, %66
  %82 = add <8 x i64> %81, %78
  %83 = extractelement <8 x i64> %82, i64 0
  %84 = extractelement <8 x i64> %82, i64 1
  %85 = xor i64 %83, 7914194659941938988
  %86 = xor i64 %84, -6611157965513653271
  %87 = zext i64 %85 to i128
  %88 = zext i64 %86 to i128
  %89 = mul nuw i128 %88, %87
  %90 = lshr i128 %89, 64
  %91 = xor i128 %90, %89
  %92 = trunc i128 %91 to i64
  %93 = add i64 %92, -2999706540330828780
  %94 = extractelement <8 x i64> %82, i64 2
  %95 = extractelement <8 x i64> %82, i64 3
  %96 = xor i64 %94, -1839215637059881052
  %97 = xor i64 %95, -3433288310154277810
  %98 = zext i64 %96 to i128
  %99 = zext i64 %97 to i128
  %100 = mul nuw i128 %99, %98
  %101 = lshr i128 %100, 64
  %102 = xor i128 %101, %100
  %103 = trunc i128 %102 to i64
  %104 = add i64 %93, %103
  %105 = extractelement <8 x i64> %82, i64 4
  %106 = extractelement <8 x i64> %82, i64 5
  %107 = xor i64 %105, 5046485836271438973
  %108 = xor i64 %106, -8055285457383852172
  %109 = zext i64 %107 to i128
  %110 = zext i64 %108 to i128
  %111 = mul nuw i128 %110, %109
  %112 = lshr i128 %111, 64
  %113 = xor i128 %112, %111
  %114 = trunc i128 %113 to i64
  %115 = add i64 %104, %114
  %116 = extractelement <8 x i64> %82, i64 6
  %117 = extractelement <8 x i64> %82, i64 7
  %118 = xor i64 %116, 5920048007935066598
  %119 = xor i64 %117, 7336514198459093435
  %120 = zext i64 %118 to i128
  %121 = zext i64 %119 to i128
  %122 = mul nuw i128 %121, %120
  %123 = lshr i128 %122, 64
  %124 = xor i128 %123, %122
  %125 = trunc i128 %124 to i64
  %126 = add i64 %115, %125
  %127 = lshr i64 %126, 37
  %128 = xor i64 %127, %126
  %129 = mul i64 %128, 1609587791953885689
  %130 = lshr i64 %129, 32
  %131 = xor i64 %130, %129
  %132 = xor i64 %83, -2753530472436770380
  %133 = xor i64 %84, 3784058077962335096
  %134 = zext i64 %132 to i128
  %135 = zext i64 %133 to i128
  %136 = mul nuw i128 %135, %134
  %137 = lshr i128 %136, 64
  %138 = xor i128 %137, %136
  %139 = trunc i128 %138 to i64
  %140 = add i64 %139, 7510686108173002891
  %141 = xor i64 %94, -360392965937173549
  %142 = xor i64 %95, -5237161843349560557
  %143 = zext i64 %141 to i128
  %144 = zext i64 %142 to i128
  %145 = mul nuw i128 %144, %143
  %146 = lshr i128 %145, 64
  %147 = xor i128 %146, %145
  %148 = trunc i128 %147 to i64
  %149 = add i64 %140, %148
  %150 = xor i64 %105, 2965150961192524528
  %151 = xor i64 %106, 9032178055121889492
  %152 = zext i64 %150 to i128
  %153 = zext i64 %151 to i128
  %154 = mul nuw i128 %153, %152
  %155 = lshr i128 %154, 64
  %156 = xor i128 %155, %154
  %157 = trunc i128 %156 to i64
  %158 = add i64 %149, %157
  %159 = xor i64 %116, 8850058120466833735
  %160 = xor i64 %117, -7669846995664752176
  %161 = zext i64 %159 to i128
  %162 = zext i64 %160 to i128
  %163 = mul nuw i128 %162, %161
  %164 = lshr i128 %163, 64
  %165 = xor i128 %164, %163
  %166 = trunc i128 %165 to i64
  %167 = add i64 %158, %166
  %168 = lshr i64 %167, 37
  %169 = xor i64 %168, %167
  %170 = mul i64 %169, 1609587791953885689
  %171 = lshr i64 %170, 32
  %172 = xor i64 %171, %170
  store i64 %131, ptr %0, align 8
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %172, ptr %173, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+avx512f,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
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
!6 = distinct !{!6, !7, !"XXH3_hashLong_128b_internal: argument 0"}
!7 = distinct !{!7, !"XXH3_hashLong_128b_internal"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"XXH3_hashLong_internal_loop: argument 1"}
!10 = distinct !{!10, !"XXH3_hashLong_internal_loop"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"XXH3_accumulate: argument 1"}
!13 = distinct !{!13, !"XXH3_accumulate"}
!14 = !{!15, !16}
!15 = distinct !{!15, !13, !"XXH3_accumulate: argument 0"}
!16 = distinct !{!16, !10, !"XXH3_hashLong_internal_loop: argument 0"}
!17 = !{!12, !9, !6}
!18 = !{!15, !12, !16, !9, !6}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!22, !16, !9, !6}
!22 = distinct !{!22, !23, !"XXH3_scrambleAcc: argument 0"}
!23 = distinct !{!23, !"XXH3_scrambleAcc"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"XXH3_accumulate: argument 1"}
!26 = distinct !{!26, !"XXH3_accumulate"}
!27 = !{!28, !16}
!28 = distinct !{!28, !26, !"XXH3_accumulate: argument 0"}
!29 = !{!25, !9, !6}
!30 = !{!28, !25, !16, !9, !6}
!31 = !{!9, !6}
!32 = !{!16}
!33 = !{!16, !9, !6}
