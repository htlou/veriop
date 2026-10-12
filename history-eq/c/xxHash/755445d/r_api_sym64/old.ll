; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/755445d/wrap_api_sym64.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/755445d/wrap_api_sym64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: read) uwtable
define dso_local i64 @target_api_64_seed_129to240(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = add i64 %1, -241
  %5 = icmp ult i64 %4, -112
  br i1 %5, label %242, label %6

6:                                                ; preds = %3
  %7 = mul i64 %1, -7046029288634856825
  %8 = trunc nuw nsw i64 %1 to i32
  %9 = load i64, ptr %0, align 1
  %10 = getelementptr i8, ptr %0, i64 8
  %11 = load i64, ptr %10, align 1
  %12 = add i64 %2, -4734510112055689544
  %13 = xor i64 %9, %12
  %14 = sub i64 2066345149520216444, %2
  %15 = xor i64 %11, %14
  %16 = zext i64 %13 to i128
  %17 = zext i64 %15 to i128
  %18 = mul nuw i128 %17, %16
  %19 = lshr i128 %18, 64
  %20 = xor i128 %19, %18
  %21 = trunc i128 %20 to i64
  %22 = add i64 %7, %21
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %24 = load i64, ptr %23, align 1
  %25 = getelementptr i8, ptr %0, i64 24
  %26 = load i64, ptr %25, align 1
  %27 = add i64 %2, -2623469361688619810
  %28 = xor i64 %24, %27
  %29 = sub i64 2262974939099578482, %2
  %30 = xor i64 %26, %29
  %31 = zext i64 %28 to i128
  %32 = zext i64 %30 to i128
  %33 = mul nuw i128 %32, %31
  %34 = lshr i128 %33, 64
  %35 = xor i128 %34, %33
  %36 = trunc i128 %35 to i64
  %37 = add i64 %22, %36
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %39 = load i64, ptr %38, align 1
  %40 = getelementptr i8, ptr %0, i64 40
  %41 = load i64, ptr %40, align 1
  %42 = add i64 %2, 8711581037947681227
  %43 = xor i64 %39, %42
  %44 = sub i64 2410270004345854594, %2
  %45 = xor i64 %41, %44
  %46 = zext i64 %43 to i128
  %47 = zext i64 %45 to i128
  %48 = mul nuw i128 %47, %46
  %49 = lshr i128 %48, 64
  %50 = xor i128 %49, %48
  %51 = trunc i128 %50 to i64
  %52 = add i64 %37, %51
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %54 = load i64, ptr %53, align 1
  %55 = getelementptr i8, ptr %0, i64 56
  %56 = load i64, ptr %55, align 1
  %57 = add i64 %2, -8204357891075471176
  %58 = xor i64 %54, %57
  %59 = sub i64 5487137525590930912, %2
  %60 = xor i64 %56, %59
  %61 = zext i64 %58 to i128
  %62 = zext i64 %60 to i128
  %63 = mul nuw i128 %62, %61
  %64 = lshr i128 %63, 64
  %65 = xor i128 %64, %63
  %66 = trunc i128 %65 to i64
  %67 = add i64 %52, %66
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %69 = load i64, ptr %68, align 1
  %70 = getelementptr i8, ptr %0, i64 72
  %71 = load i64, ptr %70, align 1
  %72 = add i64 %2, -3818837453329782724
  %73 = xor i64 %69, %72
  %74 = sub i64 -6688317018830679928, %2
  %75 = xor i64 %71, %74
  %76 = zext i64 %73 to i128
  %77 = zext i64 %75 to i128
  %78 = mul nuw i128 %77, %76
  %79 = lshr i128 %78, 64
  %80 = xor i128 %79, %78
  %81 = trunc i128 %80 to i64
  %82 = add i64 %67, %81
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %84 = load i64, ptr %83, align 1
  %85 = getelementptr i8, ptr %0, i64 88
  %86 = load i64, ptr %85, align 1
  %87 = add i64 %2, 5690594596133299313
  %88 = xor i64 %84, %87
  %89 = sub i64 -2833645246901970632, %2
  %90 = xor i64 %86, %89
  %91 = zext i64 %88 to i128
  %92 = zext i64 %90 to i128
  %93 = mul nuw i128 %92, %91
  %94 = lshr i128 %93, 64
  %95 = xor i128 %94, %93
  %96 = trunc i128 %95 to i64
  %97 = add i64 %82, %96
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %99 = load i64, ptr %98, align 1
  %100 = getelementptr i8, ptr %0, i64 104
  %101 = load i64, ptr %100, align 1
  %102 = add i64 %2, 4554437623014685352
  %103 = xor i64 %99, %102
  %104 = sub i64 2111919702937427193, %2
  %105 = xor i64 %101, %104
  %106 = zext i64 %103 to i128
  %107 = zext i64 %105 to i128
  %108 = mul nuw i128 %107, %106
  %109 = lshr i128 %108, 64
  %110 = xor i128 %109, %108
  %111 = trunc i128 %110 to i64
  %112 = add i64 %97, %111
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %114 = load i64, ptr %113, align 1
  %115 = getelementptr i8, ptr %0, i64 120
  %116 = load i64, ptr %115, align 1
  %117 = add i64 %2, 3556072174620004746
  %118 = xor i64 %114, %117
  %119 = sub i64 7238261902898274248, %2
  %120 = xor i64 %116, %119
  %121 = zext i64 %118 to i128
  %122 = zext i64 %120 to i128
  %123 = mul nuw i128 %122, %121
  %124 = lshr i128 %123, 64
  %125 = xor i128 %124, %123
  %126 = trunc i128 %125 to i64
  %127 = add i64 %112, %126
  %128 = lshr i32 %8, 4
  %129 = lshr i64 %127, 37
  %130 = xor i64 %129, %127
  %131 = mul i64 %130, 1609587791953885689
  %132 = lshr i64 %131, 32
  %133 = xor i64 %132, %131
  %134 = icmp eq i32 %128, 8
  br i1 %134, label %219, label %135

135:                                              ; preds = %6
  %136 = zext nneg i32 %128 to i64
  %137 = and i64 %136, 1
  %138 = icmp eq i32 %128, 9
  br i1 %138, label %193, label %139

139:                                              ; preds = %135
  %140 = and i64 %136, 6
  br label %141

141:                                              ; preds = %141, %139
  %142 = phi i64 [ 8, %139 ], [ %188, %141 ]
  %143 = phi i64 [ %133, %139 ], [ %187, %141 ]
  %144 = phi i64 [ 0, %139 ], [ %189, %141 ]
  %145 = shl nuw nsw i64 %142, 4
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 %145
  %147 = getelementptr i8, ptr @XXH3_kSecret, i64 %145
  %148 = getelementptr i8, ptr %147, i64 -125
  %149 = load i64, ptr %146, align 1
  %150 = getelementptr i8, ptr %146, i64 8
  %151 = load i64, ptr %150, align 1
  %152 = load i64, ptr %148, align 1
  %153 = getelementptr i8, ptr %147, i64 -117
  %154 = load i64, ptr %153, align 1
  %155 = add i64 %152, %2
  %156 = xor i64 %155, %149
  %157 = sub i64 %154, %2
  %158 = xor i64 %157, %151
  %159 = zext i64 %156 to i128
  %160 = zext i64 %158 to i128
  %161 = mul nuw i128 %160, %159
  %162 = lshr i128 %161, 64
  %163 = xor i128 %162, %161
  %164 = trunc i128 %163 to i64
  %165 = add i64 %143, %164
  %166 = shl i64 %142, 4
  %167 = or disjoint i64 %166, 16
  %168 = getelementptr inbounds nuw i8, ptr %0, i64 %167
  %169 = getelementptr i8, ptr @XXH3_kSecret, i64 %167
  %170 = getelementptr i8, ptr %169, i64 -125
  %171 = load i64, ptr %168, align 1
  %172 = getelementptr i8, ptr %168, i64 8
  %173 = load i64, ptr %172, align 1
  %174 = load i64, ptr %170, align 1
  %175 = getelementptr i8, ptr %169, i64 -117
  %176 = load i64, ptr %175, align 1
  %177 = add i64 %174, %2
  %178 = xor i64 %177, %171
  %179 = sub i64 %176, %2
  %180 = xor i64 %179, %173
  %181 = zext i64 %178 to i128
  %182 = zext i64 %180 to i128
  %183 = mul nuw i128 %182, %181
  %184 = lshr i128 %183, 64
  %185 = xor i128 %184, %183
  %186 = trunc i128 %185 to i64
  %187 = add i64 %165, %186
  %188 = add nuw nsw i64 %142, 2
  %189 = add i64 %144, 2
  %190 = icmp eq i64 %189, %140
  br i1 %190, label %191, label %141

191:                                              ; preds = %141
  %192 = shl nuw nsw i64 %188, 4
  br label %193

193:                                              ; preds = %191, %135
  %194 = phi i64 [ poison, %135 ], [ %187, %191 ]
  %195 = phi i64 [ 128, %135 ], [ %192, %191 ]
  %196 = phi i64 [ %133, %135 ], [ %187, %191 ]
  %197 = icmp eq i64 %137, 0
  br i1 %197, label %219, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds nuw i8, ptr %0, i64 %195
  %200 = getelementptr i8, ptr @XXH3_kSecret, i64 %195
  %201 = getelementptr i8, ptr %200, i64 -125
  %202 = load i64, ptr %199, align 1
  %203 = getelementptr i8, ptr %199, i64 8
  %204 = load i64, ptr %203, align 1
  %205 = load i64, ptr %201, align 1
  %206 = getelementptr i8, ptr %200, i64 -117
  %207 = load i64, ptr %206, align 1
  %208 = add i64 %205, %2
  %209 = xor i64 %208, %202
  %210 = sub i64 %207, %2
  %211 = xor i64 %210, %204
  %212 = zext i64 %209 to i128
  %213 = zext i64 %211 to i128
  %214 = mul nuw i128 %213, %212
  %215 = lshr i128 %214, 64
  %216 = xor i128 %215, %214
  %217 = trunc i128 %216 to i64
  %218 = add i64 %196, %217
  br label %219

219:                                              ; preds = %198, %193, %6
  %220 = phi i64 [ %133, %6 ], [ %194, %193 ], [ %218, %198 ]
  %221 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %222 = getelementptr inbounds i8, ptr %221, i64 -16
  %223 = load i64, ptr %222, align 1
  %224 = getelementptr i8, ptr %221, i64 -8
  %225 = load i64, ptr %224, align 1
  %226 = add i64 %2, 8320639771003045937
  %227 = xor i64 %223, %226
  %228 = sub i64 -1453760514566526364, %2
  %229 = xor i64 %225, %228
  %230 = zext i64 %227 to i128
  %231 = zext i64 %229 to i128
  %232 = mul nuw i128 %231, %230
  %233 = lshr i128 %232, 64
  %234 = xor i128 %233, %232
  %235 = trunc i128 %234 to i64
  %236 = add i64 %220, %235
  %237 = lshr i64 %236, 37
  %238 = xor i64 %237, %236
  %239 = mul i64 %238, 1609587791953885689
  %240 = lshr i64 %239, 32
  %241 = xor i64 %240, %239
  br label %242

242:                                              ; preds = %3, %219
  %243 = phi i64 [ %241, %219 ], [ 0, %3 ]
  ret i64 %243
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }

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
!9 = distinct !{!9, !10, !"XXH3_len_129to240_64b: argument 0"}
!10 = distinct !{!10, !"XXH3_len_129to240_64b"}
!11 = !{!9, !6}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
