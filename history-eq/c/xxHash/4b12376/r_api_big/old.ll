; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4b12376/wrap_api_big.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4b12376/wrap_api_big.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_64_len1100(ptr noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %35, %2 ]
  %4 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %1 ], [ %21, %2 ]
  %5 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %1 ], [ %34, %2 ]
  %6 = shl nuw nsw i64 %3, 6
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 384
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %8, i32 0, i32 3, i32 1)
  %9 = shl nuw nsw i64 %3, 3
  %10 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %9
  %11 = load <4 x i64>, ptr %7, align 1
  %12 = load <4 x i64>, ptr %10, align 8
  %13 = xor <4 x i64> %12, %11
  %14 = bitcast <4 x i64> %13 to <8 x i32>
  %15 = shufflevector <8 x i32> %14, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %16 = bitcast <8 x i32> %15 to <4 x i64>
  %17 = and <4 x i64> %13, splat (i64 4294967295)
  %18 = and <4 x i64> %16, splat (i64 4294967295)
  %19 = mul nuw <4 x i64> %18, %17
  %20 = add <4 x i64> %11, %4
  %21 = add <4 x i64> %20, %19
  %22 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %23 = load <4 x i64>, ptr %22, align 1
  %24 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %25 = load <4 x i64>, ptr %24, align 8
  %26 = xor <4 x i64> %25, %23
  %27 = bitcast <4 x i64> %26 to <8 x i32>
  %28 = shufflevector <8 x i32> %27, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %29 = bitcast <8 x i32> %28 to <4 x i64>
  %30 = and <4 x i64> %26, splat (i64 4294967295)
  %31 = and <4 x i64> %29, splat (i64 4294967295)
  %32 = mul nuw <4 x i64> %31, %30
  %33 = add <4 x i64> %23, %5
  %34 = add <4 x i64> %33, %32
  %35 = add nuw nsw i64 %3, 1
  %36 = icmp eq i64 %35, 16
  br i1 %36, label %37, label %2

