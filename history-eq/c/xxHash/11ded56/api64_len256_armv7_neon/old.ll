; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/11ded56/api64_len256_armv7_neon/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/11ded56/api64_len256_armv7_neon/wrapper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabihf"

; Function Attrs: nofree nounwind memory(argmem: read)
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = trunc i64 %1 to i32
  %4 = lshr i64 %1, 32
  %5 = trunc nuw i64 %4 to i32
  %6 = add i32 %3, -1191285703
  %7 = zext i32 %6 to i64
  %8 = sub i32 597969854, %5
  %9 = zext i32 %8 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or disjoint i64 %10, %7
  %12 = add i32 %5, 2080473388
  %13 = zext i32 %12 to i64
  %14 = sub i32 -148787940, %3
  %15 = zext i32 %14 to i64
  %16 = shl nuw i64 %15, 32
  %17 = or disjoint i64 %16, %13
  %18 = add i32 %3, -556503575
  %19 = zext i32 %18 to i64
  %20 = sub i32 -2087675941, %5
  %21 = zext i32 %20 to i64
  %22 = shl nuw i64 %21, 32
  %23 = or disjoint i64 %22, %19
  %24 = add i32 %5, 1916839076
  %25 = zext i32 %24 to i64
  %26 = sub i32 -1212979425, %3
  %27 = zext i32 %26 to i64
  %28 = shl nuw i64 %27, 32
  %29 = or disjoint i64 %28, %25
  %30 = add i32 %3, -881203634
  %31 = zext i32 %30 to i64
  %32 = sub i32 -859773576, %5
  %33 = zext i32 %32 to i64
  %34 = shl nuw i64 %33, 32
  %35 = or disjoint i64 %34, %31
  %36 = add i32 %5, -2107977603
  %37 = zext i32 %36 to i64
  %38 = sub i32 -855674335, %3
  %39 = zext i32 %38 to i64
  %40 = shl nuw i64 %39, 32
  %41 = or disjoint i64 %40, %37
  %42 = add i32 %3, -1207417228
  %43 = zext i32 %42 to i64
  %44 = sub i32 -146594674, %5
  %45 = zext i32 %44 to i64
  %46 = shl nuw i64 %45, 32
  %47 = or disjoint i64 %46, %43
  %48 = add i32 %5, -533360410
  %49 = zext i32 %48 to i64
  %50 = sub i32 -2126895540, %3
  %51 = zext i32 %50 to i64
  %52 = shl nuw i64 %51, 32
  %53 = or disjoint i64 %52, %49
  %54 = sub i64 0, %1
  %55 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %54, i64 0
  %56 = insertelement <2 x i64> <i64 poison, i64 -7046029288634856825>, i64 %1, i64 0
  %57 = load <4 x i32>, ptr %0, align 4
  %58 = xor <4 x i32> %57, <i32 -1191285703, i32 597969854, i32 2080473388, i32 -148787940>
  %59 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %58) #2
  %60 = bitcast <4 x i32> %57 to <2 x i64>
  %61 = add <2 x i64> %56, %60
  %62 = shufflevector <4 x i32> %59, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %63 = shufflevector <4 x i32> %59, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %64 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %62, <2 x i32> %63)
  %65 = add <2 x i64> %61, %64
  %66 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %67 = load <4 x i32>, ptr %66, align 4
  %68 = xor <4 x i32> %67, <i32 -556503575, i32 -2087675941, i32 1916839076, i32 -1212979425>
  %69 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %68) #2
  %70 = bitcast <4 x i32> %67 to <2 x i64>
  %71 = add <2 x i64> %70, <i64 -4417276706812531889, i64 1609587929392839161>
  %72 = shufflevector <4 x i32> %69, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %73 = shufflevector <4 x i32> %69, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %74 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %72, <2 x i32> %73)
  %75 = add <2 x i64> %71, %74
  %76 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %77 = load <4 x i32>, ptr %76, align 4
  %78 = xor <4 x i32> %77, <i32 -881203634, i32 -859773576, i32 -2107977603, i32 -855674335>
  %79 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %78) #2
  %80 = bitcast <4 x i32> %77 to <2 x i64>
  %81 = add <2 x i64> %80, <i64 -8796714831421723037, i64 2870177450012600261>
  %82 = shufflevector <4 x i32> %79, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %83 = shufflevector <4 x i32> %79, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %84 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %82, <2 x i32> %83)
  %85 = add <2 x i64> %81, %84
  %86 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %87 = load <4 x i32>, ptr %86, align 4
  %88 = xor <4 x i32> %87, <i32 -1207417228, i32 -146594674, i32 -533360410, i32 -2126895540>
  %89 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %88) #2
  %90 = bitcast <4 x i32> %87 to <2 x i64>
  %91 = add <2 x i64> %55, %90
  %92 = shufflevector <4 x i32> %89, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %93 = shufflevector <4 x i32> %89, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %94 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %92, <2 x i32> %93)
  %95 = add <2 x i64> %91, %94
  %96 = getelementptr inbounds nuw i8, ptr %0, i32 64
  %97 = load <4 x i32>, ptr %96, align 4
  %98 = xor <4 x i32> %97, <i32 2080473388, i32 -148787940, i32 -556503575, i32 -2087675941>
  %99 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %98) #2
  %100 = bitcast <4 x i32> %97 to <2 x i64>
  %101 = add <2 x i64> %65, %100
  %102 = shufflevector <4 x i32> %99, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %103 = shufflevector <4 x i32> %99, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %104 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %102, <2 x i32> %103)
  %105 = add <2 x i64> %101, %104
  %106 = getelementptr inbounds nuw i8, ptr %0, i32 80
  %107 = load <4 x i32>, ptr %106, align 4
  %108 = xor <4 x i32> %107, <i32 1916839076, i32 -1212979425, i32 -881203634, i32 -859773576>
  %109 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %108) #2
  %110 = bitcast <4 x i32> %107 to <2 x i64>
  %111 = add <2 x i64> %75, %110
  %112 = shufflevector <4 x i32> %109, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %113 = shufflevector <4 x i32> %109, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %114 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %112, <2 x i32> %113)
  %115 = add <2 x i64> %111, %114
  %116 = getelementptr inbounds nuw i8, ptr %0, i32 96
  %117 = load <4 x i32>, ptr %116, align 4
  %118 = xor <4 x i32> %117, <i32 -2107977603, i32 -855674335, i32 -1207417228, i32 -146594674>
  %119 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %118) #2
  %120 = bitcast <4 x i32> %117 to <2 x i64>
  %121 = add <2 x i64> %85, %120
  %122 = shufflevector <4 x i32> %119, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %123 = shufflevector <4 x i32> %119, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %124 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %122, <2 x i32> %123)
  %125 = add <2 x i64> %121, %124
  %126 = getelementptr inbounds nuw i8, ptr %0, i32 112
  %127 = load <4 x i32>, ptr %126, align 4
  %128 = xor <4 x i32> %127, <i32 -533360410, i32 -2126895540, i32 1009275579, i32 -1849491253>
  %129 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %128) #2
  %130 = bitcast <4 x i32> %127 to <2 x i64>
  %131 = add <2 x i64> %95, %130
  %132 = shufflevector <4 x i32> %129, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %133 = shufflevector <4 x i32> %129, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %134 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %132, <2 x i32> %133)
  %135 = add <2 x i64> %131, %134
  %136 = getelementptr inbounds nuw i8, ptr %0, i32 128
  %137 = load <4 x i32>, ptr %136, align 4
  %138 = xor <4 x i32> %137, <i32 -556503575, i32 -2087675941, i32 1916839076, i32 -1212979425>
  %139 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %138) #2
  %140 = bitcast <4 x i32> %137 to <2 x i64>
  %141 = add <2 x i64> %105, %140
  %142 = shufflevector <4 x i32> %139, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %143 = shufflevector <4 x i32> %139, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %144 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %142, <2 x i32> %143)
  %145 = add <2 x i64> %141, %144
  %146 = getelementptr inbounds nuw i8, ptr %0, i32 144
  %147 = load <4 x i32>, ptr %146, align 4
  %148 = xor <4 x i32> %147, <i32 -881203634, i32 -859773576, i32 -2107977603, i32 -855674335>
  %149 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %148) #2
  %150 = bitcast <4 x i32> %147 to <2 x i64>
  %151 = add <2 x i64> %115, %150
  %152 = shufflevector <4 x i32> %149, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %153 = shufflevector <4 x i32> %149, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %154 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %152, <2 x i32> %153)
  %155 = add <2 x i64> %151, %154
  %156 = getelementptr inbounds nuw i8, ptr %0, i32 160
  %157 = load <4 x i32>, ptr %156, align 4
  %158 = xor <4 x i32> %157, <i32 -1207417228, i32 -146594674, i32 -533360410, i32 -2126895540>
  %159 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %158) #2
  %160 = bitcast <4 x i32> %157 to <2 x i64>
  %161 = add <2 x i64> %125, %160
  %162 = shufflevector <4 x i32> %159, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %163 = shufflevector <4 x i32> %159, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %164 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %162, <2 x i32> %163)
  %165 = add <2 x i64> %161, %164
  %166 = getelementptr inbounds nuw i8, ptr %0, i32 176
  %167 = load <4 x i32>, ptr %166, align 4
  %168 = xor <4 x i32> %167, <i32 1009275579, i32 -1849491253, i32 -1999608437, i32 458436259>
  %169 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %168) #2
  %170 = bitcast <4 x i32> %167 to <2 x i64>
  %171 = add <2 x i64> %135, %170
  %172 = shufflevector <4 x i32> %169, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %173 = shufflevector <4 x i32> %169, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %174 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %172, <2 x i32> %173)
  %175 = add <2 x i64> %171, %174
  %176 = getelementptr inbounds nuw i8, ptr %0, i32 192
  %177 = load <4 x i32>, ptr %176, align 4
  %178 = xor <4 x i32> %177, <i32 1916839076, i32 -1212979425, i32 -881203634, i32 -859773576>
  %179 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %178) #2
  %180 = bitcast <4 x i32> %177 to <2 x i64>
  %181 = add <2 x i64> %145, %180
  %182 = shufflevector <4 x i32> %179, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %183 = shufflevector <4 x i32> %179, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %184 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %182, <2 x i32> %183)
  %185 = add <2 x i64> %181, %184
  %186 = getelementptr inbounds nuw i8, ptr %0, i32 208
  %187 = load <4 x i32>, ptr %186, align 4
  %188 = xor <4 x i32> %187, <i32 -2107977603, i32 -855674335, i32 -1207417228, i32 -146594674>
  %189 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %188) #2
  %190 = bitcast <4 x i32> %187 to <2 x i64>
  %191 = add <2 x i64> %155, %190
  %192 = shufflevector <4 x i32> %189, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %193 = shufflevector <4 x i32> %189, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %194 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %192, <2 x i32> %193)
  %195 = add <2 x i64> %191, %194
  %196 = getelementptr inbounds nuw i8, ptr %0, i32 224
  %197 = load <4 x i32>, ptr %196, align 4
  %198 = xor <4 x i32> %197, <i32 -533360410, i32 -2126895540, i32 1009275579, i32 -1849491253>
  %199 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %198) #2
  %200 = bitcast <4 x i32> %197 to <2 x i64>
  %201 = add <2 x i64> %165, %200
  %202 = shufflevector <4 x i32> %199, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %203 = shufflevector <4 x i32> %199, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %204 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %202, <2 x i32> %203)
  %205 = add <2 x i64> %201, %204
  %206 = getelementptr inbounds nuw i8, ptr %0, i32 240
  %207 = load <4 x i32>, ptr %206, align 4
  %208 = xor <4 x i32> %207, <i32 -1999608437, i32 458436259, i32 1902397591, i32 -1576142514>
  %209 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %208) #2
  %210 = bitcast <4 x i32> %207 to <2 x i64>
  %211 = add <2 x i64> %175, %210
  %212 = shufflevector <4 x i32> %209, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %213 = shufflevector <4 x i32> %209, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %214 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %212, <2 x i32> %213)
  %215 = add <2 x i64> %211, %214
  %216 = extractelement <2 x i64> %185, i64 0
  %217 = xor i64 %216, %11
  %218 = extractelement <2 x i64> %185, i64 1
  %219 = xor i64 %218, %17
  %220 = lshr i64 %217, 32
  %221 = trunc nuw i64 %220 to i32
  %222 = trunc i64 %217 to i32
  %223 = lshr i64 %219, 32
  %224 = trunc nuw i64 %223 to i32
  %225 = trunc i64 %219 to i32
  %226 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %222, i32 %225) #2
  %227 = extractvalue { i32, i32 } %226, 0
  %228 = extractvalue { i32, i32 } %226, 1
  %229 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %221, i32 %225, i32 0, i32 %228) #2
  %230 = extractvalue { i32, i32 } %229, 0
  %231 = extractvalue { i32, i32 } %229, 1
  %232 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %222, i32 %224, i32 %230, i32 0) #2
  %233 = extractvalue { i32, i32 } %232, 0
  %234 = extractvalue { i32, i32 } %232, 1
  %235 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %221, i32 %224, i32 %231, i32 %234) #2
  %236 = extractvalue { i32, i32 } %235, 0
  %237 = extractvalue { i32, i32 } %235, 1
  %238 = zext i32 %236 to i64
  %239 = zext i32 %237 to i64
  %240 = shl nuw i64 %239, 32
  %241 = or disjoint i64 %240, %238
  %242 = zext i32 %227 to i64
  %243 = zext i32 %233 to i64
  %244 = shl nuw i64 %243, 32
  %245 = or disjoint i64 %244, %242
  %246 = xor i64 %241, %245
  %247 = add i64 %246, 3997421333012711168
  %248 = extractelement <2 x i64> %195, i64 0
  %249 = xor i64 %248, %23
  %250 = extractelement <2 x i64> %195, i64 1
  %251 = xor i64 %250, %29
  %252 = lshr i64 %249, 32
  %253 = trunc nuw i64 %252 to i32
  %254 = trunc i64 %249 to i32
  %255 = lshr i64 %251, 32
  %256 = trunc nuw i64 %255 to i32
  %257 = trunc i64 %251 to i32
  %258 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %254, i32 %257) #2
  %259 = extractvalue { i32, i32 } %258, 0
  %260 = extractvalue { i32, i32 } %258, 1
  %261 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %253, i32 %257, i32 0, i32 %260) #2
  %262 = extractvalue { i32, i32 } %261, 0
  %263 = extractvalue { i32, i32 } %261, 1
  %264 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %254, i32 %256, i32 %262, i32 0) #2
  %265 = extractvalue { i32, i32 } %264, 0
  %266 = extractvalue { i32, i32 } %264, 1
  %267 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %253, i32 %256, i32 %263, i32 %266) #2
  %268 = extractvalue { i32, i32 } %267, 0
  %269 = extractvalue { i32, i32 } %267, 1
  %270 = zext i32 %268 to i64
  %271 = zext i32 %269 to i64
  %272 = shl nuw i64 %271, 32
  %273 = or disjoint i64 %272, %270
  %274 = zext i32 %259 to i64
  %275 = zext i32 %265 to i64
  %276 = shl nuw i64 %275, 32
  %277 = or disjoint i64 %276, %274
  %278 = xor i64 %273, %277
  %279 = add i64 %247, %278
  %280 = extractelement <2 x i64> %205, i64 0
  %281 = xor i64 %280, %35
  %282 = extractelement <2 x i64> %205, i64 1
  %283 = xor i64 %282, %41
  %284 = lshr i64 %281, 32
  %285 = trunc nuw i64 %284 to i32
  %286 = trunc i64 %281 to i32
  %287 = lshr i64 %283, 32
  %288 = trunc nuw i64 %287 to i32
  %289 = trunc i64 %283 to i32
  %290 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %286, i32 %289) #2
  %291 = extractvalue { i32, i32 } %290, 0
  %292 = extractvalue { i32, i32 } %290, 1
  %293 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %285, i32 %289, i32 0, i32 %292) #2
  %294 = extractvalue { i32, i32 } %293, 0
  %295 = extractvalue { i32, i32 } %293, 1
  %296 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %286, i32 %288, i32 %294, i32 0) #2
  %297 = extractvalue { i32, i32 } %296, 0
  %298 = extractvalue { i32, i32 } %296, 1
  %299 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %285, i32 %288, i32 %295, i32 %298) #2
  %300 = extractvalue { i32, i32 } %299, 0
  %301 = extractvalue { i32, i32 } %299, 1
  %302 = zext i32 %300 to i64
  %303 = zext i32 %301 to i64
  %304 = shl nuw i64 %303, 32
  %305 = or disjoint i64 %304, %302
  %306 = zext i32 %291 to i64
  %307 = zext i32 %297 to i64
  %308 = shl nuw i64 %307, 32
  %309 = or disjoint i64 %308, %306
  %310 = xor i64 %305, %309
  %311 = add i64 %279, %310
  %312 = extractelement <2 x i64> %215, i64 0
  %313 = xor i64 %312, %47
  %314 = extractelement <2 x i64> %215, i64 1
  %315 = xor i64 %314, %53
  %316 = lshr i64 %313, 32
  %317 = trunc nuw i64 %316 to i32
  %318 = trunc i64 %313 to i32
  %319 = lshr i64 %315, 32
  %320 = trunc nuw i64 %319 to i32
  %321 = trunc i64 %315 to i32
  %322 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %318, i32 %321) #2
  %323 = extractvalue { i32, i32 } %322, 0
  %324 = extractvalue { i32, i32 } %322, 1
  %325 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %317, i32 %321, i32 0, i32 %324) #2
  %326 = extractvalue { i32, i32 } %325, 0
  %327 = extractvalue { i32, i32 } %325, 1
  %328 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %318, i32 %320, i32 %326, i32 0) #2
  %329 = extractvalue { i32, i32 } %328, 0
  %330 = extractvalue { i32, i32 } %328, 1
  %331 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %317, i32 %320, i32 %327, i32 %330) #2
  %332 = extractvalue { i32, i32 } %331, 0
  %333 = extractvalue { i32, i32 } %331, 1
  %334 = zext i32 %332 to i64
  %335 = zext i32 %333 to i64
  %336 = shl nuw i64 %335, 32
  %337 = or disjoint i64 %336, %334
  %338 = zext i32 %323 to i64
  %339 = zext i32 %329 to i64
  %340 = shl nuw i64 %339, 32
  %341 = or disjoint i64 %340, %338
  %342 = xor i64 %337, %341
  %343 = add i64 %311, %342
  %344 = lshr i64 %343, 37
  %345 = xor i64 %344, %343
  %346 = mul i64 %345, 1609587929392839161
  %347 = lshr i64 %346, 32
  %348 = xor i64 %347, %346
  ret i64 %348
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32>, <2 x i32>) #1

attributes #0 = { nofree nounwind memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 62325}
!6 = !{i64 54432}
!7 = !{i64 54641}
!8 = !{i64 54875}
!9 = !{i64 55084}
