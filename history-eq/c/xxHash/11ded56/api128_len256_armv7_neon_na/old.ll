; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/11ded56/api128_len256_armv7_neon_na/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/11ded56/api128_len256_armv7_neon_na/wrapper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabihf"

; Function Attrs: nounwind memory(argmem: readwrite)
define dso_local void @target_xxh128(ptr noundef readonly %0, i64 noundef %1, ptr noundef writeonly initializes((0, 16)) %2) local_unnamed_addr #0 {
  %4 = insertelement <2 x i64> <i64 poison, i64 -7046029288634856825>, i64 %1, i64 0
  %5 = sub i64 0, %1
  %6 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %5, i64 0
  %7 = load <4 x i32>, ptr %0, align 4
  %8 = xor <4 x i32> %7, <i32 -1191285703, i32 597969854, i32 2080473388, i32 -148787940>
  %9 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %8) #2
  %10 = bitcast <4 x i32> %7 to <2 x i64>
  %11 = add <2 x i64> %4, %10
  %12 = shufflevector <4 x i32> %9, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %13 = shufflevector <4 x i32> %9, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %14 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %12, <2 x i32> %13)
  %15 = add <2 x i64> %11, %14
  %16 = getelementptr inbounds nuw i8, ptr %0, i32 16
  %17 = load <4 x i32>, ptr %16, align 4
  %18 = xor <4 x i32> %17, <i32 -556503575, i32 -2087675941, i32 1916839076, i32 -1212979425>
  %19 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %18) #2
  %20 = bitcast <4 x i32> %17 to <2 x i64>
  %21 = add <2 x i64> %20, <i64 -4417276706812531889, i64 1609587929392839161>
  %22 = shufflevector <4 x i32> %19, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %23 = shufflevector <4 x i32> %19, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %24 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %22, <2 x i32> %23)
  %25 = add <2 x i64> %21, %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i32 32
  %27 = load <4 x i32>, ptr %26, align 4
  %28 = xor <4 x i32> %27, <i32 -881203634, i32 -859773576, i32 -2107977603, i32 -855674335>
  %29 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %28) #2
  %30 = bitcast <4 x i32> %27 to <2 x i64>
  %31 = add <2 x i64> %30, <i64 -8796714831421723037, i64 2870177450012600261>
  %32 = shufflevector <4 x i32> %29, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %33 = shufflevector <4 x i32> %29, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %34 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %32, <2 x i32> %33)
  %35 = add <2 x i64> %31, %34
  %36 = getelementptr inbounds nuw i8, ptr %0, i32 48
  %37 = load <4 x i32>, ptr %36, align 4
  %38 = xor <4 x i32> %37, <i32 -1207417228, i32 -146594674, i32 -533360410, i32 -2126895540>
  %39 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %38) #2
  %40 = bitcast <4 x i32> %37 to <2 x i64>
  %41 = add <2 x i64> %6, %40
  %42 = shufflevector <4 x i32> %39, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %43 = shufflevector <4 x i32> %39, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %44 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %42, <2 x i32> %43)
  %45 = add <2 x i64> %41, %44
  %46 = getelementptr inbounds nuw i8, ptr %0, i32 64
  %47 = load <4 x i32>, ptr %46, align 4
  %48 = xor <4 x i32> %47, <i32 2080473388, i32 -148787940, i32 -556503575, i32 -2087675941>
  %49 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %48) #2
  %50 = bitcast <4 x i32> %47 to <2 x i64>
  %51 = add <2 x i64> %15, %50
  %52 = shufflevector <4 x i32> %49, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %53 = shufflevector <4 x i32> %49, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %54 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %52, <2 x i32> %53)
  %55 = add <2 x i64> %51, %54
  %56 = getelementptr inbounds nuw i8, ptr %0, i32 80
  %57 = load <4 x i32>, ptr %56, align 4
  %58 = xor <4 x i32> %57, <i32 1916839076, i32 -1212979425, i32 -881203634, i32 -859773576>
  %59 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %58) #2
  %60 = bitcast <4 x i32> %57 to <2 x i64>
  %61 = add <2 x i64> %25, %60
  %62 = shufflevector <4 x i32> %59, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %63 = shufflevector <4 x i32> %59, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %64 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %62, <2 x i32> %63)
  %65 = add <2 x i64> %61, %64
  %66 = getelementptr inbounds nuw i8, ptr %0, i32 96
  %67 = load <4 x i32>, ptr %66, align 4
  %68 = xor <4 x i32> %67, <i32 -2107977603, i32 -855674335, i32 -1207417228, i32 -146594674>
  %69 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %68) #2
  %70 = bitcast <4 x i32> %67 to <2 x i64>
  %71 = add <2 x i64> %35, %70
  %72 = shufflevector <4 x i32> %69, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %73 = shufflevector <4 x i32> %69, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %74 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %72, <2 x i32> %73)
  %75 = add <2 x i64> %71, %74
  %76 = getelementptr inbounds nuw i8, ptr %0, i32 112
  %77 = load <4 x i32>, ptr %76, align 4
  %78 = xor <4 x i32> %77, <i32 -533360410, i32 -2126895540, i32 1009275579, i32 -1849491253>
  %79 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %78) #2
  %80 = bitcast <4 x i32> %77 to <2 x i64>
  %81 = add <2 x i64> %45, %80
  %82 = shufflevector <4 x i32> %79, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %83 = shufflevector <4 x i32> %79, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %84 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %82, <2 x i32> %83)
  %85 = add <2 x i64> %81, %84
  %86 = getelementptr inbounds nuw i8, ptr %0, i32 128
  %87 = load <4 x i32>, ptr %86, align 4
  %88 = xor <4 x i32> %87, <i32 -556503575, i32 -2087675941, i32 1916839076, i32 -1212979425>
  %89 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %88) #2
  %90 = bitcast <4 x i32> %87 to <2 x i64>
  %91 = add <2 x i64> %55, %90
  %92 = shufflevector <4 x i32> %89, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %93 = shufflevector <4 x i32> %89, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %94 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %92, <2 x i32> %93)
  %95 = add <2 x i64> %91, %94
  %96 = getelementptr inbounds nuw i8, ptr %0, i32 144
  %97 = load <4 x i32>, ptr %96, align 4
  %98 = xor <4 x i32> %97, <i32 -881203634, i32 -859773576, i32 -2107977603, i32 -855674335>
  %99 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %98) #2
  %100 = bitcast <4 x i32> %97 to <2 x i64>
  %101 = add <2 x i64> %65, %100
  %102 = shufflevector <4 x i32> %99, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %103 = shufflevector <4 x i32> %99, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %104 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %102, <2 x i32> %103)
  %105 = add <2 x i64> %101, %104
  %106 = getelementptr inbounds nuw i8, ptr %0, i32 160
  %107 = load <4 x i32>, ptr %106, align 4
  %108 = xor <4 x i32> %107, <i32 -1207417228, i32 -146594674, i32 -533360410, i32 -2126895540>
  %109 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %108) #2
  %110 = bitcast <4 x i32> %107 to <2 x i64>
  %111 = add <2 x i64> %75, %110
  %112 = shufflevector <4 x i32> %109, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %113 = shufflevector <4 x i32> %109, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %114 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %112, <2 x i32> %113)
  %115 = add <2 x i64> %111, %114
  %116 = getelementptr inbounds nuw i8, ptr %0, i32 176
  %117 = load <4 x i32>, ptr %116, align 4
  %118 = xor <4 x i32> %117, <i32 1009275579, i32 -1849491253, i32 -1999608437, i32 458436259>
  %119 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %118) #2
  %120 = bitcast <4 x i32> %117 to <2 x i64>
  %121 = add <2 x i64> %85, %120
  %122 = shufflevector <4 x i32> %119, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %123 = shufflevector <4 x i32> %119, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %124 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %122, <2 x i32> %123)
  %125 = add <2 x i64> %121, %124
  %126 = getelementptr inbounds nuw i8, ptr %0, i32 192
  %127 = load <4 x i32>, ptr %126, align 4
  %128 = xor <4 x i32> %127, <i32 1916839076, i32 -1212979425, i32 -881203634, i32 -859773576>
  %129 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %128) #2
  %130 = bitcast <4 x i32> %127 to <2 x i64>
  %131 = add <2 x i64> %95, %130
  %132 = shufflevector <4 x i32> %129, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %133 = shufflevector <4 x i32> %129, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %134 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %132, <2 x i32> %133)
  %135 = add <2 x i64> %131, %134
  %136 = getelementptr inbounds nuw i8, ptr %0, i32 208
  %137 = load <4 x i32>, ptr %136, align 4
  %138 = xor <4 x i32> %137, <i32 -2107977603, i32 -855674335, i32 -1207417228, i32 -146594674>
  %139 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %138) #2
  %140 = bitcast <4 x i32> %137 to <2 x i64>
  %141 = add <2 x i64> %105, %140
  %142 = shufflevector <4 x i32> %139, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %143 = shufflevector <4 x i32> %139, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %144 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %142, <2 x i32> %143)
  %145 = add <2 x i64> %141, %144
  %146 = getelementptr inbounds nuw i8, ptr %0, i32 224
  %147 = load <4 x i32>, ptr %146, align 4
  %148 = xor <4 x i32> %147, <i32 -533360410, i32 -2126895540, i32 1009275579, i32 -1849491253>
  %149 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %148) #2
  %150 = bitcast <4 x i32> %147 to <2 x i64>
  %151 = add <2 x i64> %115, %150
  %152 = shufflevector <4 x i32> %149, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %153 = shufflevector <4 x i32> %149, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %154 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %152, <2 x i32> %153)
  %155 = add <2 x i64> %151, %154
  %156 = getelementptr inbounds nuw i8, ptr %0, i32 240
  %157 = load <4 x i32>, ptr %156, align 4
  %158 = xor <4 x i32> %157, <i32 -1999608437, i32 458436259, i32 1902397591, i32 -1576142514>
  %159 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %158) #2
  %160 = bitcast <4 x i32> %157 to <2 x i64>
  %161 = add <2 x i64> %125, %160
  %162 = shufflevector <4 x i32> %159, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %163 = shufflevector <4 x i32> %159, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %164 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %162, <2 x i32> %163)
  %165 = add <2 x i64> %161, %164
  %166 = extractelement <2 x i64> %135, i64 0
  %167 = xor i64 %166, 2568260970027576377
  %168 = extractelement <2 x i64> %135, i64 1
  %169 = xor i64 %168, -639039334258736852
  %170 = lshr i64 %167, 32
  %171 = trunc nuw i64 %170 to i32
  %172 = trunc i64 %167 to i32
  %173 = lshr i64 %169, 32
  %174 = trunc nuw i64 %173 to i32
  %175 = trunc i64 %169 to i32
  %176 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %172, i32 %175) #2
  %177 = extractvalue { i32, i32 } %176, 0
  %178 = extractvalue { i32, i32 } %176, 1
  %179 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %171, i32 %175, i32 0, i32 %178) #2
  %180 = extractvalue { i32, i32 } %179, 0
  %181 = extractvalue { i32, i32 } %179, 1
  %182 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %172, i32 %174, i32 %180, i32 0) #2
  %183 = extractvalue { i32, i32 } %182, 0
  %184 = extractvalue { i32, i32 } %182, 1
  %185 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %171, i32 %174, i32 %181, i32 %184) #2
  %186 = extractvalue { i32, i32 } %185, 0
  %187 = extractvalue { i32, i32 } %185, 1
  %188 = zext i32 %186 to i64
  %189 = zext i32 %187 to i64
  %190 = shl nuw i64 %189, 32
  %191 = or disjoint i64 %190, %188
  %192 = zext i32 %177 to i64
  %193 = zext i32 %183 to i64
  %194 = shl nuw i64 %193, 32
  %195 = or disjoint i64 %194, %192
  %196 = xor i64 %191, %195
  %197 = add i64 %196, 3997421333012711168
  %198 = extractelement <2 x i64> %145, i64 0
  %199 = xor i64 %198, -8966499887502561815
  %200 = extractelement <2 x i64> %145, i64 1
  %201 = xor i64 %200, -5209706959179045724
  %202 = lshr i64 %199, 32
  %203 = trunc nuw i64 %202 to i32
  %204 = trunc i64 %199 to i32
  %205 = lshr i64 %201, 32
  %206 = trunc nuw i64 %205 to i32
  %207 = trunc i64 %201 to i32
  %208 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %204, i32 %207) #2
  %209 = extractvalue { i32, i32 } %208, 0
  %210 = extractvalue { i32, i32 } %208, 1
  %211 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %203, i32 %207, i32 0, i32 %210) #2
  %212 = extractvalue { i32, i32 } %211, 0
  %213 = extractvalue { i32, i32 } %211, 1
  %214 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %204, i32 %206, i32 %212, i32 0) #2
  %215 = extractvalue { i32, i32 } %214, 0
  %216 = extractvalue { i32, i32 } %214, 1
  %217 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %203, i32 %206, i32 %213, i32 %216) #2
  %218 = extractvalue { i32, i32 } %217, 0
  %219 = extractvalue { i32, i32 } %217, 1
  %220 = zext i32 %218 to i64
  %221 = zext i32 %219 to i64
  %222 = shl nuw i64 %221, 32
  %223 = or disjoint i64 %222, %220
  %224 = zext i32 %209 to i64
  %225 = zext i32 %215 to i64
  %226 = shl nuw i64 %225, 32
  %227 = or disjoint i64 %226, %224
  %228 = xor i64 %223, %227
  %229 = add i64 %197, %228
  %230 = extractelement <2 x i64> %155, i64 0
  %231 = xor i64 %230, -3692699387471206834
  %232 = extractelement <2 x i64> %155, i64 1
  %233 = xor i64 %232, -3675093282664558467
  %234 = lshr i64 %231, 32
  %235 = trunc nuw i64 %234 to i32
  %236 = trunc i64 %231 to i32
  %237 = lshr i64 %233, 32
  %238 = trunc nuw i64 %237 to i32
  %239 = trunc i64 %233 to i32
  %240 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %236, i32 %239) #2
  %241 = extractvalue { i32, i32 } %240, 0
  %242 = extractvalue { i32, i32 } %240, 1
  %243 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %235, i32 %239, i32 0, i32 %242) #2
  %244 = extractvalue { i32, i32 } %243, 0
  %245 = extractvalue { i32, i32 } %243, 1
  %246 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %236, i32 %238, i32 %244, i32 0) #2
  %247 = extractvalue { i32, i32 } %246, 0
  %248 = extractvalue { i32, i32 } %246, 1
  %249 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %235, i32 %238, i32 %245, i32 %248) #2
  %250 = extractvalue { i32, i32 } %249, 0
  %251 = extractvalue { i32, i32 } %249, 1
  %252 = zext i32 %250 to i64
  %253 = zext i32 %251 to i64
  %254 = shl nuw i64 %253, 32
  %255 = or disjoint i64 %254, %252
  %256 = zext i32 %241 to i64
  %257 = zext i32 %247 to i64
  %258 = shl nuw i64 %257, 32
  %259 = or disjoint i64 %258, %256
  %260 = xor i64 %255, %259
  %261 = add i64 %229, %260
  %262 = extractelement <2 x i64> %165, i64 0
  %263 = xor i64 %262, -629619327510231436
  %264 = extractelement <2 x i64> %165, i64 1
  %265 = xor i64 %264, -9134946782546652954
  %266 = lshr i64 %263, 32
  %267 = trunc nuw i64 %266 to i32
  %268 = trunc i64 %263 to i32
  %269 = lshr i64 %265, 32
  %270 = trunc nuw i64 %269 to i32
  %271 = trunc i64 %265 to i32
  %272 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %268, i32 %271) #2
  %273 = extractvalue { i32, i32 } %272, 0
  %274 = extractvalue { i32, i32 } %272, 1
  %275 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %267, i32 %271, i32 0, i32 %274) #2
  %276 = extractvalue { i32, i32 } %275, 0
  %277 = extractvalue { i32, i32 } %275, 1
  %278 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %268, i32 %270, i32 %276, i32 0) #2
  %279 = extractvalue { i32, i32 } %278, 0
  %280 = extractvalue { i32, i32 } %278, 1
  %281 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %267, i32 %270, i32 %277, i32 %280) #2
  %282 = extractvalue { i32, i32 } %281, 0
  %283 = extractvalue { i32, i32 } %281, 1
  %284 = zext i32 %282 to i64
  %285 = zext i32 %283 to i64
  %286 = shl nuw i64 %285, 32
  %287 = or disjoint i64 %286, %284
  %288 = zext i32 %273 to i64
  %289 = zext i32 %279 to i64
  %290 = shl nuw i64 %289, 32
  %291 = or disjoint i64 %290, %288
  %292 = xor i64 %287, %291
  %293 = add i64 %261, %292
  %294 = lshr i64 %293, 37
  %295 = xor i64 %294, %293
  %296 = mul i64 %295, 1609587929392839161
  %297 = lshr i64 %296, 32
  %298 = xor i64 %297, %296
  %299 = xor i64 %166, -7943504444863786309
  %300 = xor i64 %168, 1968968742000944523
  %301 = lshr i64 %299, 32
  %302 = trunc nuw i64 %301 to i32
  %303 = trunc i64 %299 to i32
  %304 = lshr i64 %300, 32
  %305 = trunc nuw i64 %304 to i32
  %306 = trunc i64 %300 to i32
  %307 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %303, i32 %306) #2
  %308 = extractvalue { i32, i32 } %307, 0
  %309 = extractvalue { i32, i32 } %307, 1
  %310 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %302, i32 %306, i32 0, i32 %309) #2
  %311 = extractvalue { i32, i32 } %310, 0
  %312 = extractvalue { i32, i32 } %310, 1
  %313 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %303, i32 %305, i32 %311, i32 0) #2
  %314 = extractvalue { i32, i32 } %313, 0
  %315 = extractvalue { i32, i32 } %313, 1
  %316 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %302, i32 %305, i32 %312, i32 %315) #2
  %317 = extractvalue { i32, i32 } %316, 0
  %318 = extractvalue { i32, i32 } %316, 1
  %319 = zext i32 %317 to i64
  %320 = zext i32 %318 to i64
  %321 = shl nuw i64 %320, 32
  %322 = or disjoint i64 %321, %319
  %323 = zext i32 %308 to i64
  %324 = zext i32 %314 to i64
  %325 = shl nuw i64 %324, 32
  %326 = or disjoint i64 %325, %323
  %327 = xor i64 %322, %326
  %328 = add i64 %327, 8458018919171504719
  %329 = xor i64 %198, -6769480549562824553
  %330 = xor i64 %200, -6206333191815827642
  %331 = lshr i64 %329, 32
  %332 = trunc nuw i64 %331 to i32
  %333 = trunc i64 %329 to i32
  %334 = lshr i64 %330, 32
  %335 = trunc nuw i64 %334 to i32
  %336 = trunc i64 %330 to i32
  %337 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %333, i32 %336) #2
  %338 = extractvalue { i32, i32 } %337, 0
  %339 = extractvalue { i32, i32 } %337, 1
  %340 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %332, i32 %336, i32 0, i32 %339) #2
  %341 = extractvalue { i32, i32 } %340, 0
  %342 = extractvalue { i32, i32 } %340, 1
  %343 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %333, i32 %335, i32 %341, i32 0) #2
  %344 = extractvalue { i32, i32 } %343, 0
  %345 = extractvalue { i32, i32 } %343, 1
  %346 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %332, i32 %335, i32 %342, i32 %345) #2
  %347 = extractvalue { i32, i32 } %346, 0
  %348 = extractvalue { i32, i32 } %346, 1
  %349 = zext i32 %347 to i64
  %350 = zext i32 %348 to i64
  %351 = shl nuw i64 %350, 32
  %352 = or disjoint i64 %351, %349
  %353 = zext i32 %338 to i64
  %354 = zext i32 %344 to i64
  %355 = shl nuw i64 %354, 32
  %356 = or disjoint i64 %355, %353
  %357 = xor i64 %352, %356
  %358 = add i64 %328, %357
  %359 = xor i64 %230, -2045702682710477249
  %360 = xor i64 %232, -4104099645253436473
  %361 = lshr i64 %359, 32
  %362 = trunc nuw i64 %361 to i32
  %363 = trunc i64 %359 to i32
  %364 = lshr i64 %360, 32
  %365 = trunc nuw i64 %364 to i32
  %366 = trunc i64 %360 to i32
  %367 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %363, i32 %366) #2
  %368 = extractvalue { i32, i32 } %367, 0
  %369 = extractvalue { i32, i32 } %367, 1
  %370 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %362, i32 %366, i32 0, i32 %369) #2
  %371 = extractvalue { i32, i32 } %370, 0
  %372 = extractvalue { i32, i32 } %370, 1
  %373 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %363, i32 %365, i32 %371, i32 0) #2
  %374 = extractvalue { i32, i32 } %373, 0
  %375 = extractvalue { i32, i32 } %373, 1
  %376 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %362, i32 %365, i32 %372, i32 %375) #2
  %377 = extractvalue { i32, i32 } %376, 0
  %378 = extractvalue { i32, i32 } %376, 1
  %379 = zext i32 %377 to i64
  %380 = zext i32 %378 to i64
  %381 = shl nuw i64 %380, 32
  %382 = or disjoint i64 %381, %379
  %383 = zext i32 %368 to i64
  %384 = zext i32 %374 to i64
  %385 = shl nuw i64 %384, 32
  %386 = or disjoint i64 %385, %383
  %387 = xor i64 %382, %386
  %388 = add i64 %358, %387
  %389 = xor i64 %262, -3624173730817515445
  %390 = xor i64 %264, -2776342293574091063
  %391 = lshr i64 %389, 32
  %392 = trunc nuw i64 %391 to i32
  %393 = trunc i64 %389 to i32
  %394 = lshr i64 %390, 32
  %395 = trunc nuw i64 %394 to i32
  %396 = trunc i64 %390 to i32
  %397 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %393, i32 %396) #2
  %398 = extractvalue { i32, i32 } %397, 0
  %399 = extractvalue { i32, i32 } %397, 1
  %400 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %392, i32 %396, i32 0, i32 %399) #2
  %401 = extractvalue { i32, i32 } %400, 0
  %402 = extractvalue { i32, i32 } %400, 1
  %403 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %393, i32 %395, i32 %401, i32 0) #2
  %404 = extractvalue { i32, i32 } %403, 0
  %405 = extractvalue { i32, i32 } %403, 1
  %406 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %392, i32 %395, i32 %402, i32 %405) #2
  %407 = extractvalue { i32, i32 } %406, 0
  %408 = extractvalue { i32, i32 } %406, 1
  %409 = zext i32 %407 to i64
  %410 = zext i32 %408 to i64
  %411 = shl nuw i64 %410, 32
  %412 = or disjoint i64 %411, %409
  %413 = zext i32 %398 to i64
  %414 = zext i32 %404 to i64
  %415 = shl nuw i64 %414, 32
  %416 = or disjoint i64 %415, %413
  %417 = xor i64 %412, %416
  %418 = add i64 %388, %417
  %419 = lshr i64 %418, 37
  %420 = xor i64 %419, %418
  %421 = mul i64 %420, 1609587929392839161
  %422 = lshr i64 %421, 32
  %423 = xor i64 %422, %421
  store i64 %298, ptr %2, align 8
  %424 = getelementptr inbounds nuw i8, ptr %2, i32 8
  store i64 %423, ptr %424, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32>, <2 x i32>) #1

attributes #0 = { nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 62640}
!6 = !{i64 54747}
!7 = !{i64 54956}
!8 = !{i64 55190}
!9 = !{i64 55399}
