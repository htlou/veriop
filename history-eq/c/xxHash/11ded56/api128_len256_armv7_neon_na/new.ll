; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/11ded56/api128_len256_armv7_neon_na/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/11ded56/api128_len256_armv7_neon_na/wrapper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabihf"

@kKey = internal unnamed_addr constant [48 x i32] [i32 -1191285703, i32 597969854, i32 2080473388, i32 -148787940, i32 -556503575, i32 -2087675941, i32 1916839076, i32 -1212979425, i32 -881203634, i32 -859773576, i32 -2107977603, i32 -855674335, i32 -1207417228, i32 -146594674, i32 -533360410, i32 -2126895540, i32 1009275579, i32 -1849491253, i32 -1999608437, i32 458436259, i32 1902397591, i32 -1576142514, i32 941223750, i32 -1445024552, i32 -1459980737, i32 -476302273, i32 -102974521, i32 -955560163, i32 -1974345653, i32 -843818703, i32 -929071415, i32 -646417564, i32 -356143997, i32 886303683, i32 -981360385, i32 -99392533, i32 386784593, i32 -1208952247, i32 -753511130, i32 701786270, i32 722910808, i32 2101846524, i32 -1879525167, i32 2060464590, i32 1170946703, i32 -1793719256, i32 -1344799798, i32 -1152696194], align 64

; Function Attrs: nounwind memory(argmem: readwrite)
define dso_local void @target_xxh128(ptr noundef readonly %0, i64 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = insertelement <2 x i64> <i64 poison, i64 -7046029288634856825>, i64 %1, i64 0
  %5 = sub i64 0, %1
  %6 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %5, i64 0
  br label %7

7:                                                ; preds = %7, %3
  %8 = phi <2 x i64> [ %6, %3 ], [ %61, %7 ]
  %9 = phi <2 x i64> [ <i64 -8796714831421723037, i64 2870177450012600261>, %3 ], [ %49, %7 ]
  %10 = phi <2 x i64> [ <i64 -4417276706812531889, i64 1609587929392839161>, %3 ], [ %37, %7 ]
  %11 = phi <2 x i64> [ %4, %3 ], [ %25, %7 ]
  %12 = phi i32 [ 0, %3 ], [ %63, %7 ]
  %13 = phi ptr [ @kKey, %3 ], [ %62, %7 ]
  %14 = shl nuw nsw i32 %12, 6
  %15 = getelementptr inbounds nuw i8, ptr %0, i32 %14
  %16 = load <4 x i32>, ptr %15, align 4
  %17 = load <4 x i32>, ptr %13, align 4
  %18 = bitcast <4 x i32> %16 to <2 x i64>
  %19 = add <2 x i64> %11, %18
  %20 = xor <4 x i32> %17, %16
  %21 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %20) #2
  %22 = shufflevector <4 x i32> %21, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %23 = shufflevector <4 x i32> %21, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %24 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %22, <2 x i32> %23)
  %25 = add <2 x i64> %19, %24
  %26 = getelementptr inbounds nuw i8, ptr %15, i32 16
  %27 = load <4 x i32>, ptr %26, align 4
  %28 = getelementptr inbounds nuw i8, ptr %13, i32 16
  %29 = load <4 x i32>, ptr %28, align 4
  %30 = bitcast <4 x i32> %27 to <2 x i64>
  %31 = add <2 x i64> %10, %30
  %32 = xor <4 x i32> %29, %27
  %33 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %32) #2
  %34 = shufflevector <4 x i32> %33, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %35 = shufflevector <4 x i32> %33, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %36 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %34, <2 x i32> %35)
  %37 = add <2 x i64> %31, %36
  %38 = getelementptr inbounds nuw i8, ptr %15, i32 32
  %39 = load <4 x i32>, ptr %38, align 4
  %40 = getelementptr inbounds nuw i8, ptr %13, i32 32
  %41 = load <4 x i32>, ptr %40, align 4
  %42 = bitcast <4 x i32> %39 to <2 x i64>
  %43 = add <2 x i64> %9, %42
  %44 = xor <4 x i32> %41, %39
  %45 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %44) #2
  %46 = shufflevector <4 x i32> %45, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %47 = shufflevector <4 x i32> %45, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %48 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %46, <2 x i32> %47)
  %49 = add <2 x i64> %43, %48
  %50 = getelementptr inbounds nuw i8, ptr %15, i32 48
  %51 = load <4 x i32>, ptr %50, align 4
  %52 = getelementptr inbounds nuw i8, ptr %13, i32 48
  %53 = load <4 x i32>, ptr %52, align 4
  %54 = bitcast <4 x i32> %51 to <2 x i64>
  %55 = add <2 x i64> %8, %54
  %56 = xor <4 x i32> %53, %51
  %57 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %56) #2
  %58 = shufflevector <4 x i32> %57, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %59 = shufflevector <4 x i32> %57, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %60 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %58, <2 x i32> %59)
  %61 = add <2 x i64> %55, %60
  %62 = getelementptr inbounds nuw i8, ptr %13, i32 8
  %63 = add nuw nsw i32 %12, 1
  %64 = icmp eq i32 %63, 4
  br i1 %64, label %65, label %7

