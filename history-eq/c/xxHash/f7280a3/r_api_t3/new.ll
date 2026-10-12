; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/f7280a3/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/f7280a3/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local i64 @target_xxh3_heap_100(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call noalias noundef dereferenceable_or_null(640) ptr @malloc(i64 noundef 640) #5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %140, label %4

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i64
  %6 = and i64 %5, 63
  %7 = or i64 %5, -64
  %8 = sub nuw nsw i64 64, %6
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 %8
  %10 = trunc nuw nsw i64 %8 to i8
  %11 = getelementptr inbounds i8, ptr %9, i64 -1
  store i8 %10, ptr %11, align 1
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) %12, i8 0, i64 512, i1 false)
  store i64 3266489917, ptr %9, align 64
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 -7046029288634856825, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 -4417276706812531889, ptr %14, align 16
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 1609587929392839161, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 -8796714831421723037, ptr %16, align 32
  %17 = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 2246822519, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 2870177450012600261, ptr %18, align 16
  %19 = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i64 2654435761, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %9, i64 560
  store ptr @kSecret, ptr %20, align 16
  %21 = getelementptr inbounds nuw i8, ptr %9, i64 524
  store i32 128, ptr %21, align 4
  %22 = getelementptr inbounds nuw i8, ptr %9, i64 516
  store i32 16, ptr %22, align 4
  %23 = icmp eq ptr %0, null
  br i1 %23, label %137, label %24

