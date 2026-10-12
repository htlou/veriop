; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/f534e5b/wrap_api_big.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/f534e5b/wrap_api_big.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_64_len1088(ptr noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi <4 x i64> [ <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>, %1 ], [ %30, %2 ]
  %4 = phi <4 x i64> [ <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, %1 ], [ %19, %2 ]
  %5 = phi i64 [ 0, %1 ], [ %31, %2 ]
  %6 = shl nuw i64 %5, 6
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull readonly %8, i32 0, i32 3, i32 1)
  %9 = shl nuw nsw i64 %5, 3
  %10 = getelementptr inbounds nuw i8, ptr @XXH3_kSecret, i64 %9
  %11 = load <4 x i64>, ptr %7, align 1
  %12 = load <4 x i64>, ptr %10, align 8
  %13 = xor <4 x i64> %12, %11
  %14 = lshr <4 x i64> %13, splat (i64 32)
  %15 = and <4 x i64> %13, splat (i64 4294967295)
  %16 = mul nuw <4 x i64> %15, %14
  %17 = shufflevector <4 x i64> %11, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %18 = add <4 x i64> %4, %17
  %19 = add <4 x i64> %18, %16
  %20 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %21 = load <4 x i64>, ptr %20, align 1
  %22 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %23 = load <4 x i64>, ptr %22, align 8
  %24 = xor <4 x i64> %23, %21
  %25 = lshr <4 x i64> %24, splat (i64 32)
  %26 = and <4 x i64> %24, splat (i64 4294967295)
  %27 = mul nuw <4 x i64> %26, %25
  %28 = shufflevector <4 x i64> %21, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %29 = add <4 x i64> %3, %28
  %30 = add <4 x i64> %29, %27
  %31 = add nuw nsw i64 %5, 1
  %32 = icmp eq i64 %31, 16
  br i1 %32, label %33, label %2

33:                                               ; preds = %2
  %34 = lshr <4 x i64> %19, splat (i64 47)
  %35 = xor <4 x i64> %19, %34
  %36 = xor <4 x i64> %35, <i64 -4329134394285701654, i64 -1485321483350670907, i64 5321830579834785047, i64 -7032137544937171245>
  %37 = lshr <4 x i64> %36, splat (i64 32)
  %38 = and <4 x i64> %36, splat (i64 4294967295)
  %39 = mul nuw <4 x i64> %38, splat (i64 2654435761)
  %40 = mul <4 x i64> %37, splat (i64 -7046029290881679360)
  %41 = add <4 x i64> %39, %40
  %42 = lshr <4 x i64> %30, splat (i64 47)
  %43 = xor <4 x i64> %30, %42
  %44 = xor <4 x i64> %43, <i64 -242834301215959509, i64 -3588858202114426737, i64 2883454493032893253, i64 9097354517224871855>
  %45 = lshr <4 x i64> %44, splat (i64 32)
  %46 = and <4 x i64> %44, splat (i64 4294967295)
  %47 = mul nuw <4 x i64> %46, splat (i64 2654435761)
  %48 = mul <4 x i64> %45, splat (i64 -7046029290881679360)
  %49 = add <4 x i64> %47, %48
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %51 = load <4 x i64>, ptr %50, align 1
  %52 = xor <4 x i64> %51, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %53 = lshr <4 x i64> %52, splat (i64 32)
  %54 = and <4 x i64> %52, splat (i64 4294967295)
  %55 = mul nuw <4 x i64> %54, %53
  %56 = shufflevector <4 x i64> %51, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %57 = add <4 x i64> %41, %56
  %58 = add <4 x i64> %57, %55
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %60 = load <4 x i64>, ptr %59, align 1
  %61 = xor <4 x i64> %60, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %62 = lshr <4 x i64> %61, splat (i64 32)
  %63 = and <4 x i64> %61, splat (i64 4294967295)
  %64 = mul nuw <4 x i64> %63, %62
  %65 = shufflevector <4 x i64> %60, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %66 = add <4 x i64> %49, %65
  %67 = add <4 x i64> %66, %64
  %68 = extractelement <4 x i64> %58, i64 0
  %69 = extractelement <4 x i64> %58, i64 1
  %70 = xor i64 %68, 7914194659941938988
  %71 = xor i64 %69, -6611157965513653271
  %72 = zext i64 %70 to i128
  %73 = zext i64 %71 to i128
  %74 = mul nuw i128 %73, %72
  %75 = lshr i128 %74, 64
  %76 = xor i128 %75, %74
  %77 = trunc i128 %76 to i64
  %78 = add i64 %77, 7765668628449246656
  %79 = extractelement <4 x i64> %58, i64 2
  %80 = extractelement <4 x i64> %58, i64 3
  %81 = xor i64 %79, -1839215637059881052
  %82 = xor i64 %80, -3433288310154277810
  %83 = zext i64 %81 to i128
  %84 = zext i64 %82 to i128
  %85 = mul nuw i128 %84, %83
  %86 = lshr i128 %85, 64
  %87 = xor i128 %86, %85
  %88 = trunc i128 %87 to i64
  %89 = add i64 %78, %88
  %90 = extractelement <4 x i64> %67, i64 0
  %91 = extractelement <4 x i64> %67, i64 1
  %92 = xor i64 %90, 5046485836271438973
  %93 = xor i64 %91, -8055285457383852172
  %94 = zext i64 %92 to i128
  %95 = zext i64 %93 to i128
  %96 = mul nuw i128 %95, %94
  %97 = lshr i128 %96, 64
  %98 = xor i128 %97, %96
  %99 = trunc i128 %98 to i64
  %100 = add i64 %89, %99
  %101 = extractelement <4 x i64> %67, i64 2
  %102 = extractelement <4 x i64> %67, i64 3
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