65:                                               ; preds = %7
  %66 = extractelement <2 x i64> %25, i64 0
  %67 = xor i64 %66, 2568260970027576377
  %68 = extractelement <2 x i64> %25, i64 1
  %69 = xor i64 %68, -639039334258736852
  %70 = lshr i64 %67, 32
  %71 = trunc nuw i64 %70 to i32
  %72 = trunc i64 %67 to i32
  %73 = lshr i64 %69, 32
  %74 = trunc nuw i64 %73 to i32
  %75 = trunc i64 %69 to i32
  %76 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %72, i32 %75) #2
  %77 = extractvalue { i32, i32 } %76, 0
  %78 = extractvalue { i32, i32 } %76, 1
  %79 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %71, i32 %75, i32 0, i32 %78) #2
  %80 = extractvalue { i32, i32 } %79, 0
  %81 = extractvalue { i32, i32 } %79, 1
  %82 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %72, i32 %74, i32 %80, i32 0) #2
  %83 = extractvalue { i32, i32 } %82, 0
  %84 = extractvalue { i32, i32 } %82, 1
  %85 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %71, i32 %74, i32 %81, i32 %84) #2
  %86 = extractvalue { i32, i32 } %85, 0
  %87 = extractvalue { i32, i32 } %85, 1
  %88 = zext i32 %86 to i64
  %89 = zext i32 %87 to i64
  %90 = shl nuw i64 %89, 32
  %91 = or disjoint i64 %90, %88
  %92 = zext i32 %77 to i64
  %93 = zext i32 %83 to i64
  %94 = shl nuw i64 %93, 32
  %95 = or disjoint i64 %94, %92
  %96 = xor i64 %91, %95
  %97 = add i64 %96, 3997421333012711168
  %98 = extractelement <2 x i64> %37, i64 0
  %99 = xor i64 %98, -8966499887502561815
  %100 = extractelement <2 x i64> %37, i64 1
  %101 = xor i64 %100, -5209706959179045724
  %102 = lshr i64 %99, 32
  %103 = trunc nuw i64 %102 to i32
  %104 = trunc i64 %99 to i32
  %105 = lshr i64 %101, 32
  %106 = trunc nuw i64 %105 to i32
  %107 = trunc i64 %101 to i32
  %108 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %104, i32 %107) #2
  %109 = extractvalue { i32, i32 } %108, 0
  %110 = extractvalue { i32, i32 } %108, 1
  %111 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %103, i32 %107, i32 0, i32 %110) #2
  %112 = extractvalue { i32, i32 } %111, 0
  %113 = extractvalue { i32, i32 } %111, 1
  %114 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %104, i32 %106, i32 %112, i32 0) #2
  %115 = extractvalue { i32, i32 } %114, 0
  %116 = extractvalue { i32, i32 } %114, 1
  %117 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %103, i32 %106, i32 %113, i32 %116) #2
  %118 = extractvalue { i32, i32 } %117, 0
  %119 = extractvalue { i32, i32 } %117, 1
  %120 = zext i32 %118 to i64
  %121 = zext i32 %119 to i64
  %122 = shl nuw i64 %121, 32
  %123 = or disjoint i64 %122, %120
  %124 = zext i32 %109 to i64
  %125 = zext i32 %115 to i64
  %126 = shl nuw i64 %125, 32
  %127 = or disjoint i64 %126, %124
  %128 = xor i64 %123, %127
  %129 = add i64 %97, %128
  %130 = extractelement <2 x i64> %49, i64 0
  %131 = xor i64 %130, -3692699387471206834
  %132 = extractelement <2 x i64> %49, i64 1
  %133 = xor i64 %132, -3675093282664558467
  %134 = lshr i64 %131, 32
  %135 = trunc nuw i64 %134 to i32
  %136 = trunc i64 %131 to i32
  %137 = lshr i64 %133, 32
  %138 = trunc nuw i64 %137 to i32
  %139 = trunc i64 %133 to i32
  %140 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %136, i32 %139) #2
  %141 = extractvalue { i32, i32 } %140, 0
  %142 = extractvalue { i32, i32 } %140, 1
  %143 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %135, i32 %139, i32 0, i32 %142) #2
  %144 = extractvalue { i32, i32 } %143, 0
  %145 = extractvalue { i32, i32 } %143, 1
  %146 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %136, i32 %138, i32 %144, i32 0) #2
  %147 = extractvalue { i32, i32 } %146, 0
  %148 = extractvalue { i32, i32 } %146, 1
  %149 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %135, i32 %138, i32 %145, i32 %148) #2
  %150 = extractvalue { i32, i32 } %149, 0
  %151 = extractvalue { i32, i32 } %149, 1
  %152 = zext i32 %150 to i64
  %153 = zext i32 %151 to i64
  %154 = shl nuw i64 %153, 32
  %155 = or disjoint i64 %154, %152
  %156 = zext i32 %141 to i64
  %157 = zext i32 %147 to i64
  %158 = shl nuw i64 %157, 32
  %159 = or disjoint i64 %158, %156
  %160 = xor i64 %155, %159
  %161 = add i64 %129, %160
  %162 = extractelement <2 x i64> %61, i64 0
  %163 = xor i64 %162, -629619327510231436
  %164 = extractelement <2 x i64> %61, i64 1
  %165 = xor i64 %164, -9134946782546652954
  %166 = lshr i64 %163, 32
  %167 = trunc nuw i64 %166 to i32
  %168 = trunc i64 %163 to i32
  %169 = lshr i64 %165, 32
  %170 = trunc nuw i64 %169 to i32
  %171 = trunc i64 %165 to i32
  %172 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %168, i32 %171) #2
  %173 = extractvalue { i32, i32 } %172, 0
  %174 = extractvalue { i32, i32 } %172, 1
  %175 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %167, i32 %171, i32 0, i32 %174) #2
  %176 = extractvalue { i32, i32 } %175, 0
  %177 = extractvalue { i32, i32 } %175, 1
  %178 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %168, i32 %170, i32 %176, i32 0) #2
  %179 = extractvalue { i32, i32 } %178, 0
  %180 = extractvalue { i32, i32 } %178, 1
  %181 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %167, i32 %170, i32 %177, i32 %180) #2
  %182 = extractvalue { i32, i32 } %181, 0
  %183 = extractvalue { i32, i32 } %181, 1
  %184 = zext i32 %182 to i64
  %185 = zext i32 %183 to i64
  %186 = shl nuw i64 %185, 32
  %187 = or disjoint i64 %186, %184
  %188 = zext i32 %173 to i64
  %189 = zext i32 %179 to i64
  %190 = shl nuw i64 %189, 32
  %191 = or disjoint i64 %190, %188
  %192 = xor i64 %187, %191
  %193 = add i64 %161, %192
  %194 = lshr i64 %193, 37
  %195 = xor i64 %194, %193
  %196 = mul i64 %195, 1609587929392839161
  %197 = lshr i64 %196, 32
  %198 = xor i64 %197, %196
  %199 = xor i64 %66, -7943504444863786309
  %200 = xor i64 %68, 1968968742000944523
  %201 = lshr i64 %199, 32
  %202 = trunc nuw i64 %201 to i32
  %203 = trunc i64 %199 to i32
  %204 = lshr i64 %200, 32
  %205 = trunc nuw i64 %204 to i32
  %206 = trunc i64 %200 to i32
  %207 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %203, i32 %206) #2
  %208 = extractvalue { i32, i32 } %207, 0
  %209 = extractvalue { i32, i32 } %207, 1
  %210 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %202, i32 %206, i32 0, i32 %209) #2
  %211 = extractvalue { i32, i32 } %210, 0
  %212 = extractvalue { i32, i32 } %210, 1
  %213 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %203, i32 %205, i32 %211, i32 0) #2
  %214 = extractvalue { i32, i32 } %213, 0
  %215 = extractvalue { i32, i32 } %213, 1
  %216 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %202, i32 %205, i32 %212, i32 %215) #2
  %217 = extractvalue { i32, i32 } %216, 0
  %218 = extractvalue { i32, i32 } %216, 1
  %219 = zext i32 %217 to i64
  %220 = zext i32 %218 to i64
  %221 = shl nuw i64 %220, 32
  %222 = or disjoint i64 %221, %219
  %223 = zext i32 %208 to i64
  %224 = zext i32 %214 to i64
  %225 = shl nuw i64 %224, 32
  %226 = or disjoint i64 %225, %223
  %227 = xor i64 %222, %226
  %228 = add i64 %227, 8458018919171504719
  %229 = xor i64 %98, -6769480549562824553
  %230 = xor i64 %100, -6206333191815827642
  %231 = lshr i64 %229, 32
  %232 = trunc nuw i64 %231 to i32
  %233 = trunc i64 %229 to i32
  %234 = lshr i64 %230, 32
  %235 = trunc nuw i64 %234 to i32
  %236 = trunc i64 %230 to i32
  %237 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %233, i32 %236) #2
  %238 = extractvalue { i32, i32 } %237, 0
  %239 = extractvalue { i32, i32 } %237, 1
  %240 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %232, i32 %236, i32 0, i32 %239) #2
  %241 = extractvalue { i32, i32 } %240, 0
  %242 = extractvalue { i32, i32 } %240, 1
  %243 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %233, i32 %235, i32 %241, i32 0) #2
  %244 = extractvalue { i32, i32 } %243, 0
  %245 = extractvalue { i32, i32 } %243, 1
  %246 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %232, i32 %235, i32 %242, i32 %245) #2
  %247 = extractvalue { i32, i32 } %246, 0
  %248 = extractvalue { i32, i32 } %246, 1
  %249 = zext i32 %247 to i64
  %250 = zext i32 %248 to i64
  %251 = shl nuw i64 %250, 32
  %252 = or disjoint i64 %251, %249
  %253 = zext i32 %238 to i64
  %254 = zext i32 %244 to i64
  %255 = shl nuw i64 %254, 32
  %256 = or disjoint i64 %255, %253
  %257 = xor i64 %252, %256
  %258 = add i64 %228, %257
  %259 = xor i64 %130, -2045702682710477249
  %260 = xor i64 %132, -4104099645253436473
  %261 = lshr i64 %259, 32
  %262 = trunc nuw i64 %261 to i32
  %263 = trunc i64 %259 to i32
  %264 = lshr i64 %260, 32
  %265 = trunc nuw i64 %264 to i32
  %266 = trunc i64 %260 to i32
  %267 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %263, i32 %266) #2
  %268 = extractvalue { i32, i32 } %267, 0
  %269 = extractvalue { i32, i32 } %267, 1
  %270 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %262, i32 %266, i32 0, i32 %269) #2
  %271 = extractvalue { i32, i32 } %270, 0
  %272 = extractvalue { i32, i32 } %270, 1
  %273 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %263, i32 %265, i32 %271, i32 0) #2
  %274 = extractvalue { i32, i32 } %273, 0
  %275 = extractvalue { i32, i32 } %273, 1
  %276 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %262, i32 %265, i32 %272, i32 %275) #2
  %277 = extractvalue { i32, i32 } %276, 0
  %278 = extractvalue { i32, i32 } %276, 1
  %279 = zext i32 %277 to i64
  %280 = zext i32 %278 to i64
  %281 = shl nuw i64 %280, 32
  %282 = or disjoint i64 %281, %279
  %283 = zext i32 %268 to i64
  %284 = zext i32 %274 to i64
  %285 = shl nuw i64 %284, 32
  %286 = or disjoint i64 %285, %283
  %287 = xor i64 %282, %286
  %288 = add i64 %258, %287
  %289 = xor i64 %162, -3624173730817515445
  %290 = xor i64 %164, -2776342293574091063
  %291 = lshr i64 %289, 32
  %292 = trunc nuw i64 %291 to i32
  %293 = trunc i64 %289 to i32
  %294 = lshr i64 %290, 32
  %295 = trunc nuw i64 %294 to i32
  %296 = trunc i64 %290 to i32
  %297 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %293, i32 %296) #2
  %298 = extractvalue { i32, i32 } %297, 0
  %299 = extractvalue { i32, i32 } %297, 1
  %300 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %292, i32 %296, i32 0, i32 %299) #2
  %301 = extractvalue { i32, i32 } %300, 0
  %302 = extractvalue { i32, i32 } %300, 1
  %303 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %293, i32 %295, i32 %301, i32 0) #2
  %304 = extractvalue { i32, i32 } %303, 0
  %305 = extractvalue { i32, i32 } %303, 1
  %306 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %292, i32 %295, i32 %302, i32 %305) #2
  %307 = extractvalue { i32, i32 } %306, 0
  %308 = extractvalue { i32, i32 } %306, 1
  %309 = zext i32 %307 to i64
  %310 = zext i32 %308 to i64
  %311 = shl nuw i64 %310, 32
  %312 = or disjoint i64 %311, %309
  %313 = zext i32 %298 to i64
  %314 = zext i32 %304 to i64
  %315 = shl nuw i64 %314, 32
  %316 = or disjoint i64 %315, %313
  %317 = xor i64 %312, %316
  %318 = add i64 %288, %317
  %319 = lshr i64 %318, 37
  %320 = xor i64 %319, %318
  %321 = mul i64 %320, 1609587929392839161
  %322 = lshr i64 %321, 32
  %323 = xor i64 %322, %321
  store i64 %198, ptr %2, align 8
  %324 = getelementptr inbounds nuw i8, ptr %2, i32 8
  store i64 %323, ptr %324, align 8
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
!5 = !{i64 62750}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{i64 54433}
!9 = !{i64 54642}
!10 = !{i64 54876}
!11 = !{i64 55085}
