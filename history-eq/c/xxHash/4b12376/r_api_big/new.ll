; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4b12376/wrap_api_big.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/4b12376/wrap_api_big.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_64b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_64_len1100(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = load <8 x i64>, ptr @__const.XXH3_hashLong_64b_internal.acc, align 64
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %39, %3 ]
  %5 = phi <8 x i64> [ %2, %1 ], [ %38, %3 ]
  %6 = shl nuw nsw i64 %4, 6
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 496
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %8, i32 0, i32 3, i32 1)
  %9 = shl nuw nsw i64 %4, 3
  %10 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %9
  %11 = load <8 x i64>, ptr %7, align 1
  %12 = load <8 x i64>, ptr %10, align 16
  %13 = xor <8 x i64> %12, %11
  %14 = bitcast <8 x i64> %13 to <16 x i32>
  %15 = shufflevector <16 x i32> %14, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %16 = bitcast <16 x i32> %15 to <8 x i64>
  %17 = and <8 x i64> %13, splat (i64 4294967295)
  %18 = and <8 x i64> %16, splat (i64 4294967295)
  %19 = mul nuw <8 x i64> %18, %17
  %20 = add <8 x i64> %11, %5
  %21 = add <8 x i64> %20, %19
  %22 = or disjoint i64 %4, 1
  %23 = shl nuw nsw i64 %22, 6
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %23
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 496
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %25, i32 0, i32 3, i32 1)
  %26 = shl nuw nsw i64 %22, 3
  %27 = getelementptr inbounds nuw i8, ptr @kSecret, i64 %26
  %28 = load <8 x i64>, ptr %24, align 1
  %29 = load <8 x i64>, ptr %27, align 8
  %30 = xor <8 x i64> %29, %28
  %31 = bitcast <8 x i64> %30 to <16 x i32>
  %32 = shufflevector <16 x i32> %31, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %33 = bitcast <16 x i32> %32 to <8 x i64>
  %34 = and <8 x i64> %30, splat (i64 4294967295)
  %35 = and <8 x i64> %33, splat (i64 4294967295)
  %36 = mul nuw <8 x i64> %35, %34
  %37 = add <8 x i64> %28, %21
  %38 = add <8 x i64> %37, %36
  %39 = add nuw nsw i64 %4, 2
  %40 = icmp eq i64 %39, 16
  br i1 %40, label %41, label %3

