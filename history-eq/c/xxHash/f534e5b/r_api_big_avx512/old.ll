; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/f534e5b/wrap_api_big.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/f534e5b/wrap_api_big.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64
@__const.XXH3_hashLong_64b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_64_len1088(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = load <8 x i64>, ptr @__const.XXH3_hashLong_64b_internal.acc, align 64
  %3 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 128), align 64
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi <8 x i64> [ %2, %1 ], [ %41, %4 ]
  %6 = phi i64 [ 0, %1 ], [ %42, %4 ]
  %7 = shl nuw i64 %6, 6
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %9, i32 0, i32 3, i32 1)
  %10 = shl nuw nsw i64 %6, 3
  %11 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %10
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
  %22 = add <8 x i64> %5, %21
  %23 = add <8 x i64> %22, %20
  %24 = or disjoint i64 %6, 1
  %25 = shl nuw i64 %24, 6
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 %25
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %27, i32 0, i32 3, i32 1)
  %28 = shl nuw nsw i64 %24, 3
  %29 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %28
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
  %42 = add nuw nsw i64 %6, 2
  %43 = icmp eq i64 %42, 16
  br i1 %43, label %44, label %4

44:                                               ; preds = %4
  %45 = lshr <8 x i64> %41, splat (i64 47)
  %46 = xor <8 x i64> %3, %45
  %47 = xor <8 x i64> %46, %41
  %48 = bitcast <8 x i64> %47 to <16 x i32>
  %49 = shufflevector <16 x i32> %48, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %50 = bitcast <16 x i32> %49 to <8 x i64>
  %51 = and <8 x i64> %47, splat (i64 4294967295)
  %52 = mul nuw <8 x i64> %51, splat (i64 2654435761)
  %53 = mul <8 x i64> %50, splat (i64 -7046029290881679360)
  %54 = add <8 x i64> %53, %52
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %56 = load <8 x i64>, ptr %55, align 1
  %57 = load <8 x i64>, ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i64 121), align 1
  %58 = xor <8 x i64> %57, %56
  %59 = bitcast <8 x i64> %58 to <16 x i32>
  %60 = shufflevector <16 x i32> %59, <16 x i32> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4, i32 9, i32 8, i32 11, i32 8, i32 13, i32 12, i32 15, i32 12>
  %61 = bitcast <16 x i32> %60 to <8 x i64>
  %62 = and <8 x i64> %58, splat (i64 4294967295)
  %63 = and <8 x i64> %61, splat (i64 4294967295)
  %64 = mul nuw <8 x i64> %63, %62
  %65 = shufflevector <8 x i64> %56, <8 x i64> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %66 = add <8 x i64> %54, %65
  %67 = add <8 x i64> %66, %64
  %68 = extractelement <8 x i64> %67, i64 0
  %69 = extractelement <8 x i64> %67, i64 1
  %70 = xor i64 %68, 7914194659941938988
  %71 = xor i64 %69, -6611157965513653271
  %72 = zext i64 %70 to i128
  %73 = zext i64 %71 to i128
  %74 = mul nuw i128 %73, %72
  %75 = lshr i128 %74, 64
  %76 = xor i128 %75, %74
  %77 = trunc i128 %76 to i64
  %78 = add i64 %77, 7765668628449246656
  %79 = extractelement <8 x i64> %67, i64 2
  %80 = extractelement <8 x i64> %67, i64 3
  %81 = xor i64 %79, -1839215637059881052
  %82 = xor i64 %80, -3433288310154277810
  %83 = zext i64 %81 to i128
  %84 = zext i64 %82 to i128
  %85 = mul nuw i128 %84, %83
  %86 = lshr i128 %85, 64
  %87 = xor i128 %86, %85
  %88 = trunc i128 %87 to i64
  %89 = add i64 %78, %88
  %90 = extractelement <8 x i64> %67, i64 4
  %91 = extractelement <8 x i64> %67, i64 5
  %92 = xor i64 %90, 5046485836271438973
  %93 = xor i64 %91, -8055285457383852172
  %94 = zext i64 %92 to i128
  %95 = zext i64 %93 to i128
  %96 = mul nuw i128 %95, %94
  %97 = lshr i128 %96, 64
  %98 = xor i128 %97, %96
  %99 = trunc i128 %98 to i64
  %100 = add i64 %89, %99
  %101 = extractelement <8 x i64> %67, i64 6
  %102 = extractelement <8 x i64> %67, i64 7
  %103 = xor i64 %101, 5920048007935066598
  %104 = xor i64 %102, 7336514198459093435
  %105 = zext i64 %103 to i128
  %106 = zext i64 %104 to i128
  %107 = mul nuw i128 %106, %105
  %108 = lshr i128 %107, 64
  %109 = xor i128 %108, %107
  %110 = trunc i128 %109 to i64
  %111 = add i64 %100, %110
  %112 = lshr i64 %111, 37
  %113 = xor i64 %112, %111
  %114 = mul i64 %113, 1609587791953885689
  %115 = lshr i64 %114, 32
  %116 = xor i64 %115, %114
  ret i64 %116
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
!6 = distinct !{!6, !7, !"XXH3_64bits_internal: argument 0"}
!7 = distinct !{!7, !"XXH3_64bits_internal"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"XXH3_hashLong_64b_default: argument 0"}
!10 = distinct !{!10, !"XXH3_hashLong_64b_default"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"XXH3_hashLong_64b_internal: argument 0"}
!13 = distinct !{!13, !"XXH3_hashLong_64b_internal"}
!14 = !{!12, !9, !6}
!15 = !{!16}
!16 = distinct !{!16, !17, !"XXH3_hashLong_internal_loop: argument 1"}
!17 = distinct !{!17, !"XXH3_hashLong_internal_loop"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"XXH3_scrambleAcc_avx512: argument 1"}
!20 = distinct !{!20, !"XXH3_scrambleAcc_avx512"}
!21 = !{!22, !23, !16, !12, !9, !6}
!22 = distinct !{!22, !20, !"XXH3_scrambleAcc_avx512: argument 0"}
!23 = distinct !{!23, !17, !"XXH3_hashLong_internal_loop: argument 0"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"XXH3_accumulate: argument 1"}
!26 = distinct !{!26, !"XXH3_accumulate"}
!27 = !{!28, !23}
!28 = distinct !{!28, !26, !"XXH3_accumulate: argument 0"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"XXH3_accumulate_512_avx512: argument 1"}
!31 = distinct !{!31, !"XXH3_accumulate_512_avx512"}
!32 = !{!33}
!33 = distinct !{!33, !31, !"XXH3_accumulate_512_avx512: argument 2"}
!34 = !{!30, !25, !16, !12, !9, !6}
!35 = !{!36, !33, !28, !23}
!36 = distinct !{!36, !31, !"XXH3_accumulate_512_avx512: argument 0"}
!37 = !{!36, !30, !28, !25, !23, !16, !12, !9, !6}
!38 = !{!39}
!39 = distinct !{!39, !31, !"XXH3_accumulate_512_avx512: argument 1:It1"}
!40 = !{!41}
!41 = distinct !{!41, !31, !"XXH3_accumulate_512_avx512: argument 2:It1"}
!42 = !{!39, !25, !16, !12, !9, !6}
!43 = !{!36, !41, !28, !23}
!44 = !{!36, !39, !28, !25, !23, !16, !12, !9, !6}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"XXH3_accumulate_512_avx512: argument 1"}
!49 = distinct !{!49, !"XXH3_accumulate_512_avx512"}
!50 = !{!51}
!51 = distinct !{!51, !49, !"XXH3_accumulate_512_avx512: argument 2"}
!52 = !{!48, !16, !12, !9, !6}
!53 = !{!54, !51, !23}
!54 = distinct !{!54, !49, !"XXH3_accumulate_512_avx512: argument 0"}
!55 = !{!54, !48, !23, !16, !12, !9, !6}
