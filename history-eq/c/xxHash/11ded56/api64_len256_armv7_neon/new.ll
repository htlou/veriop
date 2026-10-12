; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/11ded56/api64_len256_armv7_neon/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/11ded56/api64_len256_armv7_neon/wrapper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabihf"

@kKey = internal unnamed_addr constant [48 x i32] [i32 -1191285703, i32 597969854, i32 2080473388, i32 -148787940, i32 -556503575, i32 -2087675941, i32 1916839076, i32 -1212979425, i32 -881203634, i32 -859773576, i32 -2107977603, i32 -855674335, i32 -1207417228, i32 -146594674, i32 -533360410, i32 -2126895540, i32 1009275579, i32 -1849491253, i32 -1999608437, i32 458436259, i32 1902397591, i32 -1576142514, i32 941223750, i32 -1445024552, i32 -1459980737, i32 -476302273, i32 -102974521, i32 -955560163, i32 -1974345653, i32 -843818703, i32 -929071415, i32 -646417564, i32 -356143997, i32 886303683, i32 -981360385, i32 -99392533, i32 386784593, i32 -1208952247, i32 -753511130, i32 701786270, i32 722910808, i32 2101846524, i32 -1879525167, i32 2060464590, i32 1170946703, i32 -1793719256, i32 -1344799798, i32 -1152696194], align 64

; Function Attrs: nofree nounwind memory(argmem: read)
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = sub i64 0, %1
  %4 = insertelement <2 x i64> <i64 poison, i64 -7046029288634856825>, i64 %1, i64 0
  %5 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %3, i64 0
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi <2 x i64> [ %60, %6 ], [ %5, %2 ]
  %8 = phi <2 x i64> [ %48, %6 ], [ <i64 -8796714831421723037, i64 2870177450012600261>, %2 ]
  %9 = phi <2 x i64> [ %36, %6 ], [ <i64 -4417276706812531889, i64 1609587929392839161>, %2 ]
  %10 = phi <2 x i64> [ %24, %6 ], [ %4, %2 ]
  %11 = phi i32 [ %62, %6 ], [ 0, %2 ]
  %12 = phi ptr [ %61, %6 ], [ @kKey, %2 ]
  %13 = shl nuw nsw i32 %11, 6
  %14 = getelementptr inbounds nuw i8, ptr %0, i32 %13
  %15 = load <4 x i32>, ptr %14, align 4
  %16 = load <4 x i32>, ptr %12, align 4
  %17 = bitcast <4 x i32> %15 to <2 x i64>
  %18 = add <2 x i64> %10, %17
  %19 = xor <4 x i32> %16, %15
  %20 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %19) #2
  %21 = shufflevector <4 x i32> %20, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %22 = shufflevector <4 x i32> %20, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %23 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %21, <2 x i32> %22)
  %24 = add <2 x i64> %18, %23
  %25 = getelementptr inbounds nuw i8, ptr %14, i32 16
  %26 = load <4 x i32>, ptr %25, align 4
  %27 = getelementptr inbounds nuw i8, ptr %12, i32 16
  %28 = load <4 x i32>, ptr %27, align 4
  %29 = bitcast <4 x i32> %26 to <2 x i64>
  %30 = add <2 x i64> %9, %29
  %31 = xor <4 x i32> %28, %26
  %32 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %31) #2
  %33 = shufflevector <4 x i32> %32, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %34 = shufflevector <4 x i32> %32, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %35 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %33, <2 x i32> %34)
  %36 = add <2 x i64> %30, %35
  %37 = getelementptr inbounds nuw i8, ptr %14, i32 32
  %38 = load <4 x i32>, ptr %37, align 4
  %39 = getelementptr inbounds nuw i8, ptr %12, i32 32
  %40 = load <4 x i32>, ptr %39, align 4
  %41 = bitcast <4 x i32> %38 to <2 x i64>
  %42 = add <2 x i64> %8, %41
  %43 = xor <4 x i32> %40, %38
  %44 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %43) #2
  %45 = shufflevector <4 x i32> %44, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %46 = shufflevector <4 x i32> %44, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %47 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %45, <2 x i32> %46)
  %48 = add <2 x i64> %42, %47
  %49 = getelementptr inbounds nuw i8, ptr %14, i32 48
  %50 = load <4 x i32>, ptr %49, align 4
  %51 = getelementptr inbounds nuw i8, ptr %12, i32 48
  %52 = load <4 x i32>, ptr %51, align 4
  %53 = bitcast <4 x i32> %50 to <2 x i64>
  %54 = add <2 x i64> %7, %53
  %55 = xor <4 x i32> %52, %50
  %56 = tail call <4 x i32> asm "vzip.32 ${0:e}, ${0:f}", "=w,0"(<4 x i32> %55) #2
  %57 = shufflevector <4 x i32> %56, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %58 = shufflevector <4 x i32> %56, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %59 = tail call <2 x i64> @llvm.arm.neon.vmullu.v2i64(<2 x i32> %57, <2 x i32> %58)
  %60 = add <2 x i64> %54, %59
  %61 = getelementptr inbounds nuw i8, ptr %12, i32 8
  %62 = add nuw nsw i32 %11, 1
  %63 = icmp eq i32 %62, 4
  br i1 %63, label %64, label %6

