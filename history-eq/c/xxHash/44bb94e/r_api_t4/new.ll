; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/44bb94e/wrap_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/44bb94e/wrap_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH3_state_s = type { [8 x i64], [192 x i8], [256 x i8], i32, i32, i64, i64, i64, i64, i64, i64, ptr }

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @target_128_100_200(ptr noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
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
  %22 = load <4 x i64>, ptr %4, align 64
  %23 = load <4 x i64>, ptr %10, align 32
  %24 = getelementptr inbounds nuw i8, ptr %4, i64 576
  call void @llvm.prefetch.p0(ptr nonnull readonly %24, i32 0, i32 3, i32 1)
  %25 = load <4 x i64>, ptr %19, align 64
  %26 = xor <4 x i64> %25, <i64 -4734510112055689544, i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482>
  %27 = lshr <4 x i64> %26, splat (i64 32)
  %28 = and <4 x i64> %26, splat (i64 4294967295)
  %29 = mul nuw <4 x i64> %28, %27
  %30 = shufflevector <4 x i64> %25, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %31 = add <4 x i64> %22, %30
  %32 = add <4 x i64> %31, %29
  %33 = getelementptr inbounds nuw i8, ptr %4, i64 288
  %34 = load <4 x i64>, ptr %33, align 32
  %35 = xor <4 x i64> %34, <i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912>
  %36 = lshr <4 x i64> %35, splat (i64 32)
  %37 = and <4 x i64> %35, splat (i64 4294967295)
  %38 = mul nuw <4 x i64> %37, %36
  %39 = shufflevector <4 x i64> %34, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %40 = add <4 x i64> %23, %39
  %41 = add <4 x i64> %40, %38
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 320
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 640
  call void @llvm.prefetch.p0(ptr nonnull readonly %43, i32 0, i32 3, i32 1)
  %44 = load <4 x i64>, ptr %42, align 64
  %45 = xor <4 x i64> %44, <i64 2066345149520216444, i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227>
  %46 = lshr <4 x i64> %45, splat (i64 32)
  %47 = and <4 x i64> %45, splat (i64 4294967295)
  %48 = mul nuw <4 x i64> %47, %46
  %49 = shufflevector <4 x i64> %44, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %50 = add <4 x i64> %32, %49
  %51 = add <4 x i64> %50, %48
  %52 = getelementptr inbounds nuw i8, ptr %4, i64 352
  %53 = load <4 x i64>, ptr %52, align 32
  %54 = xor <4 x i64> %53, <i64 2410270004345854594, i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724>
  %55 = lshr <4 x i64> %54, splat (i64 32)
  %56 = and <4 x i64> %54, splat (i64 4294967295)
  %57 = mul nuw <4 x i64> %56, %55
  %58 = shufflevector <4 x i64> %53, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %59 = add <4 x i64> %41, %58
  %60 = add <4 x i64> %59, %57
  %61 = getelementptr inbounds nuw i8, ptr %4, i64 384
  %62 = getelementptr inbounds nuw i8, ptr %4, i64 704
  call void @llvm.prefetch.p0(ptr nonnull readonly %62, i32 0, i32 3, i32 1)
  %63 = load <4 x i64>, ptr %61, align 64
  %64 = xor <4 x i64> %63, <i64 -2623469361688619810, i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594>
  %65 = lshr <4 x i64> %64, splat (i64 32)
  %66 = and <4 x i64> %64, splat (i64 4294967295)
  %67 = mul nuw <4 x i64> %66, %65
  %68 = shufflevector <4 x i64> %63, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %69 = add <4 x i64> %51, %68
  %70 = add <4 x i64> %69, %67
  %71 = getelementptr inbounds nuw i8, ptr %4, i64 416
  %72 = load <4 x i64>, ptr %71, align 32
  %73 = xor <4 x i64> %72, <i64 -8204357891075471176, i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928>
  %74 = lshr <4 x i64> %73, splat (i64 32)
  %75 = and <4 x i64> %73, splat (i64 4294967295)
  %76 = mul nuw <4 x i64> %75, %74
  %77 = shufflevector <4 x i64> %72, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %78 = add <4 x i64> %60, %77
  %79 = add <4 x i64> %78, %76
  %80 = getelementptr inbounds nuw i8, ptr %4, i64 448
  %81 = getelementptr inbounds nuw i8, ptr %4, i64 768
  call void @llvm.prefetch.p0(ptr nonnull readonly %81, i32 0, i32 3, i32 1)
  %82 = load <4 x i64>, ptr %80, align 64
  %83 = xor <4 x i64> %82, <i64 2262974939099578482, i64 8711581037947681227, i64 2410270004345854594, i64 -8204357891075471176>
  %84 = lshr <4 x i64> %83, splat (i64 32)
  %85 = and <4 x i64> %83, splat (i64 4294967295)
  %86 = mul nuw <4 x i64> %85, %84
  %87 = shufflevector <4 x i64> %82, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %88 = add <4 x i64> %70, %87
  %89 = add <4 x i64> %88, %86
  %90 = getelementptr inbounds nuw i8, ptr %4, i64 480
  %91 = load <4 x i64>, ptr %90, align 32
  %92 = xor <4 x i64> %91, <i64 5487137525590930912, i64 -3818837453329782724, i64 -6688317018830679928, i64 5690594596133299313>
  %93 = lshr <4 x i64> %92, splat (i64 32)
  %94 = and <4 x i64> %92, splat (i64 4294967295)
  %95 = mul nuw <4 x i64> %94, %93
  %96 = shufflevector <4 x i64> %91, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %97 = add <4 x i64> %79, %96
  %98 = add <4 x i64> %97, %95
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <4 x i64> %89, ptr %4, align 64
  store <4 x i64> %98, ptr %10, align 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(44) %19, ptr noundef nonnull readonly align 1 dereferenceable(44) %99, i64 range(i64 -9223372036854775808, 4294967296) 44, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3)
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(20) %3, ptr noundef nonnull align 1 dereferenceable(20) %100, i64 20, i1 false)
  %101 = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %101, ptr noundef nonnull align 1 dereferenceable(12) %99, i64 12, i1 false)
  %102 = load <4 x i64>, ptr %3, align 32
  %103 = getelementptr inbounds nuw i8, ptr %4, i64 268
  %104 = load <4 x i64>, ptr %103, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3)
  %105 = shufflevector <4 x i64> %102, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %106 = add <4 x i64> %89, %105
  %107 = xor <4 x i64> %102, <i64 -1556992608276218209, i64 -4196251135427498811, i64 1723580219865931905, i64 -3221803331004277491>
  %108 = and <4 x i64> %107, splat (i64 4294967295)
  %109 = lshr <4 x i64> %107, splat (i64 32)
  %110 = mul nuw <4 x i64> %108, %109
  %111 = add <4 x i64> %106, %110
  %112 = extractelement <4 x i64> %111, i64 3
  %113 = xor i64 %112, -5237161843349560557
  %114 = zext i64 %113 to i128
  %115 = extractelement <4 x i64> %111, i64 2
  %116 = xor i64 %115, -360392965937173549
  %117 = zext i64 %116 to i128
  %118 = mul nuw i128 %114, %117
  %119 = lshr i128 %118, 64
  %120 = xor i128 %119, %118
  %121 = trunc i128 %120 to i64
  %122 = add i64 %121, -2982561263328149653
  %123 = shufflevector <4 x i64> %104, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %124 = add <4 x i64> %98, %123
  %125 = xor <4 x i64> %104, <i64 3143064850383918358, i64 -8071399103737053674, i64 5030012605302946040, i64 -5825401622958753077>
  %126 = and <4 x i64> %125, splat (i64 4294967295)
  %127 = lshr <4 x i64> %125, splat (i64 32)
  %128 = mul nuw <4 x i64> %126, %127
  %129 = add <4 x i64> %124, %128
  %130 = extractelement <4 x i64> %129, i64 3
  %131 = xor i64 %130, -7669846995664752176
  %132 = zext i64 %131 to i128
  %133 = extractelement <4 x i64> %129, i64 2
  %134 = xor i64 %133, 8850058120466833735
  %135 = zext i64 %134 to i128
  %136 = mul nuw i128 %132, %135
  %137 = lshr i128 %136, 64
  %138 = xor i128 %137, %136
  %139 = trunc i128 %138 to i64
  %140 = add i64 %122, %139
  %141 = extractelement <4 x i64> %111, i64 0
  %142 = xor i64 %141, -2753530472436770380
  %143 = zext i64 %142 to i128
  %144 = extractelement <4 x i64> %111, i64 1
  %145 = xor i64 %144, 3784058077962335096
  %146 = zext i64 %145 to i128
  %147 = mul nuw i128 %143, %146
  %148 = lshr i128 %147, 64
  %149 = xor i128 %148, %147
  %150 = trunc i128 %149 to i64
  %151 = add i64 %140, %150
  %152 = extractelement <4 x i64> %129, i64 0
  %153 = xor i64 %152, 2965150961192524528
  %154 = zext i64 %153 to i128
  %155 = extractelement <4 x i64> %129, i64 1
  %156 = xor i64 %155, 9032178055121889492
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
  %168 = xor i64 %144, -6611157965513653271
  %169 = zext i64 %168 to i128
  %170 = xor i64 %141, 7914194659941938988
  %171 = zext i64 %170 to i128
  %172 = mul nuw i128 %169, %171
  %173 = lshr i128 %172, 64
  %174 = xor i128 %173, %172
  %175 = trunc i128 %174 to i64
  %176 = add i64 %175, 7566781886141388340
  %177 = xor i64 %112, -3433288310154277810
  %178 = zext i64 %177 to i128
  %179 = xor i64 %115, -1839215637059881052
  %180 = zext i64 %179 to i128
  %181 = mul nuw i128 %178, %180
  %182 = lshr i128 %181, 64
  %183 = xor i128 %182, %181
  %184 = trunc i128 %183 to i64
  %185 = add i64 %176, %184
  %186 = xor i64 %155, -8055285457383852172
  %187 = zext i64 %186 to i128
  %188 = xor i64 %152, 5046485836271438973
  %189 = zext i64 %188 to i128
  %190 = mul nuw i128 %187, %189
  %191 = lshr i128 %190, 64
  %192 = xor i128 %191, %190
  %193 = trunc i128 %192 to i64
  %194 = add i64 %185, %193
  %195 = xor i64 %130, 7336514198459093435
  %196 = zext i64 %195 to i128
  %197 = xor i64 %133, 5920048007935066598
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

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
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
!22 = !{!23, !25, !18, !15}
!23 = distinct !{!23, !24, !"XXH3_accumulate_512_avx2: argument 0"}
!24 = distinct !{!24, !"XXH3_accumulate_512_avx2"}
!25 = distinct !{!25, !26, !"XXH3_accumulate_avx2: argument 0"}
!26 = distinct !{!26, !"XXH3_accumulate_avx2"}
!27 = !{!28, !29, !30, !31, !32, !21, !33, !12}
!28 = distinct !{!28, !24, !"XXH3_accumulate_512_avx2: argument 1"}
!29 = distinct !{!29, !24, !"XXH3_accumulate_512_avx2: argument 2"}
!30 = distinct !{!30, !26, !"XXH3_accumulate_avx2: argument 1"}
!31 = distinct !{!31, !26, !"XXH3_accumulate_avx2: argument 2"}
!32 = distinct !{!32, !19, !"XXH3_consumeStripes: argument 1"}
!33 = distinct !{!33, !19, !"XXH3_consumeStripes: argument 3"}
!34 = !{!25}
!35 = !{!30}
!36 = !{!31, !32, !33}
!37 = !{!23}
!38 = !{!28}
!39 = !{!28, !30, !21, !15}
!40 = !{!23, !29, !25, !31, !18, !32, !33, !12}
!41 = !{!42, !30, !21, !15}
!42 = distinct !{!42, !24, !"XXH3_accumulate_512_avx2: argument 1:It1"}
!43 = !{!44, !45, !25, !31, !18, !32, !33, !12}
!44 = distinct !{!44, !24, !"XXH3_accumulate_512_avx2: argument 0:It1"}
!45 = distinct !{!45, !24, !"XXH3_accumulate_512_avx2: argument 2:It1"}
!46 = !{!47, !30, !21, !15}
!47 = distinct !{!47, !24, !"XXH3_accumulate_512_avx2: argument 1:It2"}
!48 = !{!49, !50, !25, !31, !18, !32, !33, !12}
!49 = distinct !{!49, !24, !"XXH3_accumulate_512_avx2: argument 0:It2"}
!50 = distinct !{!50, !24, !"XXH3_accumulate_512_avx2: argument 2:It2"}
!51 = !{!52, !30, !21, !15}
!52 = distinct !{!52, !24, !"XXH3_accumulate_512_avx2: argument 1:It3"}
!53 = !{!54, !55, !25, !31, !18, !32, !33, !12}
!54 = distinct !{!54, !24, !"XXH3_accumulate_512_avx2: argument 0:It3"}
!55 = distinct !{!55, !24, !"XXH3_accumulate_512_avx2: argument 2:It3"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"XXH3_accumulate_512_avx2: argument 1"}
!58 = distinct !{!58, !"XXH3_accumulate_512_avx2"}
!59 = !{!60, !61}
!60 = distinct !{!60, !58, !"XXH3_accumulate_512_avx2: argument 0"}
!61 = distinct !{!61, !58, !"XXH3_accumulate_512_avx2: argument 2"}
