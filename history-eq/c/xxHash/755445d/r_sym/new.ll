; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/755445d/wrap_sym.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/755445d/wrap_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@XXH3_kSecret = internal unnamed_addr constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nounwind uwtable
define dso_local i64 @target_xxh3_64_seed_129to240(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = add i64 %1, -241
  %5 = icmp ult i64 %4, -112
  br i1 %5, label %189, label %6

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
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %130 = getelementptr inbounds i8, ptr %129, i64 -16
  %131 = load i64, ptr %130, align 1
  %132 = getelementptr i8, ptr %129, i64 -8
  %133 = load i64, ptr %132, align 1
  %134 = add i64 %2, 8320639771003045937
  %135 = xor i64 %131, %134
  %136 = sub i64 -1453760514566526364, %2
  %137 = xor i64 %133, %136
  %138 = zext i64 %135 to i128
  %139 = zext i64 %137 to i128
  %140 = mul nuw i128 %139, %138
  %141 = lshr i128 %140, 64
  %142 = xor i128 %141, %140
  %143 = trunc i128 %142 to i64
  %144 = lshr i64 %127, 37
  %145 = xor i64 %144, %127
  %146 = mul i64 %145, 1609587791953885689
  %147 = lshr i64 %146, 32
  %148 = xor i64 %147, %146
  %149 = icmp eq i32 %128, 8
  br i1 %149, label %180, label %150

150:                                              ; preds = %6
  %151 = zext nneg i32 %128 to i64
  br label %152

152:                                              ; preds = %152, %150
  %153 = phi i64 [ 8, %150 ], [ %178, %152 ]
  %154 = phi i64 [ %148, %150 ], [ %156, %152 ]
  %155 = phi i64 [ %143, %150 ], [ %177, %152 ]
  %156 = freeze i64 %154
  %157 = shl nuw nsw i64 %153, 4
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 %157
  %159 = getelementptr i8, ptr @XXH3_kSecret, i64 %157
  %160 = getelementptr i8, ptr %159, i64 -125
  %161 = load i64, ptr %158, align 1
  %162 = getelementptr i8, ptr %158, i64 8
  %163 = load i64, ptr %162, align 1
  %164 = load i64, ptr %160, align 1
  %165 = getelementptr i8, ptr %159, i64 -117
  %166 = load i64, ptr %165, align 1
  %167 = add i64 %164, %2
  %168 = xor i64 %167, %161
  %169 = sub i64 %166, %2
  %170 = xor i64 %169, %163
  %171 = zext i64 %168 to i128
  %172 = zext i64 %170 to i128
  %173 = mul nuw i128 %172, %171
  %174 = lshr i128 %173, 64
  %175 = xor i128 %174, %173
  %176 = trunc i128 %175 to i64
  %177 = add i64 %155, %176
  %178 = add nuw nsw i64 %153, 1
  %179 = icmp eq i64 %178, %151
  br i1 %179, label %180, label %152

180:                                              ; preds = %152, %6
  %181 = phi i64 [ %143, %6 ], [ %177, %152 ]
  %182 = phi i64 [ %148, %6 ], [ %156, %152 ]
  %183 = add i64 %182, %181
  %184 = lshr i64 %183, 37
  %185 = xor i64 %184, %183
  %186 = mul i64 %185, 1609587791953885689
  %187 = lshr i64 %186, 32
  %188 = xor i64 %187, %186
  br label %189

189:                                              ; preds = %3, %180
  %190 = phi i64 [ %188, %180 ], [ 0, %3 ]
  ret i64 %190
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #2 = { nounwind }

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
!12 = !{i64 2152106097}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