37:                                               ; preds = %2
  %38 = lshr <4 x i64> %21, splat (i64 47)
  %39 = xor <4 x i64> %21, %38
  %40 = xor <4 x i64> %39, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %41 = bitcast <4 x i64> %40 to <8 x i32>
  %42 = shufflevector <8 x i32> %41, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %43 = bitcast <8 x i32> %42 to <4 x i64>
  %44 = and <4 x i64> %40, splat (i64 4294967295)
  %45 = mul nuw <4 x i64> %44, splat (i64 2654435761)
  %46 = mul <4 x i64> %43, splat (i64 -7046029290881679360)
  %47 = add <4 x i64> %46, %45
  %48 = lshr <4 x i64> %34, splat (i64 47)
  %49 = xor <4 x i64> %34, %48
  %50 = xor <4 x i64> %49, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %51 = bitcast <4 x i64> %50 to <8 x i32>
  %52 = shufflevector <8 x i32> %51, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %53 = bitcast <8 x i32> %52 to <4 x i64>
  %54 = and <4 x i64> %50, splat (i64 4294967295)
  %55 = mul nuw <4 x i64> %54, splat (i64 2654435761)
  %56 = mul <4 x i64> %53, splat (i64 -7046029290881679360)
  %57 = add <4 x i64> %56, %55
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 1408
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %59, i32 0, i32 3, i32 1)
  %60 = load <4 x i64>, ptr %58, align 1
  %61 = xor <4 x i64> %60, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  %62 = bitcast <4 x i64> %61 to <8 x i32>
  %63 = shufflevector <8 x i32> %62, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %64 = bitcast <8 x i32> %63 to <4 x i64>
  %65 = and <4 x i64> %61, splat (i64 4294967295)
  %66 = and <4 x i64> %64, splat (i64 4294967295)
  %67 = mul nuw <4 x i64> %66, %65
  %68 = add <4 x i64> %47, %60
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %70 = load <4 x i64>, ptr %69, align 1
  %71 = xor <4 x i64> %70, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %72 = bitcast <4 x i64> %71 to <8 x i32>
  %73 = shufflevector <8 x i32> %72, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %74 = bitcast <8 x i32> %73 to <4 x i64>
  %75 = and <4 x i64> %71, splat (i64 4294967295)
  %76 = and <4 x i64> %74, splat (i64 4294967295)
  %77 = mul nuw <4 x i64> %76, %75
  %78 = add <4 x i64> %57, %70
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 1036
  %80 = load <4 x i64>, ptr %79, align 1
  %81 = xor <4 x i64> %80, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %82 = bitcast <4 x i64> %81 to <8 x i32>
  %83 = shufflevector <8 x i32> %82, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %84 = bitcast <8 x i32> %83 to <4 x i64>
  %85 = and <4 x i64> %81, splat (i64 4294967295)
  %86 = and <4 x i64> %84, splat (i64 4294967295)
  %87 = mul nuw <4 x i64> %86, %85
  %88 = add <4 x i64> %68, %80
  %89 = add <4 x i64> %88, %67
  %90 = add <4 x i64> %89, %87
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %92 = load <4 x i64>, ptr %91, align 1
  %93 = xor <4 x i64> %92, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %94 = bitcast <4 x i64> %93 to <8 x i32>
  %95 = shufflevector <8 x i32> %94, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %96 = bitcast <8 x i32> %95 to <4 x i64>
  %97 = and <4 x i64> %93, splat (i64 4294967295)
  %98 = and <4 x i64> %96, splat (i64 4294967295)
  %99 = mul nuw <4 x i64> %98, %97
  %100 = add <4 x i64> %78, %92
  %101 = add <4 x i64> %100, %77
  %102 = add <4 x i64> %101, %99
  %103 = extractelement <4 x i64> %90, i64 0
  %104 = extractelement <4 x i64> %90, i64 1
  %105 = xor i64 %103, 7914194659941938988
  %106 = xor i64 %104, -6611157965513653271
  %107 = zext i64 %105 to i128
  %108 = zext i64 %106 to i128
  %109 = mul nuw i128 %108, %107
  %110 = lshr i128 %109, 64
  %111 = xor i128 %110, %109
  %112 = trunc i128 %111 to i64
  %113 = add i64 %112, -2999706540330828780
  %114 = extractelement <4 x i64> %90, i64 2
  %115 = extractelement <4 x i64> %90, i64 3
  %116 = xor i64 %114, -1839215637059881052
  %117 = xor i64 %115, -3433288310154277810
  %118 = zext i64 %116 to i128
  %119 = zext i64 %117 to i128
  %120 = mul nuw i128 %119, %118
  %121 = lshr i128 %120, 64
  %122 = xor i128 %121, %120
  %123 = trunc i128 %122 to i64
  %124 = add i64 %113, %123
  %125 = extractelement <4 x i64> %102, i64 0
  %126 = extractelement <4 x i64> %102, i64 1
  %127 = xor i64 %125, 5046485836271438973
  %128 = xor i64 %126, -8055285457383852172
  %129 = zext i64 %127 to i128
  %130 = zext i64 %128 to i128
  %131 = mul nuw i128 %130, %129
  %132 = lshr i128 %131, 64
  %133 = xor i128 %132, %131
  %134 = trunc i128 %133 to i64
  %135 = add i64 %124, %134
  %136 = extractelement <4 x i64> %102, i64 2
  %137 = extractelement <4 x i64> %102, i64 3
  %138 = xor i64 %136, 5920048007935066598
  %139 = xor i64 %137, 7336514198459093435
  %140 = zext i64 %138 to i128
  %141 = zext i64 %139 to i128
  %142 = mul nuw i128 %141, %140
  %143 = lshr i128 %142, 64
  %144 = xor i128 %143, %142
  %145 = trunc i128 %144 to i64
  %146 = add i64 %135, %145
  %147 = lshr i64 %146, 37
  %148 = xor i64 %147, %146
  %149 = mul i64 %148, 1609587791953885689
  %150 = lshr i64 %149, 32
  %151 = xor i64 %150, %149
  ret i64 %151
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+avx512f,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
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
!6 = distinct !{!6, !7, !"XXH3_hashLong_64b_defaultSecret: argument 0"}
!7 = distinct !{!7, !"XXH3_hashLong_64b_defaultSecret"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"XXH3_hashLong_64b_internal: argument 0"}
!10 = distinct !{!10, !"XXH3_hashLong_64b_internal"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"XXH3_hashLong_internal_loop: argument 1"}
!13 = distinct !{!13, !"XXH3_hashLong_internal_loop"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"XXH3_accumulate: argument 1"}
!16 = distinct !{!16, !"XXH3_accumulate"}
!17 = !{!18, !19}
!18 = distinct !{!18, !16, !"XXH3_accumulate: argument 0"}
!19 = distinct !{!19, !13, !"XXH3_hashLong_internal_loop: argument 0"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"XXH3_accumulate_512: argument 1"}
!22 = distinct !{!22, !"XXH3_accumulate_512"}
!23 = !{!24}
!24 = distinct !{!24, !22, !"XXH3_accumulate_512: argument 2"}
!25 = !{!21, !15, !12, !9, !6}
!26 = !{!27, !24, !18, !19}
!27 = distinct !{!27, !22, !"XXH3_accumulate_512: argument 0"}
!28 = !{!27, !21, !18, !15, !19, !12, !9, !6}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!32, !19}
!32 = distinct !{!32, !33, !"XXH3_accumulate: argument 0"}
!33 = distinct !{!33, !"XXH3_accumulate"}
!34 = !{!35, !37, !12, !9, !6}
!35 = distinct !{!35, !36, !"XXH3_accumulate_512: argument 1"}
!36 = distinct !{!36, !"XXH3_accumulate_512"}
!37 = distinct !{!37, !33, !"XXH3_accumulate: argument 1"}
!38 = !{!39, !40, !32, !19}
!39 = distinct !{!39, !36, !"XXH3_accumulate_512: argument 0"}
!40 = distinct !{!40, !36, !"XXH3_accumulate_512: argument 2"}
!41 = !{!42, !12, !9, !6}
!42 = distinct !{!42, !43, !"XXH3_accumulate_512: argument 1"}
!43 = distinct !{!43, !"XXH3_accumulate_512"}
!44 = !{!45, !46, !19}
!45 = distinct !{!45, !43, !"XXH3_accumulate_512: argument 0"}
!46 = distinct !{!46, !43, !"XXH3_accumulate_512: argument 2"}
