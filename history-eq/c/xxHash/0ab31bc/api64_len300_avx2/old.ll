; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0ab31bc/api64_len300_avx2/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0ab31bc/api64_len300_avx2/wrapper.c"
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
  %25 = sub i64 0, %1
  %26 = insertelement <4 x i64> <i64 -8796714831421723037, i64 2870177450012600261, i64 poison, i64 0>, i64 %25, i64 2
  %27 = insertelement <4 x i64> <i64 poison, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>, i64 %1, i64 0
  %28 = load <4 x i64>, ptr %0, align 1
  %29 = load <4 x i64>, ptr %3, align 64
  %30 = xor <4 x i64> %29, %28
  %31 = bitcast <4 x i64> %30 to <8 x i32>
  %32 = shufflevector <8 x i32> %31, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %33 = bitcast <8 x i32> %32 to <4 x i64>
  %34 = and <4 x i64> %30, splat (i64 4294967295)
  %35 = and <4 x i64> %33, splat (i64 4294967295)
  %36 = mul nuw <4 x i64> %35, %34
  %37 = add <4 x i64> %28, %27
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %39 = load <4 x i64>, ptr %38, align 1
  %40 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %41 = load <4 x i64>, ptr %40, align 32
  %42 = xor <4 x i64> %41, %39
  %43 = bitcast <4 x i64> %42 to <8 x i32>
  %44 = shufflevector <8 x i32> %43, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %45 = bitcast <8 x i32> %44 to <4 x i64>
  %46 = and <4 x i64> %42, splat (i64 4294967295)
  %47 = and <4 x i64> %45, splat (i64 4294967295)
  %48 = mul nuw <4 x i64> %47, %46
  %49 = add <4 x i64> %39, %26
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %51 = load <4 x i64>, ptr %50, align 1
  %52 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %53 = load <4 x i64>, ptr %52, align 8
  %54 = xor <4 x i64> %53, %51
  %55 = bitcast <4 x i64> %54 to <8 x i32>
  %56 = shufflevector <8 x i32> %55, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %57 = bitcast <8 x i32> %56 to <4 x i64>
  %58 = and <4 x i64> %54, splat (i64 4294967295)
  %59 = and <4 x i64> %57, splat (i64 4294967295)
  %60 = mul nuw <4 x i64> %59, %58
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %62 = load <4 x i64>, ptr %61, align 1
  %63 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %64 = load <4 x i64>, ptr %63, align 8
  %65 = xor <4 x i64> %64, %62
  %66 = bitcast <4 x i64> %65 to <8 x i32>
  %67 = shufflevector <8 x i32> %66, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %68 = bitcast <8 x i32> %67 to <4 x i64>
  %69 = and <4 x i64> %65, splat (i64 4294967295)
  %70 = and <4 x i64> %68, splat (i64 4294967295)
  %71 = mul nuw <4 x i64> %70, %69
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %73 = load <4 x i64>, ptr %72, align 1
  %74 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %75 = load <4 x i64>, ptr %74, align 16
  %76 = xor <4 x i64> %75, %73
  %77 = bitcast <4 x i64> %76 to <8 x i32>
  %78 = shufflevector <8 x i32> %77, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %79 = bitcast <8 x i32> %78 to <4 x i64>
  %80 = and <4 x i64> %76, splat (i64 4294967295)
  %81 = and <4 x i64> %79, splat (i64 4294967295)
  %82 = mul nuw <4 x i64> %81, %80
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %84 = load <4 x i64>, ptr %83, align 1
  %85 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %86 = load <4 x i64>, ptr %85, align 16
  %87 = xor <4 x i64> %86, %84
  %88 = bitcast <4 x i64> %87 to <8 x i32>
  %89 = shufflevector <8 x i32> %88, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %90 = bitcast <8 x i32> %89 to <4 x i64>
  %91 = and <4 x i64> %87, splat (i64 4294967295)
  %92 = and <4 x i64> %90, splat (i64 4294967295)
  %93 = mul nuw <4 x i64> %92, %91
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %95 = load <4 x i64>, ptr %94, align 1
  %96 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %97 = load <4 x i64>, ptr %96, align 8
  %98 = xor <4 x i64> %97, %95
  %99 = bitcast <4 x i64> %98 to <8 x i32>
  %100 = shufflevector <8 x i32> %99, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %101 = bitcast <8 x i32> %100 to <4 x i64>
  %102 = and <4 x i64> %98, splat (i64 4294967295)
  %103 = and <4 x i64> %101, splat (i64 4294967295)
  %104 = mul nuw <4 x i64> %103, %102
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %106 = load <4 x i64>, ptr %105, align 1
  %107 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %108 = load <4 x i64>, ptr %107, align 8
  %109 = xor <4 x i64> %108, %106
  %110 = bitcast <4 x i64> %109 to <8 x i32>
  %111 = shufflevector <8 x i32> %110, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %112 = bitcast <8 x i32> %111 to <4 x i64>
  %113 = and <4 x i64> %109, splat (i64 4294967295)
  %114 = and <4 x i64> %112, splat (i64 4294967295)
  %115 = mul nuw <4 x i64> %114, %113
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 236
  %117 = load <4 x i64>, ptr %116, align 1
  %118 = add <4 x i64> %37, %51
  %119 = add <4 x i64> %118, %36
  %120 = add <4 x i64> %119, %73
  %121 = add <4 x i64> %120, %60
  %122 = add <4 x i64> %121, %95
  %123 = add <4 x i64> %122, %82
  %124 = add <4 x i64> %123, %117
  %125 = add <4 x i64> %124, %104
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 268
  %127 = load <4 x i64>, ptr %126, align 1
  %128 = add <4 x i64> %49, %62
  %129 = add <4 x i64> %128, %48
  %130 = add <4 x i64> %129, %84
  %131 = add <4 x i64> %130, %71
  %132 = add <4 x i64> %131, %106
  %133 = add <4 x i64> %132, %93
  %134 = add <4 x i64> %133, %127
  %135 = add <4 x i64> %134, %115
  %136 = extractelement <4 x i64> %125, i64 0
  %137 = load i64, ptr %3, align 64
  %138 = xor i64 %136, %137
  %139 = shufflevector <4 x i64> %125, <4 x i64> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %140 = xor <4 x i64> %139, %53
  %141 = extractelement <4 x i64> %140, i64 0
  %142 = zext i64 %138 to i128
  %143 = zext i64 %141 to i128
  %144 = mul nuw i128 %143, %142
  %145 = lshr i128 %144, 64
  %146 = xor i128 %145, %144
  %147 = trunc i128 %146 to i64
  %148 = add i64 %147, 7566781886141388340
  %149 = shufflevector <4 x i64> %125, <4 x i64> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %150 = xor <4 x i64> %149, %75
  %151 = extractelement <4 x i64> %150, i64 0
  %152 = shufflevector <4 x i64> %125, <4 x i64> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %153 = xor <4 x i64> %152, %97
  %154 = extractelement <4 x i64> %153, i64 0
  %155 = zext i64 %151 to i128
  %156 = zext i64 %154 to i128
  %157 = mul nuw i128 %156, %155
  %158 = lshr i128 %157, 64
  %159 = xor i128 %158, %157
  %160 = trunc i128 %159 to i64
  %161 = add i64 %148, %160
  %162 = shufflevector <4 x i64> %97, <4 x i64> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %163 = xor <4 x i64> %135, %162
  %164 = extractelement <4 x i64> %163, i64 0
  %165 = shufflevector <4 x i64> %97, <4 x i64> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %166 = xor <4 x i64> %135, %165
  %167 = extractelement <4 x i64> %166, i64 1
  %168 = zext i64 %164 to i128
  %169 = zext i64 %167 to i128
  %170 = mul nuw i128 %169, %168
  %171 = lshr i128 %170, 64
  %172 = xor i128 %171, %170
  %173 = trunc i128 %172 to i64
  %174 = add i64 %161, %173
  %175 = shufflevector <4 x i64> %97, <4 x i64> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %176 = xor <4 x i64> %135, %175
  %177 = extractelement <4 x i64> %176, i64 2
  %178 = shufflevector <4 x i64> %135, <4 x i64> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %179 = xor <4 x i64> %178, %108
  %180 = extractelement <4 x i64> %179, i64 0
  %181 = zext i64 %177 to i128
  %182 = zext i64 %180 to i128
  %183 = mul nuw i128 %182, %181
  %184 = lshr i128 %183, 64
  %185 = xor i128 %184, %183
  %186 = trunc i128 %185 to i64
  %187 = add i64 %174, %186
  %188 = lshr i64 %187, 37
  %189 = xor i64 %188, %187
  %190 = mul i64 %189, 1609587929392839161
  %191 = lshr i64 %190, 32
  %192 = xor i64 %191, %190
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3)
  ret i64 %192
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
