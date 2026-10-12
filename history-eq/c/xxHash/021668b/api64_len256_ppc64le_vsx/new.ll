; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/021668b/api64_len256_ppc64le_vsx/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/021668b/api64_len256_ppc64le_vsx/wrapper.c"
target datalayout = "e-m:e-Fn32-i64:64-i128:128-n32:64-S128-v256:256:256-v512:512:512"
target triple = "powerpc64le-unknown-linux-gnu"

; Function Attrs: nofree nounwind memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i64 %1, 32
  %4 = add i64 %1, 3103681593
  %5 = and i64 %4, 4294967295
  %6 = and i64 %1, -4294967296
  %7 = sub i64 %5, %6
  %8 = add i64 %7, 2568260966923894784
  %9 = add nuw nsw i64 %3, 2080473388
  %10 = and i64 %9, 4294967295
  %11 = mul i64 %1, -4294967296
  %12 = add i64 %11, -639039336339210240
  %13 = or disjoint i64 %12, %10
  %14 = add i64 %1, 3738463721
  %15 = and i64 %14, 4294967295
  %16 = sub i64 %15, %6
  %17 = add i64 %16, -8966499891241025536
  %18 = add nuw nsw i64 %3, 1916839076
  %19 = and i64 %18, 4294967295
  %20 = add i64 %11, -5209706961095884800
  %21 = or disjoint i64 %20, %19
  %22 = add i64 %1, 3413763662
  %23 = and i64 %22, 4294967295
  %24 = sub i64 %23, %6
  %25 = add i64 %24, -3692699390884970496
  %26 = add nuw nsw i64 %3, 2186989693
  %27 = and i64 %26, 4294967295
  %28 = add i64 %11, -3675093284851548160
  %29 = or disjoint i64 %28, %27
  %30 = add i64 %1, 3087550068
  %31 = and i64 %30, 4294967295
  %32 = sub i64 %31, %6
  %33 = add i64 %32, -629619330597781504
  %34 = add nuw nsw i64 %3, 3761606886
  %35 = and i64 %34, 4294967295
  %36 = add i64 %11, -9134946786308259840
  %37 = or disjoint i64 %36, %35
  %38 = sub i64 0, %1
  %39 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %38, i64 0
  %40 = insertelement <2 x i64> <i64 poison, i64 -7046029288634856825>, i64 %1, i64 0
  %41 = load <2 x i64>, ptr %0, align 1
  %42 = xor <2 x i64> %41, <i64 2568260970027576377, i64 -639039334258736852>
  %43 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %42, <2 x i64> splat (i64 32))
  %44 = bitcast <2 x i64> %43 to <4 x i32>
  %45 = bitcast <2 x i64> %42 to <4 x i32>
  %46 = tail call <2 x i64> asm "vmulouw $0, $1, $2", "=v,v,v"(<4 x i32> %45, <4 x i32> %44) #2
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %48 = load <2 x i64>, ptr %47, align 1
  %49 = xor <2 x i64> %48, <i64 -8966499887502561815, i64 -5209706959179045724>
  %50 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %49, <2 x i64> splat (i64 32))
  %51 = bitcast <2 x i64> %50 to <4 x i32>
  %52 = bitcast <2 x i64> %49 to <4 x i32>
  %53 = tail call <2 x i64> asm "vmulouw $0, $1, $2", "=v,v,v"(<4 x i32> %52, <4 x i32> %51) #2
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %55 = load <2 x i64>, ptr %54, align 1
  %56 = xor <2 x i64> %55, <i64 -3692699387471206834, i64 -3675093282664558467>
  %57 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %56, <2 x i64> splat (i64 32))
  %58 = bitcast <2 x i64> %57 to <4 x i32>
  %59 = bitcast <2 x i64> %56 to <4 x i32>
  %60 = tail call <2 x i64> asm "vmulouw $0, $1, $2", "=v,v,v"(<4 x i32> %59, <4 x i32> %58) #2
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %62 = load <2 x i64>, ptr %61, align 1
  %63 = xor <2 x i64> %62, <i64 -629619327510231436, i64 -9134946782546652954>
  %64 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %63, <2 x i64> splat (i64 32))
  %65 = bitcast <2 x i64> %64 to <4 x i32>
  %66 = bitcast <2 x i64> %63 to <4 x i32>
  %67 = tail call <2 x i64> asm "vmulouw $0, $1, $2", "=v,v,v"(<4 x i32> %66, <4 x i32> %65) #2
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %69 = load <2 x i64>, ptr %68, align 1
  %70 = xor <2 x i64> %69, <i64 -639039334258736852, i64 -8966499887502561815>
  %71 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %70, <2 x i64> splat (i64 32))
  %72 = bitcast <2 x i64> %71 to <4 x i32>
  %73 = bitcast <2 x i64> %70 to <4 x i32>
  %74 = tail call <2 x i64> asm "vmulouw $0, $1, $2", "=v,v,v"(<4 x i32> %73, <4 x i32> %72) #2
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %76 = load <2 x i64>, ptr %75, align 1
  %77 = xor <2 x i64> %76, <i64 -5209706959179045724, i64 -3692699387471206834>
  %78 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %77, <2 x i64> splat (i64 32))
  %79 = bitcast <2 x i64> %78 to <4 x i32>
  %80 = bitcast <2 x i64> %77 to <4 x i32>
  %81 = tail call <2 x i64> asm "vmulouw $0, $1, $2", "=v,v,v"(<4 x i32> %80, <4 x i32> %79) #2
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %83 = load <2 x i64>, ptr %82, align 1
  %84 = xor <2 x i64> %83, <i64 -3675093282664558467, i64 -629619327510231436>
  %85 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %84, <2 x i64> splat (i64 32))
  %86 = bitcast <2 x i64> %85 to <4 x i32>
  %87 = bitcast <2 x i64> %84 to <4 x i32>
  %88 = tail call <2 x i64> asm "vmulouw $0, $1, $2", "=v,v,v"(<4 x i32> %87, <4 x i32> %86) #2
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %90 = load <2 x i64>, ptr %89, align 1
  %91 = xor <2 x i64> %90, <i64 -9134946782546652954, i64 -7943504444863786309>
  %92 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %91, <2 x i64> splat (i64 32))
  %93 = bitcast <2 x i64> %92 to <4 x i32>
  %94 = bitcast <2 x i64> %91 to <4 x i32>
  %95 = tail call <2 x i64> asm "vmulouw $0, $1, $2", "=v,v,v"(<4 x i32> %94, <4 x i32> %93) #2
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %97 = load <2 x i64>, ptr %96, align 1
  %98 = xor <2 x i64> %97, <i64 -8966499887502561815, i64 -5209706959179045724>
  %99 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %98, <2 x i64> splat (i64 32))
  %100 = bitcast <2 x i64> %99 to <4 x i32>
  %101 = bitcast <2 x i64> %98 to <4 x i32>
  %102 = tail call <2 x i64> asm "vmulouw $0, $1, $2", "=v,v,v"(<4 x i32> %101, <4 x i32> %100) #2
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %104 = load <2 x i64>, ptr %103, align 1
  %105 = xor <2 x i64> %104, <i64 -3692699387471206834, i64 -3675093282664558467>
  %106 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %105, <2 x i64> splat (i64 32))
  %107 = bitcast <2 x i64> %106 to <4 x i32>
  %108 = bitcast <2 x i64> %105 to <4 x i32>
  %109 = tail call <2 x i64> asm "vmulouw $0, $1, $2", "=v,v,v"(<4 x i32> %108, <4 x i32> %107) #2
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %111 = load <2 x i64>, ptr %110, align 1
  %112 = xor <2 x i64> %111, <i64 -629619327510231436, i64 -9134946782546652954>
  %113 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %112, <2 x i64> splat (i64 32))
  %114 = bitcast <2 x i64> %113 to <4 x i32>
  %115 = bitcast <2 x i64> %112 to <4 x i32>
  %116 = tail call <2 x i64> asm "vmulouw $0, $1, $2", "=v,v,v"(<4 x i32> %115, <4 x i32> %114) #2
  %117 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %118 = load <2 x i64>, ptr %117, align 1
  %119 = xor <2 x i64> %118, <i64 -7943504444863786309, i64 1968968742000944523>
  %120 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %119, <2 x i64> splat (i64 32))
  %121 = bitcast <2 x i64> %120 to <4 x i32>
  %122 = bitcast <2 x i64> %119 to <4 x i32>
  %123 = tail call <2 x i64> asm "vmulouw $0, $1, $2", "=v,v,v"(<4 x i32> %122, <4 x i32> %121) #2
  %124 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %125 = load <2 x i64>, ptr %124, align 1
  %126 = xor <2 x i64> %125, <i64 -5209706959179045724, i64 -3692699387471206834>
  %127 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %126, <2 x i64> splat (i64 32))
  %128 = bitcast <2 x i64> %127 to <4 x i32>
  %129 = bitcast <2 x i64> %126 to <4 x i32>
  %130 = tail call <2 x i64> asm "vmulouw $0, $1, $2", "=v,v,v"(<4 x i32> %129, <4 x i32> %128) #2
  %131 = add <2 x i64> %41, %40
  %132 = add <2 x i64> %131, %46
  %133 = add <2 x i64> %132, %69
  %134 = add <2 x i64> %133, %74
  %135 = add <2 x i64> %134, %97
  %136 = add <2 x i64> %135, %102
  %137 = add <2 x i64> %136, %125
  %138 = add <2 x i64> %137, %130
  %139 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %140 = load <2 x i64>, ptr %139, align 1
  %141 = xor <2 x i64> %140, <i64 -3675093282664558467, i64 -629619327510231436>
  %142 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %141, <2 x i64> splat (i64 32))
  %143 = bitcast <2 x i64> %142 to <4 x i32>
  %144 = bitcast <2 x i64> %141 to <4 x i32>
  %145 = tail call <2 x i64> asm "vmulouw $0, $1, $2", "=v,v,v"(<4 x i32> %144, <4 x i32> %143) #2
  %146 = add <2 x i64> %48, <i64 -4417276706812531889, i64 1609587929392839161>
  %147 = add <2 x i64> %146, %53
  %148 = add <2 x i64> %147, %76
  %149 = add <2 x i64> %148, %81
  %150 = add <2 x i64> %149, %104
  %151 = add <2 x i64> %150, %109
  %152 = add <2 x i64> %151, %140
  %153 = add <2 x i64> %152, %145
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %155 = load <2 x i64>, ptr %154, align 1
  %156 = xor <2 x i64> %155, <i64 -9134946782546652954, i64 -7943504444863786309>
  %157 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %156, <2 x i64> splat (i64 32))
  %158 = bitcast <2 x i64> %157 to <4 x i32>
  %159 = bitcast <2 x i64> %156 to <4 x i32>
  %160 = tail call <2 x i64> asm "vmulouw $0, $1, $2", "=v,v,v"(<4 x i32> %159, <4 x i32> %158) #2
  %161 = add <2 x i64> %55, <i64 -8796714831421723037, i64 2870177450012600261>
  %162 = add <2 x i64> %161, %60
  %163 = add <2 x i64> %162, %83
  %164 = add <2 x i64> %163, %88
  %165 = add <2 x i64> %164, %111
  %166 = add <2 x i64> %165, %116
  %167 = add <2 x i64> %166, %155
  %168 = add <2 x i64> %167, %160
  %169 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %170 = load <2 x i64>, ptr %169, align 1
  %171 = xor <2 x i64> %170, <i64 1968968742000944523, i64 -6769480549562824553>
  %172 = tail call <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64> %171, <2 x i64> splat (i64 32))
  %173 = bitcast <2 x i64> %172 to <4 x i32>
  %174 = bitcast <2 x i64> %171 to <4 x i32>
  %175 = tail call <2 x i64> asm "vmulouw $0, $1, $2", "=v,v,v"(<4 x i32> %174, <4 x i32> %173) #2
  %176 = add <2 x i64> %62, %39
  %177 = add <2 x i64> %176, %67
  %178 = add <2 x i64> %177, %90
  %179 = add <2 x i64> %178, %95
  %180 = add <2 x i64> %179, %118
  %181 = add <2 x i64> %180, %123
  %182 = add <2 x i64> %181, %170
  %183 = add <2 x i64> %182, %175
  %184 = extractelement <2 x i64> %138, i64 0
  %185 = xor i64 %184, %8
  %186 = extractelement <2 x i64> %138, i64 1
  %187 = xor i64 %186, %13
  %188 = zext i64 %185 to i128
  %189 = zext i64 %187 to i128
  %190 = mul nuw i128 %189, %188
  %191 = lshr i128 %190, 64
  %192 = xor i128 %191, %190
  %193 = trunc i128 %192 to i64
  %194 = add i64 %193, 3997421333012711168
  %195 = extractelement <2 x i64> %153, i64 0
  %196 = xor i64 %195, %17
  %197 = extractelement <2 x i64> %153, i64 1
  %198 = xor i64 %197, %21
  %199 = zext i64 %196 to i128
  %200 = zext i64 %198 to i128
  %201 = mul nuw i128 %200, %199
  %202 = lshr i128 %201, 64
  %203 = xor i128 %202, %201
  %204 = trunc i128 %203 to i64
  %205 = add i64 %194, %204
  %206 = extractelement <2 x i64> %168, i64 0
  %207 = xor i64 %206, %25
  %208 = extractelement <2 x i64> %168, i64 1
  %209 = xor i64 %208, %29
  %210 = zext i64 %207 to i128
  %211 = zext i64 %209 to i128
  %212 = mul nuw i128 %211, %210
  %213 = lshr i128 %212, 64
  %214 = xor i128 %213, %212
  %215 = trunc i128 %214 to i64
  %216 = add i64 %205, %215
  %217 = extractelement <2 x i64> %183, i64 0
  %218 = xor i64 %217, %33
  %219 = extractelement <2 x i64> %183, i64 1
  %220 = xor i64 %219, %37
  %221 = zext i64 %218 to i128
  %222 = zext i64 %220 to i128
  %223 = mul nuw i128 %222, %221
  %224 = lshr i128 %223, 64
  %225 = xor i128 %224, %223
  %226 = trunc i128 %225 to i64
  %227 = add i64 %216, %226
  %228 = lshr i64 %227, 37
  %229 = xor i64 %228, %227
  %230 = mul i64 %229, 1609587929392839161
  %231 = lshr i64 %230, 32
  %232 = xor i64 %231, %230
  ret i64 %232
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.ppc.altivec.vrld(<2 x i64>, <2 x i64>) #1

attributes #0 = { nofree nounwind memory(argmem: read) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pwr8" "target-features"="+altivec,+bpermd,+crbits,+crypto,+direct-move,+extdiv,+htm,+isa-v206-instructions,+isa-v207-instructions,+power8-vector,+quadword-atomics,+vsx,-aix-shared-lib-tls-model-opt,-aix-small-local-dynamic-tls,-aix-small-local-exec-tls,-isa-v30-instructions,-power9-vector,-privileged,-rop-protect,-spe" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 57145}
