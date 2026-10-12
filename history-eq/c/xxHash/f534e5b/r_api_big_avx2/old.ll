; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/f534e5b/wrap_api_big.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/f534e5b/wrap_api_big.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_64_len1088(ptr noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %1 ], [ %36, %2 ]
  %4 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %1 ], [ %22, %2 ]
  %5 = phi i64 [ 0, %1 ], [ %37, %2 ]
  %6 = shl nuw i64 %5, 6
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %8, i32 0, i32 3, i32 1)
  %9 = shl nuw nsw i64 %5, 3
  %10 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %9
  %11 = load <4 x i64>, ptr %7, align 1
  %12 = load <4 x i64>, ptr %10, align 8
  %13 = xor <4 x i64> %12, %11
  %14 = bitcast <4 x i64> %13 to <8 x i32>
  %15 = shufflevector <8 x i32> %14, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %16 = bitcast <8 x i32> %15 to <4 x i64>
  %17 = and <4 x i64> %13, splat (i64 4294967295)
  %18 = and <4 x i64> %16, splat (i64 4294967295)
  %19 = mul nuw <4 x i64> %18, %17
  %20 = shufflevector <4 x i64> %11, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %21 = add <4 x i64> %4, %20
  %22 = add <4 x i64> %21, %19
  %23 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %24 = load <4 x i64>, ptr %23, align 1
  %25 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %26 = load <4 x i64>, ptr %25, align 8
  %27 = xor <4 x i64> %26, %24
  %28 = bitcast <4 x i64> %27 to <8 x i32>
  %29 = shufflevector <8 x i32> %28, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %30 = bitcast <8 x i32> %29 to <4 x i64>
  %31 = and <4 x i64> %27, splat (i64 4294967295)
  %32 = and <4 x i64> %30, splat (i64 4294967295)
  %33 = mul nuw <4 x i64> %32, %31
  %34 = shufflevector <4 x i64> %24, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %35 = add <4 x i64> %3, %34
  %36 = add <4 x i64> %35, %33
  %37 = add nuw nsw i64 %5, 1
  %38 = icmp eq i64 %37, 16
  br i1 %38, label %39, label %2