64:                                               ; preds = %6
  %65 = lshr i64 %1, 32
  %66 = trunc nuw i64 %65 to i32
  %67 = add i32 %66, -533360410
  %68 = zext i32 %67 to i64
  %69 = trunc i64 %1 to i32
  %70 = sub i32 -2126895540, %69
  %71 = zext i32 %70 to i64
  %72 = shl nuw i64 %71, 32
  %73 = or disjoint i64 %72, %68
  %74 = add i32 %69, -1207417228
  %75 = zext i32 %74 to i64
  %76 = sub i32 -146594674, %66
  %77 = zext i32 %76 to i64
  %78 = shl nuw i64 %77, 32
  %79 = or disjoint i64 %78, %75
  %80 = add i32 %66, -2107977603
  %81 = zext i32 %80 to i64
  %82 = sub i32 -855674335, %69
  %83 = zext i32 %82 to i64
  %84 = shl nuw i64 %83, 32
  %85 = or disjoint i64 %84, %81
  %86 = add i32 %69, -881203634
  %87 = zext i32 %86 to i64
  %88 = sub i32 -859773576, %66
  %89 = zext i32 %88 to i64
  %90 = shl nuw i64 %89, 32
  %91 = or disjoint i64 %90, %87
  %92 = add i32 %66, 1916839076
  %93 = zext i32 %92 to i64
  %94 = sub i32 -1212979425, %69
  %95 = zext i32 %94 to i64
  %96 = shl nuw i64 %95, 32
  %97 = or disjoint i64 %96, %93
  %98 = add i32 %69, -556503575
  %99 = zext i32 %98 to i64
  %100 = sub i32 -2087675941, %66
  %101 = zext i32 %100 to i64
  %102 = shl nuw i64 %101, 32
  %103 = or disjoint i64 %102, %99
  %104 = add i32 %66, 2080473388
  %105 = zext i32 %104 to i64
  %106 = sub i32 -148787940, %69
  %107 = zext i32 %106 to i64
  %108 = shl nuw i64 %107, 32
  %109 = or disjoint i64 %108, %105
  %110 = add i32 %69, -1191285703
  %111 = zext i32 %110 to i64
  %112 = sub i32 597969854, %66
  %113 = zext i32 %112 to i64
  %114 = shl nuw i64 %113, 32
  %115 = or disjoint i64 %114, %111
  %116 = extractelement <2 x i64> %24, i64 0
  %117 = xor i64 %116, %115
  %118 = extractelement <2 x i64> %24, i64 1
  %119 = xor i64 %118, %109
  %120 = lshr i64 %117, 32
  %121 = trunc nuw i64 %120 to i32
  %122 = trunc i64 %117 to i32
  %123 = lshr i64 %119, 32
  %124 = trunc nuw i64 %123 to i32
  %125 = trunc i64 %119 to i32
  %126 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %122, i32 %125) #2
  %127 = extractvalue { i32, i32 } %126, 0
  %128 = extractvalue { i32, i32 } %126, 1
  %129 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %121, i32 %125, i32 0, i32 %128) #2
  %130 = extractvalue { i32, i32 } %129, 0
  %131 = extractvalue { i32, i32 } %129, 1
  %132 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %122, i32 %124, i32 %130, i32 0) #2
  %133 = extractvalue { i32, i32 } %132, 0
  %134 = extractvalue { i32, i32 } %132, 1
  %135 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %121, i32 %124, i32 %131, i32 %134) #2
  %136 = extractvalue { i32, i32 } %135, 0
  %137 = extractvalue { i32, i32 } %135, 1
  %138 = zext i32 %136 to i64
  %139 = zext i32 %137 to i64
  %140 = shl nuw i64 %139, 32
  %141 = or disjoint i64 %140, %138
  %142 = zext i32 %127 to i64
  %143 = zext i32 %133 to i64
  %144 = shl nuw i64 %143, 32
  %145 = or disjoint i64 %144, %142
  %146 = xor i64 %141, %145
  %147 = add i64 %146, 3997421333012711168
  %148 = extractelement <2 x i64> %36, i64 0
  %149 = xor i64 %148, %103
  %150 = extractelement <2 x i64> %36, i64 1
  %151 = xor i64 %150, %97
  %152 = lshr i64 %149, 32
  %153 = trunc nuw i64 %152 to i32
  %154 = trunc i64 %149 to i32
  %155 = lshr i64 %151, 32
  %156 = trunc nuw i64 %155 to i32
  %157 = trunc i64 %151 to i32
  %158 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %154, i32 %157) #2
  %159 = extractvalue { i32, i32 } %158, 0
  %160 = extractvalue { i32, i32 } %158, 1
  %161 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %153, i32 %157, i32 0, i32 %160) #2
  %162 = extractvalue { i32, i32 } %161, 0
  %163 = extractvalue { i32, i32 } %161, 1
  %164 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %154, i32 %156, i32 %162, i32 0) #2
  %165 = extractvalue { i32, i32 } %164, 0
  %166 = extractvalue { i32, i32 } %164, 1
  %167 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %153, i32 %156, i32 %163, i32 %166) #2
  %168 = extractvalue { i32, i32 } %167, 0
  %169 = extractvalue { i32, i32 } %167, 1
  %170 = zext i32 %168 to i64
  %171 = zext i32 %169 to i64
  %172 = shl nuw i64 %171, 32
  %173 = or disjoint i64 %172, %170
  %174 = zext i32 %159 to i64
  %175 = zext i32 %165 to i64
  %176 = shl nuw i64 %175, 32
  %177 = or disjoint i64 %176, %174
  %178 = xor i64 %173, %177
  %179 = add i64 %147, %178
  %180 = extractelement <2 x i64> %48, i64 0
  %181 = xor i64 %180, %91
  %182 = extractelement <2 x i64> %48, i64 1
  %183 = xor i64 %182, %85
  %184 = lshr i64 %181, 32
  %185 = trunc nuw i64 %184 to i32
  %186 = trunc i64 %181 to i32
  %187 = lshr i64 %183, 32
  %188 = trunc nuw i64 %187 to i32
  %189 = trunc i64 %183 to i32
  %190 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %186, i32 %189) #2
  %191 = extractvalue { i32, i32 } %190, 0
  %192 = extractvalue { i32, i32 } %190, 1
  %193 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %185, i32 %189, i32 0, i32 %192) #2
  %194 = extractvalue { i32, i32 } %193, 0
  %195 = extractvalue { i32, i32 } %193, 1
  %196 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %186, i32 %188, i32 %194, i32 0) #2
  %197 = extractvalue { i32, i32 } %196, 0
  %198 = extractvalue { i32, i32 } %196, 1
  %199 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %185, i32 %188, i32 %195, i32 %198) #2
  %200 = extractvalue { i32, i32 } %199, 0
  %201 = extractvalue { i32, i32 } %199, 1
  %202 = zext i32 %200 to i64
  %203 = zext i32 %201 to i64
  %204 = shl nuw i64 %203, 32
  %205 = or disjoint i64 %204, %202
  %206 = zext i32 %191 to i64
  %207 = zext i32 %197 to i64
  %208 = shl nuw i64 %207, 32
  %209 = or disjoint i64 %208, %206
  %210 = xor i64 %205, %209
  %211 = add i64 %179, %210
  %212 = extractelement <2 x i64> %60, i64 0
  %213 = xor i64 %212, %79
  %214 = extractelement <2 x i64> %60, i64 1
  %215 = xor i64 %214, %73
  %216 = lshr i64 %213, 32
  %217 = trunc nuw i64 %216 to i32
  %218 = trunc i64 %213 to i32
  %219 = lshr i64 %215, 32
  %220 = trunc nuw i64 %219 to i32
  %221 = trunc i64 %215 to i32
  %222 = tail call { i32, i32 } asm "umull $0, $1, $2, $3", "=r,=r,r,r"(i32 %218, i32 %221) #2
  %223 = extractvalue { i32, i32 } %222, 0
  %224 = extractvalue { i32, i32 } %222, 1
  %225 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %217, i32 %221, i32 0, i32 %224) #2
  %226 = extractvalue { i32, i32 } %225, 0
  %227 = extractvalue { i32, i32 } %225, 1
  %228 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %218, i32 %220, i32 %226, i32 0) #2
  %229 = extractvalue { i32, i32 } %228, 0
  %230 = extractvalue { i32, i32 } %228, 1
  %231 = tail call { i32, i32 } asm "umaal $0, $1, $2, $3", "=r,=r,r,r,0,1"(i32 %217, i32 %220, i32 %227, i32 %230) #2
  %232 = extractvalue { i32, i32 } %231, 0
  %233 = extractvalue { i32, i32 } %231, 1
  %234 = zext i32 %232 to i64
  %235 = zext i32 %233 to i64
  %236 = shl nuw i64 %235, 32
  %237 = or disjoint i64 %236, %234
  %238 = zext i32 %223 to i64
  %239 = zext i32 %229 to i64
  %240 = shl nuw i64 %239, 32
  %241 = or disjoint i64 %240, %238
  %242 = xor i64 %237, %241
  %243 = add i64 %211, %242
  %244 = lshr i64 %243, 37
  %245 = xor i64 %244, %243
  %246 = mul i64 %245, 1609587929392839161
  %247 = lshr i64 %246, 32
  %248 = xor i64 %247, %246
  ret i64 %248
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
!5 = !{i64 62435}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{i64 54118}
!9 = !{i64 54327}
!10 = !{i64 54561}
!11 = !{i64 54770}
