; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0ab31bc/api64_seed_len256_avx2/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0ab31bc/api64_seed_len256_avx2/wrapper.c"
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
  %105 = add <4 x i64> %37, %51
  %106 = add <4 x i64> %105, %36
  %107 = add <4 x i64> %106, %73
  %108 = add <4 x i64> %107, %60
  %109 = add <4 x i64> %108, %95
  %110 = add <4 x i64> %109, %82
  %111 = add <4 x i64> %110, %104
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %113 = load <4 x i64>, ptr %112, align 1
  %114 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %115 = load <4 x i64>, ptr %114, align 8
  %116 = xor <4 x i64> %115, %113
  %117 = bitcast <4 x i64> %116 to <8 x i32>
  %118 = shufflevector <8 x i32> %117, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %119 = bitcast <8 x i32> %118 to <4 x i64>
  %120 = and <4 x i64> %116, splat (i64 4294967295)
  %121 = and <4 x i64> %119, splat (i64 4294967295)
  %122 = mul nuw <4 x i64> %121, %120
  %123 = add <4 x i64> %49, %62
  %124 = add <4 x i64> %123, %48
  %125 = add <4 x i64> %124, %84
  %126 = add <4 x i64> %125, %71
  %127 = add <4 x i64> %126, %113
  %128 = add <4 x i64> %127, %93
  %129 = add <4 x i64> %128, %122
  %130 = xor <4 x i64> %111, %29
  %131 = extractelement <4 x i64> %130, i64 0
  %132 = shufflevector <4 x i64> %111, <4 x i64> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %133 = xor <4 x i64> %132, %53
  %134 = extractelement <4 x i64> %133, i64 0
  %135 = zext i64 %131 to i128
  %136 = zext i64 %134 to i128
  %137 = mul nuw i128 %136, %135
  %138 = lshr i128 %137, 64
  %139 = xor i128 %138, %137
  %140 = trunc i128 %139 to i64
  %141 = add i64 %140, 3997421333012711168
  %142 = shufflevector <4 x i64> %111, <4 x i64> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %143 = xor <4 x i64> %142, %75
  %144 = extractelement <4 x i64> %143, i64 0
  %145 = shufflevector <4 x i64> %111, <4 x i64> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %146 = xor <4 x i64> %145, %97
  %147 = extractelement <4 x i64> %146, i64 0
  %148 = zext i64 %144 to i128
  %149 = zext i64 %147 to i128
  %150 = mul nuw i128 %149, %148
  %151 = lshr i128 %150, 64
  %152 = xor i128 %151, %150
  %153 = trunc i128 %152 to i64
  %154 = add i64 %141, %153
  %155 = shufflevector <4 x i64> %97, <4 x i64> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %156 = xor <4 x i64> %129, %155
  %157 = extractelement <4 x i64> %156, i64 0
  %158 = shufflevector <4 x i64> %97, <4 x i64> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %159 = xor <4 x i64> %129, %158
  %160 = extractelement <4 x i64> %159, i64 1
  %161 = zext i64 %157 to i128
  %162 = zext i64 %160 to i128
  %163 = mul nuw i128 %162, %161
  %164 = lshr i128 %163, 64
  %165 = xor i128 %164, %163
  %166 = trunc i128 %165 to i64
  %167 = add i64 %154, %166
  %168 = shufflevector <4 x i64> %97, <4 x i64> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %169 = xor <4 x i64> %129, %168
  %170 = extractelement <4 x i64> %169, i64 2
  %171 = shufflevector <4 x i64> %129, <4 x i64> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %172 = xor <4 x i64> %171, %115
  %173 = extractelement <4 x i64> %172, i64 0
  %174 = zext i64 %170 to i128
  %175 = zext i64 %173 to i128
  %176 = mul nuw i128 %175, %174
  %177 = lshr i128 %176, 64
  %178 = xor i128 %177, %176
  %179 = trunc i128 %178 to i64
  %180 = add i64 %167, %179
  %181 = lshr i64 %180, 37
  %182 = xor i64 %181, %180
  %183 = mul i64 %182, 1609587929392839161
  %184 = lshr i64 %183, 32
  %185 = xor i64 %184, %183
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3)
  ret i64 %185
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