39:                                               ; preds = %2
  %40 = lshr <4 x i64> %22, splat (i64 47)
  %41 = xor <4 x i64> %22, %40
  %42 = xor <4 x i64> %41, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %43 = bitcast <4 x i64> %42 to <8 x i32>
  %44 = shufflevector <8 x i32> %43, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %45 = bitcast <8 x i32> %44 to <4 x i64>
  %46 = and <4 x i64> %42, splat (i64 4294967295)
  %47 = mul nuw <4 x i64> %46, splat (i64 2654435761)
  %48 = mul <4 x i64> %45, splat (i64 -7046029290881679360)
  %49 = add <4 x i64> %48, %47
  %50 = lshr <4 x i64> %36, splat (i64 47)
  %51 = xor <4 x i64> %36, %50
  %52 = xor <4 x i64> %51, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %53 = bitcast <4 x i64> %52 to <8 x i32>
  %54 = shufflevector <8 x i32> %53, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %55 = bitcast <8 x i32> %54 to <4 x i64>
  %56 = and <4 x i64> %52, splat (i64 4294967295)
  %57 = mul nuw <4 x i64> %56, splat (i64 2654435761)
  %58 = mul <4 x i64> %55, splat (i64 -7046029290881679360)
  %59 = add <4 x i64> %58, %57
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %61 = load <4 x i64>, ptr %60, align 1
  %62 = xor <4 x i64> %61, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %63 = bitcast <4 x i64> %62 to <8 x i32>
  %64 = shufflevector <8 x i32> %63, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %65 = bitcast <8 x i32> %64 to <4 x i64>
  %66 = and <4 x i64> %62, splat (i64 4294967295)
  %67 = and <4 x i64> %65, splat (i64 4294967295)
  %68 = mul nuw <4 x i64> %67, %66
  %69 = shufflevector <4 x i64> %61, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %70 = add <4 x i64> %49, %69
  %71 = add <4 x i64> %70, %68
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %73 = load <4 x i64>, ptr %72, align 1
  %74 = xor <4 x i64> %73, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %75 = bitcast <4 x i64> %74 to <8 x i32>
  %76 = shufflevector <8 x i32> %75, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %77 = bitcast <8 x i32> %76 to <4 x i64>
  %78 = and <4 x i64> %74, splat (i64 4294967295)
  %79 = and <4 x i64> %77, splat (i64 4294967295)
  %80 = mul nuw <4 x i64> %79, %78
  %81 = shufflevector <4 x i64> %73, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %82 = add <4 x i64> %59, %81
  %83 = add <4 x i64> %82, %80
  %84 = extractelement <4 x i64> %71, i64 0
  %85 = extractelement <4 x i64> %71, i64 1
  %86 = xor i64 %84, 7914194659941938988
  %87 = xor i64 %85, -6611157965513653271
  %88 = zext i64 %86 to i128
  %89 = zext i64 %87 to i128
  %90 = mul nuw i128 %89, %88
  %91 = lshr i128 %90, 64
  %92 = xor i128 %91, %90
  %93 = trunc i128 %92 to i64
  %94 = add i64 %93, 7765668628449246656
  %95 = extractelement <4 x i64> %71, i64 2
  %96 = extractelement <4 x i64> %71, i64 3
  %97 = xor i64 %95, -1839215637059881052
  %98 = xor i64 %96, -3433288310154277810
  %99 = zext i64 %97 to i128
  %100 = zext i64 %98 to i128
  %101 = mul nuw i128 %100, %99
  %102 = lshr i128 %101, 64
  %103 = xor i128 %102, %101
  %104 = trunc i128 %103 to i64
  %105 = add i64 %94, %104
  %106 = extractelement <4 x i64> %83, i64 0
  %107 = extractelement <4 x i64> %83, i64 1
  %108 = xor i64 %106, 5046485836271438973
  %109 = xor i64 %107, -8055285457383852172
  %110 = zext i64 %108 to i128
  %111 = zext i64 %109 to i128
  %112 = mul nuw i128 %111, %110
  %113 = lshr i128 %112, 64
  %114 = xor i128 %113, %112
  %115 = trunc i128 %114 to i64
  %116 = add i64 %105, %115
  %117 = extractelement <4 x i64> %83, i64 2
  %118 = extractelement <4 x i64> %83, i64 3
  %119 = xor i64 %117, 5920048007935066598
  %120 = xor i64 %118, 7336514198459093435
  %121 = zext i64 %119 to i128
  %122 = zext i64 %120 to i128
  %123 = mul nuw i128 %122, %121
  %124 = lshr i128 %123, 64
  %125 = xor i128 %124, %123
  %126 = trunc i128 %125 to i64
  %127 = add i64 %116, %126
  %128 = lshr i64 %127, 37
  %129 = xor i64 %128, %127
  %130 = mul i64 %129, 1609587791953885689
  %131 = lshr i64 %130, 32
  %132 = xor i64 %131, %130
  ret i64 %132
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
!6 = distinct !{!6, !7, !"XXH3_64bits_internal: argument 0"}
!7 = distinct !{!7, !"XXH3_64bits_internal"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"XXH3_hashLong_64b_default: argument 0"}
!10 = distinct !{!10, !"XXH3_hashLong_64b_default"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"XXH3_hashLong_64b_internal: argument 0"}
!13 = distinct !{!13, !"XXH3_hashLong_64b_internal"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"XXH3_hashLong_internal_loop: argument 1"}
!16 = distinct !{!16, !"XXH3_hashLong_internal_loop"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"XXH3_accumulate: argument 1"}
!19 = distinct !{!19, !"XXH3_accumulate"}
!20 = !{!21, !22}
!21 = distinct !{!21, !19, !"XXH3_accumulate: argument 0"}
!22 = distinct !{!22, !16, !"XXH3_hashLong_internal_loop: argument 0"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"XXH3_accumulate_512_avx2: argument 1"}
!25 = distinct !{!25, !"XXH3_accumulate_512_avx2"}
!26 = !{!27}
!27 = distinct !{!27, !25, !"XXH3_accumulate_512_avx2: argument 2"}
!28 = !{!24, !18, !15, !12, !9, !6}
!29 = !{!30, !27, !21, !22}
!30 = distinct !{!30, !25, !"XXH3_accumulate_512_avx2: argument 0"}
!31 = !{!30, !24, !21, !18, !22, !15, !12, !9, !6}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!35, !15, !12, !9, !6}
!35 = distinct !{!35, !36, !"XXH3_accumulate_512_avx2: argument 1"}
!36 = distinct !{!36, !"XXH3_accumulate_512_avx2"}
!37 = !{!38, !39, !22}
!38 = distinct !{!38, !36, !"XXH3_accumulate_512_avx2: argument 0"}
!39 = distinct !{!39, !36, !"XXH3_accumulate_512_avx2: argument 2"}
