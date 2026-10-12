; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/d5e42a6/api64_len300_avx2/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/d5e42a6/api64_len300_avx2/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [88 x i8], align 8
  %4 = alloca [72 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4)
  %5 = add i64 %1, -4734510112055689544
  store i64 %5, ptr %3, align 8
  %6 = sub i64 2066345149520216444, %1
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %6, ptr %7, align 8
  %8 = add i64 %1, -2623469361688619810
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %8, ptr %9, align 8
  %10 = sub i64 2262974939099578482, %1
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %10, ptr %11, align 8
  %12 = add i64 %1, 8711581037947681227
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %12, ptr %13, align 8
  %14 = sub i64 2410270004345854594, %1
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %14, ptr %15, align 8
  %16 = add i64 %1, -8204357891075471176
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %16, ptr %17, align 8
  %18 = sub i64 5487137525590930912, %1
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %18, ptr %19, align 8
  %20 = add i64 %1, -3818837453329782724
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %20, ptr %21, align 8
  %22 = sub i64 -6688317018830679928, %1
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %22, ptr %23, align 8
  %24 = add i64 %1, 5690594596133299313
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %24, ptr %25, align 8
  %26 = sub i64 7238261902898274248, %1
  store i64 %26, ptr %4, align 8
  %27 = add i64 %1, -4329134394285701654
  %28 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %27, ptr %28, align 8
  %29 = sub i64 -1485321483350670907, %1
  %30 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %29, ptr %30, align 8
  %31 = add i64 %1, 5321830579834785047
  %32 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %31, ptr %32, align 8
  %33 = sub i64 -7032137544937171245, %1
  %34 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %33, ptr %34, align 8
  %35 = add i64 %1, -242834301215959509
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %35, ptr %36, align 8
  %37 = sub i64 -3588858202114426737, %1
  %38 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %37, ptr %38, align 8
  %39 = add i64 %1, 2883454493032893253
  %40 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %39, ptr %40, align 8
  %41 = sub i64 9097354517224871855, %1
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %41, ptr %42, align 8
  %43 = load <4 x i64>, ptr %0, align 1
  %44 = load <4 x i64>, ptr %3, align 8
  %45 = xor <4 x i64> %44, %43
  %46 = bitcast <4 x i64> %45 to <8 x i32>
  %47 = shufflevector <8 x i32> %46, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %48 = bitcast <8 x i32> %47 to <4 x i64>
  %49 = and <4 x i64> %45, splat (i64 4294967295)
  %50 = and <4 x i64> %48, splat (i64 4294967295)
  %51 = mul nuw <4 x i64> %50, %49
  %52 = add <4 x i64> %43, <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %54 = load <4 x i64>, ptr %53, align 1
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %56 = load <4 x i64>, ptr %55, align 8
  %57 = xor <4 x i64> %56, %54
  %58 = bitcast <4 x i64> %57 to <8 x i32>
  %59 = shufflevector <8 x i32> %58, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %60 = bitcast <8 x i32> %59 to <4 x i64>
  %61 = and <4 x i64> %57, splat (i64 4294967295)
  %62 = and <4 x i64> %60, splat (i64 4294967295)
  %63 = mul nuw <4 x i64> %62, %61
  %64 = add <4 x i64> %54, <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %66 = load <4 x i64>, ptr %65, align 1
  %67 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %68 = load <4 x i64>, ptr %67, align 8
  %69 = xor <4 x i64> %68, %66
  %70 = bitcast <4 x i64> %69 to <8 x i32>
  %71 = shufflevector <8 x i32> %70, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %72 = bitcast <8 x i32> %71 to <4 x i64>
  %73 = and <4 x i64> %69, splat (i64 4294967295)
  %74 = and <4 x i64> %72, splat (i64 4294967295)
  %75 = mul nuw <4 x i64> %74, %73
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %77 = load <4 x i64>, ptr %76, align 1
  %78 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %79 = load <4 x i64>, ptr %78, align 8
  %80 = xor <4 x i64> %79, %77
  %81 = bitcast <4 x i64> %80 to <8 x i32>
  %82 = shufflevector <8 x i32> %81, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %83 = bitcast <8 x i32> %82 to <4 x i64>
  %84 = and <4 x i64> %80, splat (i64 4294967295)
  %85 = and <4 x i64> %83, splat (i64 4294967295)
  %86 = mul nuw <4 x i64> %85, %84
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %88 = load <4 x i64>, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %90 = load <4 x i64>, ptr %89, align 8
  %91 = xor <4 x i64> %90, %88
  %92 = bitcast <4 x i64> %91 to <8 x i32>
  %93 = shufflevector <8 x i32> %92, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %94 = bitcast <8 x i32> %93 to <4 x i64>
  %95 = and <4 x i64> %91, splat (i64 4294967295)
  %96 = and <4 x i64> %94, splat (i64 4294967295)
  %97 = mul nuw <4 x i64> %96, %95
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %99 = load <4 x i64>, ptr %98, align 1
  %100 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %101 = load <4 x i64>, ptr %100, align 8
  %102 = xor <4 x i64> %101, %99
  %103 = bitcast <4 x i64> %102 to <8 x i32>
  %104 = shufflevector <8 x i32> %103, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %105 = bitcast <8 x i32> %104 to <4 x i64>
  %106 = and <4 x i64> %102, splat (i64 4294967295)
  %107 = and <4 x i64> %105, splat (i64 4294967295)
  %108 = mul nuw <4 x i64> %107, %106
  %109 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %110 = load <4 x i64>, ptr %109, align 1
  %111 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %112 = load <4 x i64>, ptr %111, align 8
  %113 = xor <4 x i64> %112, %110
  %114 = bitcast <4 x i64> %113 to <8 x i32>
  %115 = shufflevector <8 x i32> %114, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %116 = bitcast <8 x i32> %115 to <4 x i64>
  %117 = and <4 x i64> %113, splat (i64 4294967295)
  %118 = and <4 x i64> %116, splat (i64 4294967295)
  %119 = mul nuw <4 x i64> %118, %117
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %121 = load <4 x i64>, ptr %120, align 1
  %122 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %123 = load <4 x i64>, ptr %122, align 8
  %124 = xor <4 x i64> %123, %121
  %125 = bitcast <4 x i64> %124 to <8 x i32>
  %126 = shufflevector <8 x i32> %125, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %127 = bitcast <8 x i32> %126 to <4 x i64>
  %128 = and <4 x i64> %124, splat (i64 4294967295)
  %129 = and <4 x i64> %127, splat (i64 4294967295)
  %130 = mul nuw <4 x i64> %129, %128
  %131 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %132 = load <4 x i64>, ptr %131, align 1
  %133 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %134 = load <4 x i64>, ptr %133, align 1
  %135 = xor <4 x i64> %134, %132
  %136 = bitcast <4 x i64> %135 to <8 x i32>
  %137 = shufflevector <8 x i32> %136, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %138 = bitcast <8 x i32> %137 to <4 x i64>
  %139 = and <4 x i64> %135, splat (i64 4294967295)
  %140 = and <4 x i64> %138, splat (i64 4294967295)
  %141 = mul nuw <4 x i64> %140, %139
  %142 = add <4 x i64> %52, %66
  %143 = add <4 x i64> %142, %51
  %144 = add <4 x i64> %143, %88
  %145 = add <4 x i64> %144, %75
  %146 = add <4 x i64> %145, %110
  %147 = add <4 x i64> %146, %97
  %148 = add <4 x i64> %147, %132
  %149 = add <4 x i64> %148, %119
  %150 = add <4 x i64> %149, %141
  %151 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %152 = load <4 x i64>, ptr %151, align 1
  %153 = getelementptr inbounds nuw i8, ptr %4, i64 33
  %154 = load <4 x i64>, ptr %153, align 1
  %155 = xor <4 x i64> %154, %152
  %156 = bitcast <4 x i64> %155 to <8 x i32>
  %157 = shufflevector <8 x i32> %156, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %158 = bitcast <8 x i32> %157 to <4 x i64>
  %159 = and <4 x i64> %155, splat (i64 4294967295)
  %160 = and <4 x i64> %158, splat (i64 4294967295)
  %161 = mul nuw <4 x i64> %160, %159
  %162 = add <4 x i64> %64, %77
  %163 = add <4 x i64> %162, %63
  %164 = add <4 x i64> %163, %99
  %165 = add <4 x i64> %164, %86
  %166 = add <4 x i64> %165, %121
  %167 = add <4 x i64> %166, %108
  %168 = add <4 x i64> %167, %152
  %169 = add <4 x i64> %168, %130
  %170 = add <4 x i64> %169, %161
  %171 = extractelement <4 x i64> %150, i64 0
  %172 = bitcast <4 x i64> %68 to i256
  %173 = lshr i256 %172, 24
  %174 = trunc i256 %173 to i64
  %175 = xor i64 %171, %174
  %176 = extractelement <4 x i64> %150, i64 1
  %177 = bitcast <4 x i64> %90 to i256
  %178 = lshr i256 %177, 24
  %179 = trunc i256 %178 to i64
  %180 = xor i64 %176, %179
  %181 = zext i64 %175 to i128
  %182 = zext i64 %180 to i128
  %183 = mul nuw i128 %182, %181
  %184 = lshr i128 %183, 64
  %185 = xor i128 %184, %183
  %186 = trunc i128 %185 to i64
  %187 = add i64 %186, 7566781886141388340
  %188 = extractelement <4 x i64> %150, i64 2
  %189 = bitcast <4 x i64> %112 to i256
  %190 = lshr i256 %189, 24
  %191 = trunc i256 %190 to i64
  %192 = xor i64 %188, %191
  %193 = extractelement <4 x i64> %150, i64 3
  %194 = lshr i256 %189, 88
  %195 = trunc i256 %194 to i64
  %196 = xor i64 %193, %195
  %197 = zext i64 %192 to i128
  %198 = zext i64 %196 to i128
  %199 = mul nuw i128 %198, %197
  %200 = lshr i128 %199, 64
  %201 = xor i128 %200, %199
  %202 = trunc i128 %201 to i64
  %203 = add i64 %187, %202
  %204 = extractelement <4 x i64> %170, i64 0
  %205 = lshr i256 %189, 152
  %206 = trunc i256 %205 to i64
  %207 = xor i64 %204, %206
  %208 = extractelement <4 x i64> %170, i64 1
  %209 = getelementptr inbounds nuw i8, ptr %3, i64 51
  %210 = load i64, ptr %209, align 1
  %211 = xor i64 %208, %210
  %212 = zext i64 %207 to i128
  %213 = zext i64 %211 to i128
  %214 = mul nuw i128 %213, %212
  %215 = lshr i128 %214, 64
  %216 = xor i128 %215, %214
  %217 = trunc i128 %216 to i64
  %218 = add i64 %203, %217
  %219 = extractelement <4 x i64> %170, i64 2
  %220 = bitcast <4 x i64> %123 to i256
  %221 = lshr i256 %220, 24
  %222 = trunc i256 %221 to i64
  %223 = xor i64 %219, %222
  %224 = extractelement <4 x i64> %170, i64 3
  %225 = lshr i256 %220, 88
  %226 = trunc i256 %225 to i64
  %227 = xor i64 %224, %226
  %228 = zext i64 %223 to i128
  %229 = zext i64 %227 to i128
  %230 = mul nuw i128 %229, %228
  %231 = lshr i128 %230, 64
  %232 = xor i128 %231, %230
  %233 = trunc i128 %232 to i64
  %234 = add i64 %218, %233
  %235 = lshr i64 %234, 37
  %236 = xor i64 %235, %234
  %237 = mul i64 %236, 1609587929392839161
  %238 = lshr i64 %237, 32
  %239 = xor i64 %238, %237
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4)
  ret i64 %239
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
