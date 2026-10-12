; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/44bb94e/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/44bb94e/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_128_100_200(ptr noundef readonly %0, ptr noundef writeonly initializes((0, 16)) %1) local_unnamed_addr #0 {
  %3 = alloca <4 x i64>, align 32
  %4 = alloca %struct.XXH_NAMESPACEXXH3_state_s, align 64
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %4) #7
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 512
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(512) %6, i8 0, i64 512, i1 false)
  store i64 3266489917, ptr %4, align 64
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 -7046029288634856825, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 -4417276706812531889, ptr %8, align 16
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1609587929392839161, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 -8796714831421723037, ptr %10, align 32
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 2246822519, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 2870177450012600261, ptr %12, align 16
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 2654435761, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 568
  store ptr @XXH3_kSecret, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 544
  store i64 128, ptr %15, align 32
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 536
  store i64 16, ptr %16, align 8
  %17 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %17)
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 528
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(100) %19, ptr noundef nonnull readonly align 1 dereferenceable(100) %0, i64 range(i64 100, 201) 100, i1 false)
  store i32 100, ptr %5, align 64
  store i64 300, ptr %18, align 16
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(156) %21, ptr noundef nonnull readonly align 1 dereferenceable(156) %20, i64 range(i64 -9223372036854775808, 4294967296) 156, i1 false)
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %23 = load <4 x i64>, ptr %4, align 64
  %24 = load <4 x i64>, ptr %10, align 32
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 576
  call void @llvm.prefetch.p0(ptr nonnull readonly %25, i32 0, i32 3, i32 1)
  %26 = load <4 x i64>, ptr %19, align 64
  %27 = xor <4 x i64> %26, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  %28 = lshr <4 x i64> %27, splat (i64 32)
  %29 = and <4 x i64> %27, splat (i64 4294967295)
  %30 = mul nuw <4 x i64> %29, %28
  %31 = shufflevector <4 x i64> %26, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %32 = add <4 x i64> %23, %31
  %33 = add <4 x i64> %32, %30
  %34 = getelementptr inbounds nuw i8, ptr %4, i64 288
  %35 = load <4 x i64>, ptr %34, align 32
  %36 = xor <4 x i64> %35, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %37 = lshr <4 x i64> %36, splat (i64 32)
  %38 = and <4 x i64> %36, splat (i64 4294967295)
  %39 = mul nuw <4 x i64> %38, %37
  %40 = shufflevector <4 x i64> %35, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %41 = add <4 x i64> %24, %40
  %42 = add <4 x i64> %41, %39
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 320
  %44 = getelementptr inbounds nuw i8, ptr %4, i64 640
  call void @llvm.prefetch.p0(ptr nonnull readonly %44, i32 0, i32 3, i32 1)
  %45 = load <4 x i64>, ptr %43, align 64
  %46 = xor <4 x i64> %45, <i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227>
  %47 = lshr <4 x i64> %46, splat (i64 32)
  %48 = and <4 x i64> %46, splat (i64 4294967295)
  %49 = mul nuw <4 x i64> %48, %47
  %50 = shufflevector <4 x i64> %45, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %51 = add <4 x i64> %33, %50
  %52 = add <4 x i64> %51, %49
  %53 = getelementptr inbounds nuw i8, ptr %4, i64 352
  %54 = load <4 x i64>, ptr %53, align 32
  %55 = xor <4 x i64> %54, <i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724>
  %56 = lshr <4 x i64> %55, splat (i64 32)
  %57 = and <4 x i64> %55, splat (i64 4294967295)
  %58 = mul nuw <4 x i64> %57, %56
  %59 = shufflevector <4 x i64> %54, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %60 = add <4 x i64> %42, %59
  %61 = add <4 x i64> %60, %58
  %62 = getelementptr inbounds nuw i8, ptr %4, i64 384
  %63 = getelementptr inbounds nuw i8, ptr %4, i64 704
  call void @llvm.prefetch.p0(ptr nonnull readonly %63, i32 0, i32 3, i32 1)
  %64 = load <4 x i64>, ptr %62, align 64
  %65 = xor <4 x i64> %64, <i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594>
  %66 = lshr <4 x i64> %65, splat (i64 32)
  %67 = and <4 x i64> %65, splat (i64 4294967295)
  %68 = mul nuw <4 x i64> %67, %66
  %69 = shufflevector <4 x i64> %64, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %70 = add <4 x i64> %52, %69
  %71 = add <4 x i64> %70, %68
  %72 = getelementptr inbounds nuw i8, ptr %4, i64 416
  %73 = load <4 x i64>, ptr %72, align 32
  %74 = xor <4 x i64> %73, <i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928>
  %75 = lshr <4 x i64> %74, splat (i64 32)
  %76 = and <4 x i64> %74, splat (i64 4294967295)
  %77 = mul nuw <4 x i64> %76, %75
  %78 = shufflevector <4 x i64> %73, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %79 = add <4 x i64> %61, %78
  %80 = add <4 x i64> %79, %77
  %81 = getelementptr inbounds nuw i8, ptr %4, i64 448
  %82 = getelementptr inbounds nuw i8, ptr %4, i64 768
  call void @llvm.prefetch.p0(ptr nonnull readonly %82, i32 0, i32 3, i32 1)
  %83 = load <4 x i64>, ptr %81, align 64
  %84 = xor <4 x i64> %83, <i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176>
  %85 = lshr <4 x i64> %84, splat (i64 32)
  %86 = and <4 x i64> %84, splat (i64 4294967295)
  %87 = mul nuw <4 x i64> %86, %85
  %88 = shufflevector <4 x i64> %83, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %89 = add <4 x i64> %71, %88
  %90 = add <4 x i64> %89, %87
  %91 = getelementptr inbounds nuw i8, ptr %4, i64 480
  %92 = load <4 x i64>, ptr %91, align 32
  %93 = xor <4 x i64> %92, <i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313>
  %94 = lshr <4 x i64> %93, splat (i64 32)
  %95 = and <4 x i64> %93, splat (i64 4294967295)
  %96 = mul nuw <4 x i64> %95, %94
  %97 = shufflevector <4 x i64> %92, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %98 = add <4 x i64> %80, %97
  %99 = add <4 x i64> %98, %96
  store <4 x i64> %90, ptr %4, align 64
  store <4 x i64> %99, ptr %10, align 32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3)
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(20) %3, ptr noundef nonnull align 1 dereferenceable(20) %100, i64 20, i1 false)
  %101 = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %101, ptr noundef nonnull align 1 dereferenceable(12) %22, i64 12, i1 false)
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %103 = load <4 x i64>, ptr %102, align 1
  %104 = load <4 x i64>, ptr %3, align 32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3)
  %105 = shufflevector <4 x i64> %104, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %106 = add <4 x i64> %90, %105
  %107 = xor <4 x i64> %104, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %108 = and <4 x i64> %107, splat (i64 4294967295)
  %109 = lshr <4 x i64> %107, splat (i64 32)
  %110 = mul nuw <4 x i64> %108, %109
  %111 = add <4 x i64> %106, %110
  %112 = extractelement <4 x i64> %111, i64 1
  %113 = xor i64 %112, 3784058077962335096
  %114 = zext i64 %113 to i128
  %115 = extractelement <4 x i64> %111, i64 0
  %116 = xor i64 %115, -2753530472436770380
  %117 = zext i64 %116 to i128
  %118 = mul nuw i128 %114, %117
  %119 = lshr i128 %118, 64
  %120 = xor i128 %119, %118
  %121 = trunc i128 %120 to i64
  %122 = add i64 %121, -2982561263328149653
  %123 = extractelement <4 x i64> %111, i64 3
  %124 = xor i64 %123, -5237161843349560557
  %125 = zext i64 %124 to i128
  %126 = extractelement <4 x i64> %111, i64 2
  %127 = xor i64 %126, -360392965937173549
  %128 = zext i64 %127 to i128
  %129 = mul nuw i128 %125, %128
  %130 = lshr i128 %129, 64
  %131 = xor i128 %130, %129
  %132 = trunc i128 %131 to i64
  %133 = add i64 %122, %132
  %134 = shufflevector <4 x i64> %103, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %135 = add <4 x i64> %99, %134
  %136 = xor <4 x i64> %103, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %137 = and <4 x i64> %136, splat (i64 4294967295)
  %138 = lshr <4 x i64> %136, splat (i64 32)
  %139 = mul nuw <4 x i64> %137, %138
  %140 = add <4 x i64> %135, %139
  %141 = extractelement <4 x i64> %140, i64 1
  %142 = xor i64 %141, 9032178055121889492
  %143 = zext i64 %142 to i128
  %144 = extractelement <4 x i64> %140, i64 0
  %145 = xor i64 %144, 2965150961192524528
  %146 = zext i64 %145 to i128
  %147 = mul nuw i128 %143, %146
  %148 = lshr i128 %147, 64
  %149 = xor i128 %148, %147
  %150 = trunc i128 %149 to i64
  %151 = add i64 %133, %150
  %152 = extractelement <4 x i64> %140, i64 3
  %153 = xor i64 %152, -7669846995664752176
  %154 = zext i64 %153 to i128
  %155 = extractelement <4 x i64> %140, i64 2
  %156 = xor i64 %155, 8850058120466833735
  %157 = zext i64 %156 to i128
  %158 = mul nuw i128 %154, %157
  %159 = lshr i128 %158, 64
  %160 = xor i128 %159, %158
  %161 = trunc i128 %160 to i64
  %162 = add i64 %151, %161
  %163 = lshr i64 %162, 37
  %164 = xor i64 %163, %162
  %165 = mul i64 %164, 1609587791953885689
  %166 = lshr i64 %165, 32
  %167 = xor i64 %166, %165
  %168 = xor i64 %112, -6611157965513653271
  %169 = zext i64 %168 to i128
  %170 = xor i64 %115, 7914194659941938988
  %171 = zext i64 %170 to i128
  %172 = mul nuw i128 %169, %171
  %173 = lshr i128 %172, 64
  %174 = xor i128 %173, %172
  %175 = trunc i128 %174 to i64
  %176 = add i64 %175, 7566781886141388340
  %177 = xor i64 %123, -3433288310154277810
  %178 = zext i64 %177 to i128
  %179 = xor i64 %126, -1839215637059881052
  %180 = zext i64 %179 to i128
  %181 = mul nuw i128 %178, %180
  %182 = lshr i128 %181, 64
  %183 = xor i128 %182, %181
  %184 = trunc i128 %183 to i64
  %185 = add i64 %176, %184
  %186 = xor i64 %141, -8055285457383852172
  %187 = zext i64 %186 to i128
  %188 = xor i64 %144, 5046485836271438973
  %189 = zext i64 %188 to i128
  %190 = mul nuw i128 %187, %189
  %191 = lshr i128 %190, 64
  %192 = xor i128 %191, %190
  %193 = trunc i128 %192 to i64
  %194 = add i64 %185, %193
  %195 = xor i64 %152, 7336514198459093435
  %196 = zext i64 %195 to i128
  %197 = xor i64 %155, 5920048007935066598
  %198 = zext i64 %197 to i128
  %199 = mul nuw i128 %196, %198
  %200 = lshr i128 %199, 64
  %201 = xor i128 %200, %199
  %202 = trunc i128 %201 to i64
  %203 = add i64 %194, %202
  %204 = lshr i64 %203, 37
  %205 = xor i64 %204, %203
  %206 = mul i64 %205, 1609587791953885689
  %207 = lshr i64 %206, 32
  %208 = xor i64 %207, %206
  store i64 %208, ptr %1, align 8
  %209 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %167, ptr %209, align 8
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %4) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!17 = !{!18}
!18 = distinct !{!18, !19, !"XXH3_consumeStripes: argument 0"}
!19 = distinct !{!19, !"XXH3_consumeStripes"}
!20 = !{!21}
!21 = distinct !{!21, !19, !"XXH3_consumeStripes: argument 2"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"XXH3_accumulate_avx2: argument 0"}
!24 = distinct !{!24, !"XXH3_accumulate_avx2"}
!25 = !{!26}
!26 = distinct !{!26, !24, !"XXH3_accumulate_avx2: argument 1"}
!27 = !{!28, !23, !18, !15}
!28 = distinct !{!28, !29, !"XXH3_accumulate_512_avx2: argument 0"}
!29 = distinct !{!29, !"XXH3_accumulate_512_avx2"}
!30 = !{!31, !32, !26, !33, !34, !21, !35, !12}
!31 = distinct !{!31, !29, !"XXH3_accumulate_512_avx2: argument 1"}
!32 = distinct !{!32, !29, !"XXH3_accumulate_512_avx2: argument 2"}
!33 = distinct !{!33, !24, !"XXH3_accumulate_avx2: argument 2"}
!34 = distinct !{!34, !19, !"XXH3_consumeStripes: argument 1"}
!35 = distinct !{!35, !19, !"XXH3_consumeStripes: argument 3"}
!36 = !{!33, !34, !35}
!37 = !{!28}
!38 = !{!31}
!39 = !{!31, !26, !21, !15}
!40 = !{!28, !32, !23, !33, !18, !34, !35, !12}
!41 = !{!42, !26, !21, !15}
!42 = distinct !{!42, !29, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!43 = !{!44, !45, !23, !33, !18, !34, !35, !12}
!44 = distinct !{!44, !29, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!45 = distinct !{!45, !29, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!46 = !{!47, !26, !21, !15}
!47 = distinct !{!47, !29, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!48 = !{!49, !50, !23, !33, !18, !34, !35, !12}
!49 = distinct !{!49, !29, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!50 = distinct !{!50, !29, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!51 = !{!52, !26, !21, !15}
!52 = distinct !{!52, !29, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!53 = !{!54, !55, !23, !33, !18, !34, !35, !12}
!54 = distinct !{!54, !29, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!55 = distinct !{!55, !29, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"XXH3_accumulate_512_avx2: argument 1"}
!58 = distinct !{!58, !"XXH3_accumulate_512_avx2"}
!59 = !{!60, !61}
!60 = distinct !{!60, !58, !"XXH3_accumulate_512_avx2: argument 0"}
!61 = distinct !{!61, !58, !"XXH3_accumulate_512_avx2: argument 2"}
