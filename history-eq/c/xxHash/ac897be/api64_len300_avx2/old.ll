; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/ac897be/api64_len300_avx2/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/ac897be/api64_len300_avx2/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [88 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3)
  %4 = add i64 %1, -4734510112055689544
  store i64 %4, ptr %3, align 8
  %5 = sub i64 2066345149520216444, %1
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %5, ptr %6, align 8
  %7 = add i64 %1, -2623469361688619810
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %7, ptr %8, align 8
  %9 = sub i64 2262974939099578482, %1
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %9, ptr %10, align 8
  %11 = add i64 %1, 8711581037947681227
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %11, ptr %12, align 8
  %13 = sub i64 2410270004345854594, %1
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %13, ptr %14, align 8
  %15 = add i64 %1, -8204357891075471176
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %15, ptr %16, align 8
  %17 = sub i64 5487137525590930912, %1
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %17, ptr %18, align 8
  %19 = add i64 %1, -3818837453329782724
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %19, ptr %20, align 8
  %21 = sub i64 -6688317018830679928, %1
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %21, ptr %22, align 8
  %23 = add i64 %1, 5690594596133299313
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %23, ptr %24, align 8
  %25 = add i64 %1, -4329134394285701654
  %26 = insertelement <4 x i64> poison, i64 %25, i64 0
  %27 = sub i64 -1485321483350670907, %1
  %28 = insertelement <4 x i64> %26, i64 %27, i64 1
  %29 = add i64 %1, 5321830579834785047
  %30 = insertelement <4 x i64> %28, i64 %29, i64 2
  %31 = sub i64 -7032137544937171245, %1
  %32 = insertelement <4 x i64> %30, i64 %31, i64 3
  %33 = add i64 %1, -242834301215959509
  %34 = insertelement <4 x i64> poison, i64 %33, i64 0
  %35 = sub i64 -3588858202114426737, %1
  %36 = insertelement <4 x i64> %34, i64 %35, i64 1
  %37 = add i64 %1, 2883454493032893253
  %38 = insertelement <4 x i64> %36, i64 %37, i64 2
  %39 = sub i64 9097354517224871855, %1
  %40 = insertelement <4 x i64> %38, i64 %39, i64 3
  %41 = load <4 x i64>, ptr %0, align 1
  %42 = load <4 x i64>, ptr %3, align 8
  %43 = xor <4 x i64> %42, %41
  %44 = bitcast <4 x i64> %43 to <8 x i32>
  %45 = shufflevector <8 x i32> %44, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %46 = bitcast <8 x i32> %45 to <4 x i64>
  %47 = and <4 x i64> %43, splat (i64 4294967295)
  %48 = and <4 x i64> %46, splat (i64 4294967295)
  %49 = mul nuw <4 x i64> %48, %47
  %50 = add <4 x i64> %41, <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %52 = load <4 x i64>, ptr %51, align 1
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %54 = load <4 x i64>, ptr %53, align 8
  %55 = xor <4 x i64> %54, %52
  %56 = bitcast <4 x i64> %55 to <8 x i32>
  %57 = shufflevector <8 x i32> %56, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %58 = bitcast <8 x i32> %57 to <4 x i64>
  %59 = and <4 x i64> %55, splat (i64 4294967295)
  %60 = and <4 x i64> %58, splat (i64 4294967295)
  %61 = mul nuw <4 x i64> %60, %59
  %62 = add <4 x i64> %52, <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %64 = load <4 x i64>, ptr %63, align 1
  %65 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %66 = load <4 x i64>, ptr %65, align 8
  %67 = xor <4 x i64> %66, %64
  %68 = bitcast <4 x i64> %67 to <8 x i32>
  %69 = shufflevector <8 x i32> %68, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %70 = bitcast <8 x i32> %69 to <4 x i64>
  %71 = and <4 x i64> %67, splat (i64 4294967295)
  %72 = and <4 x i64> %70, splat (i64 4294967295)
  %73 = mul nuw <4 x i64> %72, %71
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %75 = load <4 x i64>, ptr %74, align 1
  %76 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %77 = load <4 x i64>, ptr %76, align 8
  %78 = xor <4 x i64> %77, %75
  %79 = bitcast <4 x i64> %78 to <8 x i32>
  %80 = shufflevector <8 x i32> %79, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %81 = bitcast <8 x i32> %80 to <4 x i64>
  %82 = and <4 x i64> %78, splat (i64 4294967295)
  %83 = and <4 x i64> %81, splat (i64 4294967295)
  %84 = mul nuw <4 x i64> %83, %82
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %86 = load <4 x i64>, ptr %85, align 1
  %87 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %88 = load <4 x i64>, ptr %87, align 8
  %89 = xor <4 x i64> %88, %86
  %90 = bitcast <4 x i64> %89 to <8 x i32>
  %91 = shufflevector <8 x i32> %90, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %92 = bitcast <8 x i32> %91 to <4 x i64>
  %93 = and <4 x i64> %89, splat (i64 4294967295)
  %94 = and <4 x i64> %92, splat (i64 4294967295)
  %95 = mul nuw <4 x i64> %94, %93
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %97 = load <4 x i64>, ptr %96, align 1
  %98 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %99 = load <4 x i64>, ptr %98, align 8
  %100 = xor <4 x i64> %99, %97
  %101 = bitcast <4 x i64> %100 to <8 x i32>
  %102 = shufflevector <8 x i32> %101, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %103 = bitcast <8 x i32> %102 to <4 x i64>
  %104 = and <4 x i64> %100, splat (i64 4294967295)
  %105 = and <4 x i64> %103, splat (i64 4294967295)
  %106 = mul nuw <4 x i64> %105, %104
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %108 = load <4 x i64>, ptr %107, align 1
  %109 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %110 = load <4 x i64>, ptr %109, align 8
  %111 = xor <4 x i64> %110, %108
  %112 = bitcast <4 x i64> %111 to <8 x i32>
  %113 = shufflevector <8 x i32> %112, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %114 = bitcast <8 x i32> %113 to <4 x i64>
  %115 = and <4 x i64> %111, splat (i64 4294967295)
  %116 = and <4 x i64> %114, splat (i64 4294967295)
  %117 = mul nuw <4 x i64> %116, %115
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %119 = load <4 x i64>, ptr %118, align 1
  %120 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %121 = load <4 x i64>, ptr %120, align 8
  %122 = xor <4 x i64> %121, %119
  %123 = bitcast <4 x i64> %122 to <8 x i32>
  %124 = shufflevector <8 x i32> %123, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %125 = bitcast <8 x i32> %124 to <4 x i64>
  %126 = and <4 x i64> %122, splat (i64 4294967295)
  %127 = and <4 x i64> %125, splat (i64 4294967295)
  %128 = mul nuw <4 x i64> %127, %126
  %129 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %130 = load <4 x i64>, ptr %129, align 1
  %131 = xor <4 x i64> %130, %32
  %132 = bitcast <4 x i64> %131 to <8 x i32>
  %133 = shufflevector <8 x i32> %132, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %134 = bitcast <8 x i32> %133 to <4 x i64>
  %135 = and <4 x i64> %131, splat (i64 4294967295)
  %136 = and <4 x i64> %134, splat (i64 4294967295)
  %137 = mul nuw <4 x i64> %136, %135
  %138 = add <4 x i64> %50, %64
  %139 = add <4 x i64> %138, %49
  %140 = add <4 x i64> %139, %86
  %141 = add <4 x i64> %140, %73
  %142 = add <4 x i64> %141, %108
  %143 = add <4 x i64> %142, %95
  %144 = add <4 x i64> %143, %130
  %145 = add <4 x i64> %144, %117
  %146 = add <4 x i64> %145, %137
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %148 = load <4 x i64>, ptr %147, align 1
  %149 = xor <4 x i64> %148, %40
  %150 = bitcast <4 x i64> %149 to <8 x i32>
  %151 = shufflevector <8 x i32> %150, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %152 = bitcast <8 x i32> %151 to <4 x i64>
  %153 = and <4 x i64> %149, splat (i64 4294967295)
  %154 = and <4 x i64> %152, splat (i64 4294967295)
  %155 = mul nuw <4 x i64> %154, %153
  %156 = add <4 x i64> %62, %75
  %157 = add <4 x i64> %156, %61
  %158 = add <4 x i64> %157, %97
  %159 = add <4 x i64> %158, %84
  %160 = add <4 x i64> %159, %119
  %161 = add <4 x i64> %160, %106
  %162 = add <4 x i64> %161, %148
  %163 = add <4 x i64> %162, %128
  %164 = add <4 x i64> %163, %155
  %165 = extractelement <4 x i64> %146, i64 0
  %166 = load i64, ptr %3, align 8
  %167 = xor i64 %165, %166
  %168 = shufflevector <4 x i64> %146, <4 x i64> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %169 = xor <4 x i64> %168, %66
  %170 = extractelement <4 x i64> %169, i64 0
  %171 = zext i64 %167 to i128
  %172 = zext i64 %170 to i128
  %173 = mul nuw i128 %172, %171
  %174 = lshr i128 %173, 64
  %175 = xor i128 %174, %173
  %176 = trunc i128 %175 to i64
  %177 = add i64 %176, 7566781886141388340
  %178 = shufflevector <4 x i64> %146, <4 x i64> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %179 = xor <4 x i64> %178, %88
  %180 = extractelement <4 x i64> %179, i64 0
  %181 = shufflevector <4 x i64> %146, <4 x i64> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %182 = xor <4 x i64> %181, %110
  %183 = extractelement <4 x i64> %182, i64 0
  %184 = zext i64 %180 to i128
  %185 = zext i64 %183 to i128
  %186 = mul nuw i128 %185, %184
  %187 = lshr i128 %186, 64
  %188 = xor i128 %187, %186
  %189 = trunc i128 %188 to i64
  %190 = add i64 %177, %189
  %191 = shufflevector <4 x i64> %110, <4 x i64> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %192 = xor <4 x i64> %164, %191
  %193 = extractelement <4 x i64> %192, i64 0
  %194 = shufflevector <4 x i64> %110, <4 x i64> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %195 = xor <4 x i64> %164, %194
  %196 = extractelement <4 x i64> %195, i64 1
  %197 = zext i64 %193 to i128
  %198 = zext i64 %196 to i128
  %199 = mul nuw i128 %198, %197
  %200 = lshr i128 %199, 64
  %201 = xor i128 %200, %199
  %202 = trunc i128 %201 to i64
  %203 = add i64 %190, %202
  %204 = shufflevector <4 x i64> %110, <4 x i64> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %205 = xor <4 x i64> %164, %204
  %206 = extractelement <4 x i64> %205, i64 2
  %207 = shufflevector <4 x i64> %164, <4 x i64> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %208 = xor <4 x i64> %207, %121
  %209 = extractelement <4 x i64> %208, i64 0
  %210 = zext i64 %206 to i128
  %211 = zext i64 %209 to i128
  %212 = mul nuw i128 %211, %210
  %213 = lshr i128 %212, 64
  %214 = xor i128 %213, %212
  %215 = trunc i128 %214 to i64
  %216 = add i64 %203, %215
  %217 = lshr i64 %216, 37
  %218 = xor i64 %217, %216
  %219 = mul i64 %218, 1609587929392839161
  %220 = lshr i64 %219, 32
  %221 = xor i64 %220, %219
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3)
  ret i64 %221
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