24:                                               ; preds = %4
  %25 = getelementptr inbounds nuw i8, ptr %9, i64 536
  store i64 100, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %9, i64 512
  %27 = getelementptr inbounds nuw i8, ptr %9, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(100) %27, ptr noundef nonnull readonly align 1 dereferenceable(100) %0, i64 100, i1 false)
  store i32 100, ptr %26, align 64
  %28 = getelementptr inbounds nuw i8, ptr %9, i64 256
  %29 = getelementptr inbounds nuw i8, ptr %9, i64 304
  %30 = load i64, ptr %29, align 1
  %31 = getelementptr i8, ptr %9, i64 312
  %32 = load i64, ptr %31, align 1
  %33 = xor i64 %30, 4554437623014685352
  %34 = xor i64 %32, 2111919702937427193
  %35 = zext i64 %33 to i128
  %36 = zext i64 %34 to i128
  %37 = mul nuw i128 %36, %35
  %38 = lshr i128 %37, 64
  %39 = xor i128 %38, %37
  %40 = trunc i128 %39 to i64
  %41 = add i64 %40, -3626654062522721092
  %42 = getelementptr inbounds nuw i8, ptr %9, i64 292
  %43 = load i64, ptr %42, align 1
  %44 = getelementptr i8, ptr %9, i64 300
  %45 = load i64, ptr %44, align 1
  %46 = xor i64 %43, 3556072174620004746
  %47 = xor i64 %45, 7238261902898274248
  %48 = zext i64 %46 to i128
  %49 = zext i64 %47 to i128
  %50 = mul nuw i128 %49, %48
  %51 = lshr i128 %50, 64
  %52 = xor i128 %51, %50
  %53 = trunc i128 %52 to i64
  %54 = add i64 %41, %53
  %55 = getelementptr inbounds nuw i8, ptr %9, i64 288
  %56 = load i64, ptr %55, align 1
  %57 = getelementptr i8, ptr %9, i64 296
  %58 = load i64, ptr %57, align 1
  %59 = xor i64 %56, -3818837453329782724
  %60 = xor i64 %58, -6688317018830679928
  %61 = zext i64 %59 to i128
  %62 = zext i64 %60 to i128
  %63 = mul nuw i128 %62, %61
  %64 = lshr i128 %63, 64
  %65 = xor i128 %64, %63
  %66 = trunc i128 %65 to i64
  %67 = add i64 %54, %66
  %68 = getelementptr inbounds nuw i8, ptr %9, i64 308
  %69 = load i64, ptr %68, align 1
  %70 = getelementptr i8, ptr %9, i64 316
  %71 = load i64, ptr %70, align 1
  %72 = xor i64 %69, 5690594596133299313
  %73 = xor i64 %71, -2833645246901970632
  %74 = zext i64 %72 to i128
  %75 = zext i64 %73 to i128
  %76 = mul nuw i128 %75, %74
  %77 = lshr i128 %76, 64
  %78 = xor i128 %77, %76
  %79 = trunc i128 %78 to i64
  %80 = add i64 %67, %79
  %81 = getelementptr inbounds nuw i8, ptr %9, i64 272
  %82 = load i64, ptr %81, align 1
  %83 = getelementptr i8, ptr %9, i64 280
  %84 = load i64, ptr %83, align 1
  %85 = xor i64 %82, 8711581037947681227
  %86 = xor i64 %84, 2410270004345854594
  %87 = zext i64 %85 to i128
  %88 = zext i64 %86 to i128
  %89 = mul nuw i128 %88, %87
  %90 = lshr i128 %89, 64
  %91 = xor i128 %90, %89
  %92 = trunc i128 %91 to i64
  %93 = add i64 %80, %92
  %94 = getelementptr inbounds nuw i8, ptr %9, i64 324
  %95 = load i64, ptr %94, align 1
  %96 = getelementptr i8, ptr %9, i64 332
  %97 = load i64, ptr %96, align 1
  %98 = xor i64 %95, -8204357891075471176
  %99 = xor i64 %97, 5487137525590930912
  %100 = zext i64 %98 to i128
  %101 = zext i64 %99 to i128
  %102 = mul nuw i128 %101, %100
  %103 = lshr i128 %102, 64
  %104 = xor i128 %103, %102
  %105 = trunc i128 %104 to i64
  %106 = add i64 %93, %105
  %107 = load i64, ptr %28, align 1
  %108 = getelementptr i8, ptr %9, i64 264
  %109 = load i64, ptr %108, align 1
  %110 = xor i64 %107, -4734510112055689544
  %111 = xor i64 %109, 2066345149520216444
  %112 = zext i64 %110 to i128
  %113 = zext i64 %111 to i128
  %114 = mul nuw i128 %113, %112
  %115 = lshr i128 %114, 64
  %116 = xor i128 %115, %114
  %117 = trunc i128 %116 to i64
  %118 = add i64 %106, %117
  %119 = getelementptr inbounds nuw i8, ptr %9, i64 340
  %120 = load i64, ptr %119, align 1
  %121 = getelementptr i8, ptr %9, i64 348
  %122 = load i64, ptr %121, align 1
  %123 = xor i64 %120, -2623469361688619810
  %124 = xor i64 %122, 2262974939099578482
  %125 = zext i64 %123 to i128
  %126 = zext i64 %124 to i128
  %127 = mul nuw i128 %126, %125
  %128 = lshr i128 %127, 64
  %129 = xor i128 %128, %127
  %130 = trunc i128 %129 to i64
  %131 = add i64 %118, %130
  %132 = lshr i64 %131, 37
  %133 = xor i64 %132, %131
  %134 = mul i64 %133, 1609587791953885689
  %135 = lshr i64 %134, 32
  %136 = xor i64 %135, %134
  br label %137

137:                                              ; preds = %4, %24
  %138 = phi i64 [ %136, %24 ], [ 8606060009869906325, %4 ]
  %139 = getelementptr inbounds i8, ptr %9, i64 %7
  tail call void @free(ptr noundef nonnull %139) #6
  br label %140

140:                                              ; preds = %1, %137
  %141 = phi i64 [ %138, %137 ], [ 0, %1 ]
  ret i64 %141
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_len_17to128_64b: argument 0"}
!7 = distinct !{!7, !"XXH3_len_17to128_64b"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"XXH3_len_17to128_64b: argument 1"}