41:                                               ; preds = %3
  %42 = lshr <8 x i64> %38, splat (i64 47)
  %43 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @kSecret, i64 128), align 64
  %44 = xor <8 x i64> %42, %43
  %45 = xor <8 x i64> %44, %38
  %46 = bitcast <8 x i64> %45 to <16 x i32>
  %47 = shufflevector <16 x i32> %46, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %48 = bitcast <16 x i32> %47 to <8 x i64>
  %49 = and <8 x i64> %45, splat (i64 4294967295)
  %50 = mul nuw <8 x i64> %49, splat (i64 2654435761)
  %51 = mul <8 x i64> %48, splat (i64 -7046029290881679360)
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 1520
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %53, i32 0, i32 3, i32 1)
  %54 = load <8 x i64>, ptr %52, align 1
  %55 = load <8 x i64>, ptr @kSecret, align 64
  %56 = xor <8 x i64> %55, %54
  %57 = bitcast <8 x i64> %56 to <16 x i32>
  %58 = shufflevector <16 x i32> %57, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %59 = bitcast <16 x i32> %58 to <8 x i64>
  %60 = and <8 x i64> %56, splat (i64 4294967295)
  %61 = and <8 x i64> %59, splat (i64 4294967295)
  %62 = mul nuw <8 x i64> %61, %60
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 1036
  %64 = load <8 x i64>, ptr %63, align 1
  %65 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @kSecret, i64 121), align 1
  %66 = xor <8 x i64> %65, %64
  %67 = bitcast <8 x i64> %66 to <16 x i32>
  %68 = shufflevector <16 x i32> %67, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %69 = bitcast <16 x i32> %68 to <8 x i64>
  %70 = and <8 x i64> %66, splat (i64 4294967295)
  %71 = and <8 x i64> %69, splat (i64 4294967295)
  %72 = mul nuw <8 x i64> %71, %70
  %73 = add <8 x i64> %50, %54
  %74 = add <8 x i64> %73, %64
  %75 = add <8 x i64> %74, %51
  %76 = add <8 x i64> %75, %62
  %77 = add <8 x i64> %76, %72
  %78 = extractelement <8 x i64> %77, i64 0
  %79 = extractelement <8 x i64> %77, i64 1
  %80 = xor i64 %78, 7914194659941938988
  %81 = xor i64 %79, -6611157965513653271
  %82 = zext i64 %80 to i128
  %83 = zext i64 %81 to i128
  %84 = mul nuw i128 %83, %82
  %85 = lshr i128 %84, 64
  %86 = xor i128 %85, %84
  %87 = trunc i128 %86 to i64
  %88 = add i64 %87, -2999706540330828780
  %89 = extractelement <8 x i64> %77, i64 2
  %90 = extractelement <8 x i64> %77, i64 3
  %91 = xor i64 %89, -1839215637059881052
  %92 = xor i64 %90, -3433288310154277810
  %93 = zext i64 %91 to i128
  %94 = zext i64 %92 to i128
  %95 = mul nuw i128 %94, %93
  %96 = lshr i128 %95, 64
  %97 = xor i128 %96, %95
  %98 = trunc i128 %97 to i64
  %99 = add i64 %88, %98
  %100 = extractelement <8 x i64> %77, i64 4
  %101 = extractelement <8 x i64> %77, i64 5
  %102 = xor i64 %100, 5046485836271438973
  %103 = xor i64 %101, -8055285457383852172
  %104 = zext i64 %102 to i128
  %105 = zext i64 %103 to i128
  %106 = mul nuw i128 %105, %104
  %107 = lshr i128 %106, 64
  %108 = xor i128 %107, %106
  %109 = trunc i128 %108 to i64
  %110 = add i64 %99, %109
  %111 = extractelement <8 x i64> %77, i64 6
  %112 = extractelement <8 x i64> %77, i64 7
  %113 = xor i64 %111, 5920048007935066598
  %114 = xor i64 %112, 7336514198459093435
  %115 = zext i64 %113 to i128
  %116 = zext i64 %114 to i128
  %117 = mul nuw i128 %116, %115
  %118 = lshr i128 %117, 64
  %119 = xor i128 %118, %117
  %120 = trunc i128 %119 to i64
  %121 = add i64 %110, %120
  %122 = lshr i64 %121, 37
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587791953885689
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  ret i64 %126
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
!6 = distinct !{!6, !7, !"XXH3_hashLong_64b_defaultSecret: argument 0"}
!7 = distinct !{!7, !"XXH3_hashLong_64b_defaultSecret"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"XXH3_hashLong_64b_internal: argument 0"}
!10 = distinct !{!10, !"XXH3_hashLong_64b_internal"}
!11 = !{!9, !6}
!12 = !{!13}
!13 = distinct !{!13, !14, !"XXH3_hashLong_internal_loop: argument 1"}
!14 = distinct !{!14, !"XXH3_hashLong_internal_loop"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"XXH3_accumulate: argument 1"}
!17 = distinct !{!17, !"XXH3_accumulate"}
!18 = !{!19, !20}
!19 = distinct !{!19, !17, !"XXH3_accumulate: argument 0"}
!20 = distinct !{!20, !14, !"XXH3_hashLong_internal_loop: argument 0"}
!21 = !{!16, !13, !9, !6}
!22 = !{!19, !16, !20, !13, !9, !6}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!26, !20, !13, !9, !6}
!26 = distinct !{!26, !27, !"XXH3_scrambleAcc: argument 0"}
!27 = distinct !{!27, !"XXH3_scrambleAcc"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"XXH3_accumulate: argument 1"}
!30 = distinct !{!30, !"XXH3_accumulate"}
!31 = !{!32, !20}
!32 = distinct !{!32, !30, !"XXH3_accumulate: argument 0"}
!33 = !{!29, !13, !9, !6}
!34 = !{!32, !29, !20, !13, !9, !6}
!35 = !{!13, !9, !6}
!36 = !{!20}
!37 = !{!20, !13, !9, !6}
