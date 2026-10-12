; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0ab31bc/api64_len300_avx2_long/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0ab31bc/api64_len300_avx2_long/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [88 x i8], align 64
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3)
  %4 = add i64 %1, -4734510112055689544
  store i64 %4, ptr %3, align 64
  %5 = sub i64 2066345149520216444, %1
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %5, ptr %6, align 8
  %7 = add i64 %1, -2623469361688619810
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %7, ptr %8, align 16
  %9 = sub i64 2262974939099578482, %1
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %9, ptr %10, align 8
  %11 = add i64 %1, 8711581037947681227
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %11, ptr %12, align 32
  %13 = sub i64 2410270004345854594, %1
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %13, ptr %14, align 8
  %15 = add i64 %1, -8204357891075471176
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %15, ptr %16, align 16
  %17 = sub i64 5487137525590930912, %1
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %17, ptr %18, align 8
  %19 = add i64 %1, -3818837453329782724
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %19, ptr %20, align 64
  %21 = sub i64 -6688317018830679928, %1
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %21, ptr %22, align 8
  %23 = add i64 %1, 5690594596133299313
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 %23, ptr %24, align 16
  %25 = load <4 x i64>, ptr %0, align 1
  %26 = load <4 x i64>, ptr %3, align 64
  %27 = xor <4 x i64> %26, %25
  %28 = bitcast <4 x i64> %27 to <8 x i32>
  %29 = shufflevector <8 x i32> %28, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %30 = bitcast <8 x i32> %29 to <4 x i64>
  %31 = and <4 x i64> %27, splat (i64 4294967295)
  %32 = and <4 x i64> %30, splat (i64 4294967295)
  %33 = mul nuw <4 x i64> %32, %31
  %34 = add <4 x i64> %25, <i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %36 = load <4 x i64>, ptr %35, align 1
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %38 = load <4 x i64>, ptr %37, align 32
  %39 = xor <4 x i64> %38, %36
  %40 = bitcast <4 x i64> %39 to <8 x i32>
  %41 = shufflevector <8 x i32> %40, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %42 = bitcast <8 x i32> %41 to <4 x i64>
  %43 = and <4 x i64> %39, splat (i64 4294967295)
  %44 = and <4 x i64> %42, splat (i64 4294967295)
  %45 = mul nuw <4 x i64> %44, %43
  %46 = add <4 x i64> %36, <i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761>
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %48 = load <4 x i64>, ptr %47, align 1
  %49 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %50 = load <4 x i64>, ptr %49, align 8
  %51 = xor <4 x i64> %50, %48
  %52 = bitcast <4 x i64> %51 to <8 x i32>
  %53 = shufflevector <8 x i32> %52, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %54 = bitcast <8 x i32> %53 to <4 x i64>
  %55 = and <4 x i64> %51, splat (i64 4294967295)
  %56 = and <4 x i64> %54, splat (i64 4294967295)
  %57 = mul nuw <4 x i64> %56, %55
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %59 = load <4 x i64>, ptr %58, align 1
  %60 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %61 = load <4 x i64>, ptr %60, align 8
  %62 = xor <4 x i64> %61, %59
  %63 = bitcast <4 x i64> %62 to <8 x i32>
  %64 = shufflevector <8 x i32> %63, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %65 = bitcast <8 x i32> %64 to <4 x i64>
  %66 = and <4 x i64> %62, splat (i64 4294967295)
  %67 = and <4 x i64> %65, splat (i64 4294967295)
  %68 = mul nuw <4 x i64> %67, %66
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %70 = load <4 x i64>, ptr %69, align 1
  %71 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %72 = load <4 x i64>, ptr %71, align 16
  %73 = xor <4 x i64> %72, %70
  %74 = bitcast <4 x i64> %73 to <8 x i32>
  %75 = shufflevector <8 x i32> %74, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %76 = bitcast <8 x i32> %75 to <4 x i64>
  %77 = and <4 x i64> %73, splat (i64 4294967295)
  %78 = and <4 x i64> %76, splat (i64 4294967295)
  %79 = mul nuw <4 x i64> %78, %77
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %81 = load <4 x i64>, ptr %80, align 1
  %82 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %83 = load <4 x i64>, ptr %82, align 16
  %84 = xor <4 x i64> %83, %81
  %85 = bitcast <4 x i64> %84 to <8 x i32>
  %86 = shufflevector <8 x i32> %85, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %87 = bitcast <8 x i32> %86 to <4 x i64>
  %88 = and <4 x i64> %84, splat (i64 4294967295)
  %89 = and <4 x i64> %87, splat (i64 4294967295)
  %90 = mul nuw <4 x i64> %89, %88
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %92 = load <4 x i64>, ptr %91, align 1
  %93 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %94 = load <4 x i64>, ptr %93, align 8
  %95 = xor <4 x i64> %94, %92
  %96 = bitcast <4 x i64> %95 to <8 x i32>
  %97 = shufflevector <8 x i32> %96, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %98 = bitcast <8 x i32> %97 to <4 x i64>
  %99 = and <4 x i64> %95, splat (i64 4294967295)
  %100 = and <4 x i64> %98, splat (i64 4294967295)
  %101 = mul nuw <4 x i64> %100, %99
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %103 = load <4 x i64>, ptr %102, align 1
  %104 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %105 = load <4 x i64>, ptr %104, align 8
  %106 = xor <4 x i64> %105, %103
  %107 = bitcast <4 x i64> %106 to <8 x i32>
  %108 = shufflevector <8 x i32> %107, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %109 = bitcast <8 x i32> %108 to <4 x i64>
  %110 = and <4 x i64> %106, splat (i64 4294967295)
  %111 = and <4 x i64> %109, splat (i64 4294967295)
  %112 = mul nuw <4 x i64> %111, %110
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %114 = load <4 x i64>, ptr %113, align 1
  %115 = add <4 x i64> %34, %48
  %116 = add <4 x i64> %115, %33
  %117 = add <4 x i64> %116, %70
  %118 = add <4 x i64> %117, %57
  %119 = add <4 x i64> %118, %92
  %120 = add <4 x i64> %119, %79
  %121 = add <4 x i64> %120, %114
  %122 = add <4 x i64> %121, %101
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %124 = load <4 x i64>, ptr %123, align 1
  %125 = add <4 x i64> %46, %59
  %126 = add <4 x i64> %125, %45
  %127 = add <4 x i64> %126, %81
  %128 = add <4 x i64> %127, %68
  %129 = add <4 x i64> %128, %103
  %130 = add <4 x i64> %129, %90
  %131 = add <4 x i64> %130, %124
  %132 = add <4 x i64> %131, %112
  %133 = extractelement <4 x i64> %122, i64 0
  %134 = load i64, ptr %3, align 64
  %135 = xor i64 %133, %134
  %136 = shufflevector <4 x i64> %122, <4 x i64> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %137 = xor <4 x i64> %136, %50
  %138 = extractelement <4 x i64> %137, i64 0
  %139 = zext i64 %135 to i128
  %140 = zext i64 %138 to i128
  %141 = mul nuw i128 %140, %139
  %142 = lshr i128 %141, 64
  %143 = xor i128 %142, %141
  %144 = trunc i128 %143 to i64
  %145 = add i64 %144, 7566781886141388340
  %146 = shufflevector <4 x i64> %122, <4 x i64> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %147 = xor <4 x i64> %146, %72
  %148 = extractelement <4 x i64> %147, i64 0
  %149 = shufflevector <4 x i64> %122, <4 x i64> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %150 = xor <4 x i64> %149, %94
  %151 = extractelement <4 x i64> %150, i64 0
  %152 = zext i64 %148 to i128
  %153 = zext i64 %151 to i128
  %154 = mul nuw i128 %153, %152
  %155 = lshr i128 %154, 64
  %156 = xor i128 %155, %154
  %157 = trunc i128 %156 to i64
  %158 = add i64 %145, %157
  %159 = shufflevector <4 x i64> %94, <4 x i64> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %160 = xor <4 x i64> %132, %159
  %161 = extractelement <4 x i64> %160, i64 0
  %162 = shufflevector <4 x i64> %94, <4 x i64> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %163 = xor <4 x i64> %132, %162
  %164 = extractelement <4 x i64> %163, i64 1
  %165 = zext i64 %161 to i128
  %166 = zext i64 %164 to i128
  %167 = mul nuw i128 %166, %165
  %168 = lshr i128 %167, 64
  %169 = xor i128 %168, %167
  %170 = trunc i128 %169 to i64
  %171 = add i64 %158, %170
  %172 = shufflevector <4 x i64> %94, <4 x i64> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %173 = xor <4 x i64> %132, %172
  %174 = extractelement <4 x i64> %173, i64 2
  %175 = shufflevector <4 x i64> %132, <4 x i64> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %176 = xor <4 x i64> %175, %105
  %177 = extractelement <4 x i64> %176, i64 0
  %178 = zext i64 %174 to i128
  %179 = zext i64 %177 to i128
  %180 = mul nuw i128 %179, %178
  %181 = lshr i128 %180, 64
  %182 = xor i128 %181, %180
  %183 = trunc i128 %182 to i64
  %184 = add i64 %171, %183
  %185 = lshr i64 %184, 37
  %186 = xor i64 %185, %184
  %187 = mul i64 %186, 1609587929392839161
  %188 = lshr i64 %187, 32
  %189 = xor i64 %188, %187
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3)
  ret i64 %189
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
