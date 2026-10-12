; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c9a7470/wrap_wasm_api.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/c9a7470/wrap_wasm_api.c"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-i128:128-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-unknown"

@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64

; Function Attrs: nounwind memory(read, inaccessiblemem: readwrite)
define hidden i64 @target_xxh3_len256(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24, i64 noundef %25, i64 noundef %26, i64 noundef %27, i64 noundef %28, i64 noundef %29, i64 noundef %30, i64 noundef %31) local_unnamed_addr #0 {
  %33 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %33) #5
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
  %66 = tail call ptr asm "", "=r,0"(ptr nonnull readonly @XXH3_kSecret) #6
  %67 = load <4 x i32>, ptr %33, align 16
  %68 = bitcast <4 x i32> %67 to <2 x i64>
  %69 = load <4 x i32>, ptr %35, align 16
  %70 = bitcast <4 x i32> %69 to <2 x i64>
  %71 = load <4 x i32>, ptr %66, align 1
  %72 = getelementptr inbounds nuw i8, ptr %66, i32 16
  %73 = load <4 x i32>, ptr %72, align 1
  %74 = xor <4 x i32> %71, %67
  %75 = xor <4 x i32> %73, %69
  %76 = bitcast <4 x i32> %74 to <16 x i8>
  %77 = bitcast <4 x i32> %75 to <16 x i8>
  %78 = tail call <16 x i8> @llvm.wasm.shuffle(<16 x i8> %76, <16 x i8> %77, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27)
  %79 = bitcast <16 x i8> %78 to <4 x i32>
  %80 = tail call <16 x i8> @llvm.wasm.shuffle(<16 x i8> %76, <16 x i8> %77, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31)
  %81 = bitcast <16 x i8> %80 to <4 x i32>
  %82 = shufflevector <4 x i32> %79, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %83 = zext <2 x i32> %82 to <2 x i64>
  %84 = shufflevector <4 x i32> %81, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %85 = zext <2 x i32> %84 to <2 x i64>
  %86 = mul nuw <2 x i64> %85, %83
  %87 = shufflevector <4 x i32> %79, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %88 = shufflevector <4 x i32> %81, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %89 = zext <2 x i32> %87 to <2 x i64>
  %90 = zext <2 x i32> %88 to <2 x i64>
  %91 = mul nuw <2 x i64> %90, %89
  %92 = add <2 x i64> %68, <i64 -7046029288634856825, i64 3266489917>
  %93 = shufflevector <2 x i64> %92, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %94 = add <2 x i64> %86, %93
  %95 = add <2 x i64> %70, <i64 1609587929392839161, i64 -4417276706812531889>
  %96 = shufflevector <2 x i64> %95, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %97 = add <2 x i64> %91, %96
  %98 = load <4 x i32>, ptr %37, align 16
  %99 = bitcast <4 x i32> %98 to <2 x i64>
  %100 = load <4 x i32>, ptr %39, align 16
  %101 = bitcast <4 x i32> %100 to <2 x i64>
  %102 = getelementptr inbounds nuw i8, ptr %66, i32 32
  %103 = load <4 x i32>, ptr %102, align 1
  %104 = getelementptr inbounds nuw i8, ptr %66, i32 48
  %105 = load <4 x i32>, ptr %104, align 1
  %106 = xor <4 x i32> %103, %98
  %107 = xor <4 x i32> %105, %100
  %108 = bitcast <4 x i32> %106 to <16 x i8>
  %109 = bitcast <4 x i32> %107 to <16 x i8>
  %110 = tail call <16 x i8> @llvm.wasm.shuffle(<16 x i8> %108, <16 x i8> %109, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27)
  %111 = bitcast <16 x i8> %110 to <4 x i32>
  %112 = tail call <16 x i8> @llvm.wasm.shuffle(<16 x i8> %108, <16 x i8> %109, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31)
  %113 = bitcast <16 x i8> %112 to <4 x i32>
  %114 = shufflevector <4 x i32> %111, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %115 = zext <2 x i32> %114 to <2 x i64>
  %116 = shufflevector <4 x i32> %113, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %117 = zext <2 x i32> %116 to <2 x i64>
  %118 = mul nuw <2 x i64> %117, %115
  %119 = shufflevector <4 x i32> %111, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %120 = shufflevector <4 x i32> %113, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %121 = zext <2 x i32> %119 to <2 x i64>
  %122 = zext <2 x i32> %120 to <2 x i64>
  %123 = mul nuw <2 x i64> %122, %121
  %124 = add <2 x i64> %99, <i64 2246822519, i64 -8796714831421723037>
  %125 = shufflevector <2 x i64> %124, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %126 = add <2 x i64> %118, %125
  %127 = add <2 x i64> %101, <i64 2654435761, i64 2870177450012600261>
  %128 = shufflevector <2 x i64> %127, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %129 = add <2 x i64> %123, %128
  %130 = getelementptr inbounds nuw i8, ptr %33, i32 384
  call void @llvm.prefetch.p0(ptr nonnull readonly %130, i32 0, i32 3, i32 1)
  %131 = tail call ptr asm "", "=r,0"(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i32 8)) #6
  %132 = load <4 x i32>, ptr %41, align 16
  %133 = bitcast <4 x i32> %132 to <2 x i64>
  %134 = load <4 x i32>, ptr %43, align 16
  %135 = bitcast <4 x i32> %134 to <2 x i64>
  %136 = load <4 x i32>, ptr %131, align 1
  %137 = getelementptr inbounds nuw i8, ptr %131, i32 16
  %138 = load <4 x i32>, ptr %137, align 1
  %139 = shufflevector <2 x i64> %133, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %140 = shufflevector <2 x i64> %135, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %141 = xor <4 x i32> %136, %132
  %142 = xor <4 x i32> %138, %134
  %143 = bitcast <4 x i32> %141 to <16 x i8>
  %144 = bitcast <4 x i32> %142 to <16 x i8>
  %145 = tail call <16 x i8> @llvm.wasm.shuffle(<16 x i8> %143, <16 x i8> %144, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27)
  %146 = bitcast <16 x i8> %145 to <4 x i32>
  %147 = tail call <16 x i8> @llvm.wasm.shuffle(<16 x i8> %143, <16 x i8> %144, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31)
  %148 = bitcast <16 x i8> %147 to <4 x i32>
  %149 = shufflevector <4 x i32> %146, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %150 = zext <2 x i32> %149 to <2 x i64>
  %151 = shufflevector <4 x i32> %148, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %152 = zext <2 x i32> %151 to <2 x i64>
  %153 = mul nuw <2 x i64> %152, %150
  %154 = shufflevector <4 x i32> %146, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %155 = shufflevector <4 x i32> %148, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %156 = zext <2 x i32> %154 to <2 x i64>
  %157 = zext <2 x i32> %155 to <2 x i64>
  %158 = mul nuw <2 x i64> %157, %156
  %159 = add <2 x i64> %94, %139
  %160 = add <2 x i64> %159, %153
  %161 = add <2 x i64> %97, %140
  %162 = add <2 x i64> %161, %158
  %163 = load <4 x i32>, ptr %45, align 16
  %164 = bitcast <4 x i32> %163 to <2 x i64>
  %165 = load <4 x i32>, ptr %47, align 16
  %166 = bitcast <4 x i32> %165 to <2 x i64>
  %167 = getelementptr inbounds nuw i8, ptr %131, i32 32
  %168 = load <4 x i32>, ptr %167, align 1
  %169 = getelementptr inbounds nuw i8, ptr %131, i32 48
  %170 = load <4 x i32>, ptr %169, align 1
  %171 = shufflevector <2 x i64> %164, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %172 = shufflevector <2 x i64> %166, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %173 = xor <4 x i32> %168, %163
  %174 = xor <4 x i32> %170, %165
  %175 = bitcast <4 x i32> %173 to <16 x i8>
  %176 = bitcast <4 x i32> %174 to <16 x i8>
  %177 = tail call <16 x i8> @llvm.wasm.shuffle(<16 x i8> %175, <16 x i8> %176, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27)
  %178 = bitcast <16 x i8> %177 to <4 x i32>
  %179 = tail call <16 x i8> @llvm.wasm.shuffle(<16 x i8> %175, <16 x i8> %176, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31)
  %180 = bitcast <16 x i8> %179 to <4 x i32>
  %181 = shufflevector <4 x i32> %178, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %182 = zext <2 x i32> %181 to <2 x i64>
  %183 = shufflevector <4 x i32> %180, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %184 = zext <2 x i32> %183 to <2 x i64>
  %185 = mul nuw <2 x i64> %184, %182
  %186 = shufflevector <4 x i32> %178, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %187 = shufflevector <4 x i32> %180, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %188 = zext <2 x i32> %186 to <2 x i64>
  %189 = zext <2 x i32> %187 to <2 x i64>
  %190 = mul nuw <2 x i64> %189, %188
  %191 = add <2 x i64> %126, %171
  %192 = add <2 x i64> %191, %185
  %193 = add <2 x i64> %129, %172
  %194 = add <2 x i64> %193, %190
  %195 = getelementptr inbounds nuw i8, ptr %33, i32 448
  call void @llvm.prefetch.p0(ptr nonnull readonly %195, i32 0, i32 3, i32 1)
  %196 = tail call ptr asm "", "=r,0"(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i32 16)) #6
  %197 = load <4 x i32>, ptr %49, align 16
  %198 = bitcast <4 x i32> %197 to <2 x i64>
  %199 = load <4 x i32>, ptr %51, align 16
  %200 = bitcast <4 x i32> %199 to <2 x i64>
  %201 = load <4 x i32>, ptr %196, align 1
  %202 = getelementptr inbounds nuw i8, ptr %196, i32 16
  %203 = load <4 x i32>, ptr %202, align 1
  %204 = shufflevector <2 x i64> %198, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %205 = shufflevector <2 x i64> %200, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %206 = xor <4 x i32> %201, %197
  %207 = xor <4 x i32> %203, %199
  %208 = bitcast <4 x i32> %206 to <16 x i8>
  %209 = bitcast <4 x i32> %207 to <16 x i8>
  %210 = tail call <16 x i8> @llvm.wasm.shuffle(<16 x i8> %208, <16 x i8> %209, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27)
  %211 = bitcast <16 x i8> %210 to <4 x i32>
  %212 = tail call <16 x i8> @llvm.wasm.shuffle(<16 x i8> %208, <16 x i8> %209, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31)
  %213 = bitcast <16 x i8> %212 to <4 x i32>
  %214 = shufflevector <4 x i32> %211, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %215 = zext <2 x i32> %214 to <2 x i64>
  %216 = shufflevector <4 x i32> %213, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %217 = zext <2 x i32> %216 to <2 x i64>
  %218 = mul nuw <2 x i64> %217, %215
  %219 = shufflevector <4 x i32> %211, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %220 = shufflevector <4 x i32> %213, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %221 = zext <2 x i32> %219 to <2 x i64>
  %222 = zext <2 x i32> %220 to <2 x i64>
  %223 = mul nuw <2 x i64> %222, %221
  %224 = add <2 x i64> %160, %204
  %225 = add <2 x i64> %224, %218
  %226 = add <2 x i64> %162, %205
  %227 = add <2 x i64> %226, %223
  %228 = load <4 x i32>, ptr %53, align 16
  %229 = bitcast <4 x i32> %228 to <2 x i64>
  %230 = load <4 x i32>, ptr %55, align 16
  %231 = bitcast <4 x i32> %230 to <2 x i64>
  %232 = getelementptr inbounds nuw i8, ptr %196, i32 32
  %233 = load <4 x i32>, ptr %232, align 1
  %234 = getelementptr inbounds nuw i8, ptr %196, i32 48
  %235 = load <4 x i32>, ptr %234, align 1
  %236 = shufflevector <2 x i64> %229, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %237 = shufflevector <2 x i64> %231, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %238 = xor <4 x i32> %233, %228
  %239 = xor <4 x i32> %235, %230
  %240 = bitcast <4 x i32> %238 to <16 x i8>
  %241 = bitcast <4 x i32> %239 to <16 x i8>
  %242 = tail call <16 x i8> @llvm.wasm.shuffle(<16 x i8> %240, <16 x i8> %241, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27)
  %243 = bitcast <16 x i8> %242 to <4 x i32>
  %244 = tail call <16 x i8> @llvm.wasm.shuffle(<16 x i8> %240, <16 x i8> %241, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31)
  %245 = bitcast <16 x i8> %244 to <4 x i32>
  %246 = shufflevector <4 x i32> %243, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %247 = zext <2 x i32> %246 to <2 x i64>
  %248 = shufflevector <4 x i32> %245, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %249 = zext <2 x i32> %248 to <2 x i64>
  %250 = mul nuw <2 x i64> %249, %247
  %251 = shufflevector <4 x i32> %243, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %252 = shufflevector <4 x i32> %245, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %253 = zext <2 x i32> %251 to <2 x i64>
  %254 = zext <2 x i32> %252 to <2 x i64>
  %255 = mul nuw <2 x i64> %254, %253
  %256 = add <2 x i64> %192, %236
  %257 = add <2 x i64> %256, %250
  %258 = add <2 x i64> %194, %237
  %259 = add <2 x i64> %258, %255
  %260 = tail call ptr asm "", "=r,0"(ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @XXH3_kSecret, i32 121)) #6
  %261 = load <4 x i32>, ptr %57, align 16
  %262 = bitcast <4 x i32> %261 to <2 x i64>
  %263 = load <4 x i32>, ptr %59, align 16
  %264 = bitcast <4 x i32> %263 to <2 x i64>
  %265 = load <4 x i32>, ptr %260, align 1
  %266 = getelementptr inbounds nuw i8, ptr %260, i32 16
  %267 = load <4 x i32>, ptr %266, align 1
  %268 = shufflevector <2 x i64> %262, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %269 = shufflevector <2 x i64> %264, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %270 = xor <4 x i32> %265, %261
  %271 = xor <4 x i32> %267, %263
  %272 = bitcast <4 x i32> %270 to <16 x i8>
  %273 = bitcast <4 x i32> %271 to <16 x i8>
  %274 = tail call <16 x i8> @llvm.wasm.shuffle(<16 x i8> %272, <16 x i8> %273, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27)
  %275 = bitcast <16 x i8> %274 to <4 x i32>
  %276 = tail call <16 x i8> @llvm.wasm.shuffle(<16 x i8> %272, <16 x i8> %273, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31)
  %277 = bitcast <16 x i8> %276 to <4 x i32>
  %278 = shufflevector <4 x i32> %275, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %279 = zext <2 x i32> %278 to <2 x i64>
  %280 = shufflevector <4 x i32> %277, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %281 = zext <2 x i32> %280 to <2 x i64>
  %282 = mul nuw <2 x i64> %281, %279
  %283 = shufflevector <4 x i32> %275, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %284 = shufflevector <4 x i32> %277, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %285 = zext <2 x i32> %283 to <2 x i64>
  %286 = zext <2 x i32> %284 to <2 x i64>
  %287 = mul nuw <2 x i64> %286, %285
  %288 = add <2 x i64> %225, %268
  %289 = add <2 x i64> %288, %282
  %290 = add <2 x i64> %227, %269
  %291 = add <2 x i64> %290, %287
  %292 = load <4 x i32>, ptr %61, align 16
  %293 = bitcast <4 x i32> %292 to <2 x i64>
  %294 = load <4 x i32>, ptr %63, align 16
  %295 = bitcast <4 x i32> %294 to <2 x i64>
  %296 = getelementptr inbounds nuw i8, ptr %260, i32 32
  %297 = load <4 x i32>, ptr %296, align 1
  %298 = getelementptr inbounds nuw i8, ptr %260, i32 48
  %299 = load <4 x i32>, ptr %298, align 1
  %300 = shufflevector <2 x i64> %293, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %301 = shufflevector <2 x i64> %295, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %302 = xor <4 x i32> %297, %292
  %303 = xor <4 x i32> %299, %294
  %304 = bitcast <4 x i32> %302 to <16 x i8>
  %305 = bitcast <4 x i32> %303 to <16 x i8>
  %306 = tail call <16 x i8> @llvm.wasm.shuffle(<16 x i8> %304, <16 x i8> %305, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27)
  %307 = bitcast <16 x i8> %306 to <4 x i32>
  %308 = tail call <16 x i8> @llvm.wasm.shuffle(<16 x i8> %304, <16 x i8> %305, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31)
  %309 = bitcast <16 x i8> %308 to <4 x i32>
  %310 = shufflevector <4 x i32> %307, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %311 = zext <2 x i32> %310 to <2 x i64>
  %312 = shufflevector <4 x i32> %309, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %313 = zext <2 x i32> %312 to <2 x i64>
  %314 = mul nuw <2 x i64> %313, %311
  %315 = shufflevector <4 x i32> %307, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %316 = shufflevector <4 x i32> %309, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %317 = zext <2 x i32> %315 to <2 x i64>
  %318 = zext <2 x i32> %316 to <2 x i64>
  %319 = mul nuw <2 x i64> %318, %317
  %320 = add <2 x i64> %257, %300
  %321 = add <2 x i64> %320, %314
  %322 = add <2 x i64> %259, %301
  %323 = add <2 x i64> %322, %319
  %324 = extractelement <2 x i64> %289, i64 0
  %325 = extractelement <2 x i64> %289, i64 1
  %326 = xor i64 %324, 7914194659941938988
  %327 = xor i64 %325, -6611157965513653271
  %328 = and i64 %326, 4294967295
  %329 = and i64 %327, 4294967295
  %330 = mul nuw i64 %329, %328
  %331 = lshr i64 %326, 32
  %332 = mul nuw i64 %329, %331
  %333 = lshr i64 %327, 32
  %334 = mul nuw i64 %333, %328
  %335 = mul nuw i64 %333, %331
  %336 = lshr i64 %330, 32
  %337 = and i64 %332, 4294967295
  %338 = add nuw i64 %337, %334
  %339 = add nuw i64 %338, %336
  %340 = lshr i64 %332, 32
  %341 = lshr i64 %339, 32
  %342 = add nuw i64 %340, %335
  %343 = add nuw i64 %342, %341
  %344 = shl i64 %339, 32
  %345 = and i64 %330, 4294967295
  %346 = or disjoint i64 %344, %345
  %347 = xor i64 %346, %343
  %348 = add i64 %347, 3997421333012711168
  %349 = extractelement <2 x i64> %291, i64 0
  %350 = extractelement <2 x i64> %291, i64 1
  %351 = xor i64 %349, -1839215637059881052
  %352 = xor i64 %350, -3433288310154277810
  %353 = and i64 %351, 4294967295
  %354 = and i64 %352, 4294967295
  %355 = mul nuw i64 %354, %353
  %356 = lshr i64 %351, 32
  %357 = mul nuw i64 %354, %356
  %358 = lshr i64 %352, 32
  %359 = mul nuw i64 %358, %353
  %360 = mul nuw i64 %358, %356
  %361 = lshr i64 %355, 32
  %362 = and i64 %357, 4294967295
  %363 = add nuw i64 %362, %359
  %364 = add nuw i64 %363, %361
  %365 = lshr i64 %357, 32
  %366 = lshr i64 %364, 32
  %367 = add nuw i64 %365, %360
  %368 = add nuw i64 %367, %366
  %369 = shl i64 %364, 32
  %370 = and i64 %355, 4294967295
  %371 = or disjoint i64 %369, %370
  %372 = xor i64 %371, %368
  %373 = add i64 %348, %372
  %374 = extractelement <2 x i64> %321, i64 0
  %375 = extractelement <2 x i64> %321, i64 1
  %376 = xor i64 %374, 5046485836271438973
  %377 = xor i64 %375, -8055285457383852172
  %378 = and i64 %376, 4294967295
  %379 = and i64 %377, 4294967295
  %380 = mul nuw i64 %379, %378
  %381 = lshr i64 %376, 32
  %382 = mul nuw i64 %379, %381
  %383 = lshr i64 %377, 32
  %384 = mul nuw i64 %383, %378
  %385 = mul nuw i64 %383, %381
  %386 = lshr i64 %380, 32
  %387 = and i64 %382, 4294967295
  %388 = add nuw i64 %387, %384
  %389 = add nuw i64 %388, %386
  %390 = lshr i64 %382, 32
  %391 = lshr i64 %389, 32
  %392 = add nuw i64 %390, %385
  %393 = add nuw i64 %392, %391
  %394 = shl i64 %389, 32
  %395 = and i64 %380, 4294967295
  %396 = or disjoint i64 %394, %395
  %397 = xor i64 %396, %393
  %398 = add i64 %373, %397
  %399 = extractelement <2 x i64> %323, i64 0
  %400 = extractelement <2 x i64> %323, i64 1
  %401 = xor i64 %399, 5920048007935066598
  %402 = xor i64 %400, 7336514198459093435
  %403 = and i64 %401, 4294967295
  %404 = and i64 %402, 4294967295
  %405 = mul nuw i64 %404, %403
  %406 = lshr i64 %401, 32
  %407 = mul nuw i64 %404, %406
  %408 = lshr i64 %402, 32
  %409 = mul nuw i64 %408, %403
  %410 = mul nuw i64 %408, %406
  %411 = lshr i64 %405, 32
  %412 = and i64 %407, 4294967295
  %413 = add nuw i64 %412, %409
  %414 = add nuw i64 %413, %411
  %415 = lshr i64 %407, 32
  %416 = lshr i64 %414, 32
  %417 = add nuw i64 %415, %410
  %418 = add nuw i64 %417, %416
  %419 = shl i64 %414, 32
  %420 = and i64 %405, 4294967295
  %421 = or disjoint i64 %419, %420
  %422 = xor i64 %421, %418
  %423 = add i64 %398, %422
  %424 = lshr i64 %423, 37
  %425 = xor i64 %424, %423
  %426 = mul i64 %425, 1609587791953885689
  %427 = lshr i64 %426, 32
  %428 = xor i64 %427, %426
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %33) #5
  ret i64 %428
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.wasm.shuffle(<16 x i8>, <16 x i8>, i32 immarg, i32 immarg, i32 immarg, i32 immarg, i32 immarg, i32 immarg, i32 immarg, i32 immarg, i32 immarg, i32 immarg, i32 immarg, i32 immarg, i32 immarg, i32 immarg, i32 immarg, i32 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly, i32 immarg, i32 immarg, i32 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

attributes #0 = { nounwind memory(read, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+bulk-memory,+bulk-memory-opt,+call-indirect-overlong,+multivalue,+mutable-globals,+nontrapping-fptoint,+reference-types,+sign-ext,+simd128" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { nounwind memory(none) }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!2 = !{!3}
!3 = distinct !{!3, !4, !"XXH3_64bits_internal: argument 0"}
!4 = distinct !{!4, !"XXH3_64bits_internal"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH3_hashLong_64b_default: argument 0"}
!7 = distinct !{!7, !"XXH3_hashLong_64b_default"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"XXH3_hashLong_64b_internal: argument 0"}
!10 = distinct !{!10, !"XXH3_hashLong_64b_internal"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"XXH3_hashLong_internal_loop: argument 1"}
!13 = distinct !{!13, !"XXH3_hashLong_internal_loop"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"XXH3_accumulate_neon: argument 1"}
!16 = distinct !{!16, !"XXH3_accumulate_neon"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"XXH3_accumulate_512_neon: argument 1"}
!19 = distinct !{!19, !"XXH3_accumulate_512_neon"}
!20 = !{i64 2152806193}
!21 = !{!18, !15, !12, !9, !6, !3}
!22 = !{!23, !24, !25, !26, !27}
!23 = distinct !{!23, !19, !"XXH3_accumulate_512_neon: argument 0"}
!24 = distinct !{!24, !19, !"XXH3_accumulate_512_neon: argument 2"}
!25 = distinct !{!25, !16, !"XXH3_accumulate_neon: argument 0"}
!26 = distinct !{!26, !16, !"XXH3_accumulate_neon: argument 2"}
!27 = distinct !{!27, !13, !"XXH3_hashLong_internal_loop: argument 0"}
!28 = !{!29}
!29 = distinct !{!29, !19, !"XXH3_accumulate_512_neon: argument 1:It1"}
!30 = !{!29, !15, !12, !9, !6, !3}
!31 = !{!32}
!32 = distinct !{!32, !19, !"XXH3_accumulate_512_neon: argument 1:It2"}
!33 = !{!32, !15, !12, !9, !6, !3}
!34 = !{!35}
!35 = distinct !{!35, !36, !"XXH3_accumulate_512_neon: argument 1"}
!36 = distinct !{!36, !"XXH3_accumulate_512_neon"}
!37 = !{!35, !12, !9, !6, !3}
!38 = !{!39, !40, !27}
!39 = distinct !{!39, !36, !"XXH3_accumulate_512_neon: argument 0"}
!40 = distinct !{!40, !36, !"XXH3_accumulate_512_neon: argument 2"}
