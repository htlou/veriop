; ModuleID = 'c9a7470/r_wasm_api_model/new.ll'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c9a7470/wrap_wasm_api.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-i128:128-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-unknown"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: readwrite)
define hidden i64 @target_xxh3_len256(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24, i64 noundef %25, i64 noundef %26, i64 noundef %27, i64 noundef %28, i64 noundef %29, i64 noundef %30, i64 noundef %31) local_unnamed_addr #0 {
  %33 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %33) #3
  store i64 %0, ptr %33, align 16
  %34 = getelementptr inbounds nuw i8, ptr %33, i32 8
  store i64 %1, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %33, i32 16
  store i64 %2, ptr %35, align 16
  %36 = getelementptr inbounds nuw i8, ptr %33, i32 24
  store i64 %3, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %33, i32 32
  store i64 %4, ptr %37, align 16
  %38 = getelementptr inbounds nuw i8, ptr %33, i32 40
  store i64 %5, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %33, i32 48
  store i64 %6, ptr %39, align 16
  %40 = getelementptr inbounds nuw i8, ptr %33, i32 56
  store i64 %7, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %33, i32 64
  store i64 %8, ptr %41, align 16
  %42 = getelementptr inbounds nuw i8, ptr %33, i32 72
  store i64 %9, ptr %42, align 8
  %43 = getelementptr inbounds nuw i8, ptr %33, i32 80
  store i64 %10, ptr %43, align 16
  %44 = getelementptr inbounds nuw i8, ptr %33, i32 88
  store i64 %11, ptr %44, align 8
  %45 = getelementptr inbounds nuw i8, ptr %33, i32 96
  store i64 %12, ptr %45, align 16
  %46 = getelementptr inbounds nuw i8, ptr %33, i32 104
  store i64 %13, ptr %46, align 8
  %47 = getelementptr inbounds nuw i8, ptr %33, i32 112
  store i64 %14, ptr %47, align 16
  %48 = getelementptr inbounds nuw i8, ptr %33, i32 120
  store i64 %15, ptr %48, align 8
  %49 = getelementptr inbounds nuw i8, ptr %33, i32 128
  store i64 %16, ptr %49, align 16
  %50 = getelementptr inbounds nuw i8, ptr %33, i32 136
  store i64 %17, ptr %50, align 8
  %51 = getelementptr inbounds nuw i8, ptr %33, i32 144
  store i64 %18, ptr %51, align 16
  %52 = getelementptr inbounds nuw i8, ptr %33, i32 152
  store i64 %19, ptr %52, align 8
  %53 = getelementptr inbounds nuw i8, ptr %33, i32 160
  store i64 %20, ptr %53, align 16
  %54 = getelementptr inbounds nuw i8, ptr %33, i32 168
  store i64 %21, ptr %54, align 8
  %55 = getelementptr inbounds nuw i8, ptr %33, i32 176
  store i64 %22, ptr %55, align 16
  %56 = getelementptr inbounds nuw i8, ptr %33, i32 184
  store i64 %23, ptr %56, align 8
  %57 = getelementptr inbounds nuw i8, ptr %33, i32 192
  store i64 %24, ptr %57, align 16
  %58 = getelementptr inbounds nuw i8, ptr %33, i32 200
  store i64 %25, ptr %58, align 8
  %59 = getelementptr inbounds nuw i8, ptr %33, i32 208
  store i64 %26, ptr %59, align 16
  %60 = getelementptr inbounds nuw i8, ptr %33, i32 216
  store i64 %27, ptr %60, align 8
  %61 = getelementptr inbounds nuw i8, ptr %33, i32 224
  store i64 %28, ptr %61, align 16
  %62 = getelementptr inbounds nuw i8, ptr %33, i32 232
  store i64 %29, ptr %62, align 8
  %63 = getelementptr inbounds nuw i8, ptr %33, i32 240
  store i64 %30, ptr %63, align 16
  %64 = getelementptr inbounds nuw i8, ptr %33, i32 248
  store i64 %31, ptr %64, align 8
  %65 = getelementptr inbounds nuw i8, ptr %33, i32 320
  call void @llvm.prefetch.p0(ptr nonnull readonly %65, i32 0, i32 3, i32 1)
  %66 = load <4 x i32>, ptr %33, align 16
  %67 = bitcast <4 x i32> %66 to <2 x i64>
  %68 = load <4 x i32>, ptr %35, align 16
  %69 = bitcast <4 x i32> %68 to <2 x i64>
  %70 = bitcast <4 x i32> %66 to <16 x i8>
  %71 = xor <16 x i8> %70, <i8 -72, i8 -2, i8 108, i8 57, i8 35, i8 -92, i8 75, i8 -66, i8 124, i8 1, i8 -127, i8 44, i8 -9, i8 33, i8 -83, i8 28>
  %72 = bitcast <4 x i32> %68 to <16 x i8>
  %73 = xor <16 x i8> %72, <i8 -34, i8 -44, i8 109, i8 -23, i8 -125, i8 -112, i8 -105, i8 -37, i8 114, i8 64, i8 -92, i8 -92, i8 -73, i8 -77, i8 103, i8 31>
  %74 = shufflevector <16 x i8> %71, <16 x i8> %73, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %75 = bitcast <16 x i8> %74 to <4 x i32>
  %76 = shufflevector <16 x i8> %71, <16 x i8> %73, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %77 = bitcast <16 x i8> %76 to <4 x i32>
  %78 = shufflevector <4 x i32> %75, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %79 = zext <2 x i32> %78 to <2 x i64>
  %80 = shufflevector <4 x i32> %77, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %81 = zext <2 x i32> %80 to <2 x i64>
  %82 = mul nuw <2 x i64> %81, %79
  %83 = shufflevector <4 x i32> %75, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %84 = shufflevector <4 x i32> %77, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %85 = zext <2 x i32> %83 to <2 x i64>
  %86 = zext <2 x i32> %84 to <2 x i64>
  %87 = mul nuw <2 x i64> %86, %85
  %88 = add <2 x i64> %67, <i64 -7046029288634856825, i64 3266489917>
  %89 = add <2 x i64> %69, <i64 1609587929392839161, i64 -4417276706812531889>
  %90 = shufflevector <2 x i64> %89, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %91 = add <2 x i64> %87, %90
  %92 = load <4 x i32>, ptr %37, align 16
  %93 = bitcast <4 x i32> %92 to <2 x i64>
  %94 = load <4 x i32>, ptr %39, align 16
  %95 = bitcast <4 x i32> %94 to <2 x i64>
  %96 = bitcast <4 x i32> %92 to <16 x i8>
  %97 = xor <16 x i8> %96, <i8 -53, i8 121, i8 -26, i8 78, i8 -52, i8 -64, i8 -27, i8 120, i8 -126, i8 90, i8 -48, i8 125, i8 -52, i8 -1, i8 114, i8 33>
  %98 = bitcast <4 x i32> %94 to <16 x i8>
  %99 = xor <16 x i8> %98, <i8 -72, i8 8, i8 70, i8 116, i8 -9, i8 67, i8 36, i8 -114, i8 -32, i8 53, i8 -112, i8 -26, i8 -127, i8 58, i8 38, i8 76>
  %100 = shufflevector <16 x i8> %97, <16 x i8> %99, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %101 = bitcast <16 x i8> %100 to <4 x i32>
  %102 = shufflevector <16 x i8> %97, <16 x i8> %99, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %103 = bitcast <16 x i8> %102 to <4 x i32>
  %104 = shufflevector <4 x i32> %101, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %105 = zext <2 x i32> %104 to <2 x i64>
  %106 = shufflevector <4 x i32> %103, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %107 = zext <2 x i32> %106 to <2 x i64>
  %108 = mul nuw <2 x i64> %107, %105
  %109 = shufflevector <4 x i32> %101, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %110 = shufflevector <4 x i32> %103, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %111 = zext <2 x i32> %109 to <2 x i64>
  %112 = zext <2 x i32> %110 to <2 x i64>
  %113 = mul nuw <2 x i64> %112, %111
  %114 = add <2 x i64> %93, <i64 2246822519, i64 -8796714831421723037>
  %115 = shufflevector <2 x i64> %114, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %116 = add <2 x i64> %108, %115
  %117 = add <2 x i64> %95, <i64 2654435761, i64 2870177450012600261>
  %118 = shufflevector <2 x i64> %117, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %119 = add <2 x i64> %113, %118
  %120 = getelementptr inbounds nuw i8, ptr %33, i32 384
  call void @llvm.prefetch.p0(ptr nonnull readonly %120, i32 0, i32 3, i32 1)
  %121 = freeze ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i32 8)
  %122 = load <4 x i32>, ptr %41, align 16
  %123 = bitcast <4 x i32> %122 to <2 x i64>
  %124 = load <4 x i32>, ptr %43, align 16
  %125 = bitcast <4 x i32> %124 to <2 x i64>
  %126 = load <4 x i32>, ptr %121, align 1
  %127 = getelementptr inbounds nuw i8, ptr %121, i32 16
  %128 = load <4 x i32>, ptr %127, align 1
  %129 = shufflevector <2 x i64> %125, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %130 = xor <4 x i32> %126, %122
  %131 = xor <4 x i32> %128, %124
  %132 = shufflevector <4 x i32> %130, <4 x i32> %131, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %133 = shufflevector <4 x i32> %130, <4 x i32> %131, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %134 = shufflevector <4 x i32> %132, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %135 = zext <2 x i32> %134 to <2 x i64>
  %136 = shufflevector <4 x i32> %133, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %137 = zext <2 x i32> %136 to <2 x i64>
  %138 = mul nuw <2 x i64> %137, %135
  %139 = shufflevector <4 x i32> %132, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %140 = shufflevector <4 x i32> %133, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %141 = zext <2 x i32> %139 to <2 x i64>
  %142 = zext <2 x i32> %140 to <2 x i64>
  %143 = mul nuw <2 x i64> %142, %141
  %144 = add <2 x i64> %91, %129
  %145 = add <2 x i64> %144, %143
  %146 = load <4 x i32>, ptr %45, align 16
  %147 = bitcast <4 x i32> %146 to <2 x i64>
  %148 = load <4 x i32>, ptr %47, align 16
  %149 = bitcast <4 x i32> %148 to <2 x i64>
  %150 = getelementptr inbounds nuw i8, ptr %121, i32 32
  %151 = load <4 x i32>, ptr %150, align 1
  %152 = getelementptr inbounds nuw i8, ptr %121, i32 48
  %153 = load <4 x i32>, ptr %152, align 1
  %154 = shufflevector <2 x i64> %147, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %155 = shufflevector <2 x i64> %149, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %156 = xor <4 x i32> %151, %146
  %157 = xor <4 x i32> %153, %148
  %158 = shufflevector <4 x i32> %156, <4 x i32> %157, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %159 = shufflevector <4 x i32> %156, <4 x i32> %157, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %160 = shufflevector <4 x i32> %158, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %161 = zext <2 x i32> %160 to <2 x i64>
  %162 = shufflevector <4 x i32> %159, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %163 = zext <2 x i32> %162 to <2 x i64>
  %164 = mul nuw <2 x i64> %163, %161
  %165 = shufflevector <4 x i32> %158, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %166 = shufflevector <4 x i32> %159, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %167 = zext <2 x i32> %165 to <2 x i64>
  %168 = zext <2 x i32> %166 to <2 x i64>
  %169 = mul nuw <2 x i64> %168, %167
  %170 = add <2 x i64> %116, %154
  %171 = add <2 x i64> %170, %164
  %172 = add <2 x i64> %119, %155
  %173 = add <2 x i64> %172, %169
  %174 = getelementptr inbounds nuw i8, ptr %33, i32 448
  call void @llvm.prefetch.p0(ptr nonnull readonly %174, i32 0, i32 3, i32 1)
  %175 = freeze ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i32 16)
  %176 = load <4 x i32>, ptr %49, align 16
  %177 = bitcast <4 x i32> %176 to <2 x i64>
  %178 = load <4 x i32>, ptr %51, align 16
  %179 = bitcast <4 x i32> %178 to <2 x i64>
  %180 = load <4 x i32>, ptr %175, align 1
  %181 = getelementptr inbounds nuw i8, ptr %175, i32 16
  %182 = load <4 x i32>, ptr %181, align 1
  %183 = shufflevector <2 x i64> %177, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %184 = shufflevector <2 x i64> %179, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %185 = xor <4 x i32> %180, %176
  %186 = xor <4 x i32> %182, %178
  %187 = shufflevector <4 x i32> %185, <4 x i32> %186, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %188 = shufflevector <4 x i32> %185, <4 x i32> %186, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %189 = shufflevector <4 x i32> %187, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %190 = zext <2 x i32> %189 to <2 x i64>
  %191 = shufflevector <4 x i32> %188, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %192 = zext <2 x i32> %191 to <2 x i64>
  %193 = mul nuw <2 x i64> %192, %190
  %194 = shufflevector <4 x i32> %187, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %195 = shufflevector <4 x i32> %188, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %196 = zext <2 x i32> %194 to <2 x i64>
  %197 = zext <2 x i32> %195 to <2 x i64>
  %198 = mul nuw <2 x i64> %197, %196
  %199 = add <2 x i64> %145, %184
  %200 = add <2 x i64> %199, %198
  %201 = load <4 x i32>, ptr %53, align 16
  %202 = bitcast <4 x i32> %201 to <2 x i64>
  %203 = load <4 x i32>, ptr %55, align 16
  %204 = bitcast <4 x i32> %203 to <2 x i64>
  %205 = getelementptr inbounds nuw i8, ptr %175, i32 32
  %206 = load <4 x i32>, ptr %205, align 1
  %207 = getelementptr inbounds nuw i8, ptr %175, i32 48
  %208 = load <4 x i32>, ptr %207, align 1
  %209 = shufflevector <2 x i64> %202, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %210 = shufflevector <2 x i64> %204, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %211 = xor <4 x i32> %206, %201
  %212 = xor <4 x i32> %208, %203
  %213 = shufflevector <4 x i32> %211, <4 x i32> %212, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %214 = shufflevector <4 x i32> %211, <4 x i32> %212, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %215 = shufflevector <4 x i32> %213, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %216 = zext <2 x i32> %215 to <2 x i64>
  %217 = shufflevector <4 x i32> %214, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %218 = zext <2 x i32> %217 to <2 x i64>
  %219 = mul nuw <2 x i64> %218, %216
  %220 = shufflevector <4 x i32> %213, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %221 = shufflevector <4 x i32> %214, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %222 = zext <2 x i32> %220 to <2 x i64>
  %223 = zext <2 x i32> %221 to <2 x i64>
  %224 = mul nuw <2 x i64> %223, %222
  %225 = add <2 x i64> %171, %209
  %226 = add <2 x i64> %225, %219
  %227 = add <2 x i64> %173, %210
  %228 = add <2 x i64> %227, %224
  %229 = freeze ptr getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i32 121)
  %230 = load <4 x i32>, ptr %57, align 16
  %231 = bitcast <4 x i32> %230 to <2 x i64>
  %232 = load <4 x i32>, ptr %59, align 16
  %233 = bitcast <4 x i32> %232 to <2 x i64>
  %234 = load <4 x i32>, ptr %229, align 1
  %235 = getelementptr inbounds nuw i8, ptr %229, i32 16
  %236 = load <4 x i32>, ptr %235, align 1
  %237 = shufflevector <2 x i64> %231, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %238 = shufflevector <2 x i64> %233, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %239 = xor <4 x i32> %234, %230
  %240 = xor <4 x i32> %236, %232
  %241 = shufflevector <4 x i32> %239, <4 x i32> %240, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %242 = shufflevector <4 x i32> %239, <4 x i32> %240, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %243 = shufflevector <4 x i32> %241, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %244 = zext <2 x i32> %243 to <2 x i64>
  %245 = shufflevector <4 x i32> %242, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %246 = zext <2 x i32> %245 to <2 x i64>
  %247 = mul nuw <2 x i64> %246, %244
  %248 = shufflevector <4 x i32> %241, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %249 = shufflevector <4 x i32> %242, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %250 = zext <2 x i32> %248 to <2 x i64>
  %251 = zext <2 x i32> %249 to <2 x i64>
  %252 = mul nuw <2 x i64> %251, %250
  %253 = add <2 x i64> %88, %123
  %254 = shufflevector <2 x i64> %253, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %255 = add <2 x i64> %254, %82
  %256 = add <2 x i64> %255, %138
  %257 = add <2 x i64> %256, %183
  %258 = add <2 x i64> %257, %193
  %259 = add <2 x i64> %258, %237
  %260 = add <2 x i64> %259, %247
  %261 = add <2 x i64> %200, %238
  %262 = add <2 x i64> %261, %252
  %263 = load <4 x i32>, ptr %61, align 16
  %264 = bitcast <4 x i32> %263 to <2 x i64>
  %265 = load <4 x i32>, ptr %63, align 16
  %266 = bitcast <4 x i32> %265 to <2 x i64>
  %267 = getelementptr inbounds nuw i8, ptr %229, i32 32
  %268 = load <4 x i32>, ptr %267, align 1
  %269 = getelementptr inbounds nuw i8, ptr %229, i32 48
  %270 = load <4 x i32>, ptr %269, align 1
  %271 = shufflevector <2 x i64> %264, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %272 = shufflevector <2 x i64> %266, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %273 = xor <4 x i32> %268, %263
  %274 = xor <4 x i32> %270, %265
  %275 = shufflevector <4 x i32> %273, <4 x i32> %274, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %276 = shufflevector <4 x i32> %273, <4 x i32> %274, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %277 = shufflevector <4 x i32> %275, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %278 = zext <2 x i32> %277 to <2 x i64>
  %279 = shufflevector <4 x i32> %276, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %280 = zext <2 x i32> %279 to <2 x i64>
  %281 = mul nuw <2 x i64> %280, %278
  %282 = shufflevector <4 x i32> %275, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %283 = shufflevector <4 x i32> %276, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %284 = zext <2 x i32> %282 to <2 x i64>
  %285 = zext <2 x i32> %283 to <2 x i64>
  %286 = mul nuw <2 x i64> %285, %284
  %287 = add <2 x i64> %226, %271
  %288 = add <2 x i64> %287, %281
  %289 = add <2 x i64> %228, %272
  %290 = add <2 x i64> %289, %286
  %291 = extractelement <2 x i64> %260, i64 0
  %292 = extractelement <2 x i64> %260, i64 1
  %293 = xor i64 %291, 7914194659941938988
  %294 = xor i64 %292, -6611157965513653271
  %295 = and i64 %293, 4294967295
  %296 = and i64 %294, 4294967295
  %297 = mul nuw i64 %296, %295
  %298 = lshr i64 %293, 32
  %299 = mul nuw i64 %296, %298
  %300 = lshr i64 %294, 32
  %301 = mul nuw i64 %300, %295
  %302 = mul nuw i64 %300, %298
  %303 = lshr i64 %297, 32
  %304 = and i64 %299, 4294967295
  %305 = add nuw i64 %304, %301
  %306 = add nuw i64 %305, %303
  %307 = lshr i64 %299, 32
  %308 = lshr i64 %306, 32
  %309 = add nuw i64 %307, %302
  %310 = add nuw i64 %309, %308
  %311 = shl i64 %306, 32
  %312 = and i64 %297, 4294967295
  %313 = or disjoint i64 %311, %312
  %314 = xor i64 %313, %310
  %315 = add i64 %314, 3997421333012711168
  %316 = extractelement <2 x i64> %262, i64 0
  %317 = extractelement <2 x i64> %262, i64 1
  %318 = xor i64 %316, -1839215637059881052
  %319 = xor i64 %317, -3433288310154277810
  %320 = and i64 %318, 4294967295
  %321 = and i64 %319, 4294967295
  %322 = mul nuw i64 %321, %320
  %323 = lshr i64 %318, 32
  %324 = mul nuw i64 %321, %323
  %325 = lshr i64 %319, 32
  %326 = mul nuw i64 %325, %320
  %327 = mul nuw i64 %325, %323
  %328 = lshr i64 %322, 32
  %329 = and i64 %324, 4294967295
  %330 = add nuw i64 %329, %326
  %331 = add nuw i64 %330, %328
  %332 = lshr i64 %324, 32
  %333 = lshr i64 %331, 32
  %334 = add nuw i64 %332, %327
  %335 = add nuw i64 %334, %333
  %336 = shl i64 %331, 32
  %337 = and i64 %322, 4294967295
  %338 = or disjoint i64 %336, %337
  %339 = xor i64 %338, %335
  %340 = add i64 %315, %339
  %341 = extractelement <2 x i64> %288, i64 0
  %342 = extractelement <2 x i64> %288, i64 1
  %343 = xor i64 %341, 5046485836271438973
  %344 = xor i64 %342, -8055285457383852172
  %345 = and i64 %343, 4294967295
  %346 = and i64 %344, 4294967295
  %347 = mul nuw i64 %346, %345
  %348 = lshr i64 %343, 32
  %349 = mul nuw i64 %346, %348
  %350 = lshr i64 %344, 32
  %351 = mul nuw i64 %350, %345
  %352 = mul nuw i64 %350, %348
  %353 = lshr i64 %347, 32
  %354 = and i64 %349, 4294967295
  %355 = add nuw i64 %354, %351
  %356 = add nuw i64 %355, %353
  %357 = lshr i64 %349, 32
  %358 = lshr i64 %356, 32
  %359 = add nuw i64 %357, %352
  %360 = add nuw i64 %359, %358
  %361 = shl i64 %356, 32
  %362 = and i64 %347, 4294967295
  %363 = or disjoint i64 %361, %362
  %364 = xor i64 %363, %360
  %365 = add i64 %340, %364
  %366 = extractelement <2 x i64> %290, i64 0
  %367 = extractelement <2 x i64> %290, i64 1
  %368 = xor i64 %366, 5920048007935066598
  %369 = xor i64 %367, 7336514198459093435
  %370 = and i64 %368, 4294967295
  %371 = and i64 %369, 4294967295
  %372 = mul nuw i64 %371, %370
  %373 = lshr i64 %368, 32
  %374 = mul nuw i64 %371, %373
  %375 = lshr i64 %369, 32
  %376 = mul nuw i64 %375, %370
  %377 = mul nuw i64 %375, %373
  %378 = lshr i64 %372, 32
  %379 = and i64 %374, 4294967295
  %380 = add nuw i64 %379, %376
  %381 = add nuw i64 %380, %378
  %382 = lshr i64 %374, 32
  %383 = lshr i64 %381, 32
  %384 = add nuw i64 %382, %377
  %385 = add nuw i64 %384, %383
  %386 = shl i64 %381, 32
  %387 = and i64 %372, 4294967295
  %388 = or disjoint i64 %386, %387
  %389 = xor i64 %388, %385
  %390 = add i64 %365, %389
  %391 = lshr i64 %390, 37
  %392 = xor i64 %391, %390
  %393 = mul i64 %392, 1609587791953885689
  %394 = lshr i64 %393, 32
  %395 = xor i64 %394, %393
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %33) #3
  ret i64 %395
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+bulk-memory,+bulk-memory-opt,+call-indirect-overlong,+multivalue,+mutable-globals,+nontrapping-fptoint,+reference-types,+sign-ext,+simd128" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
