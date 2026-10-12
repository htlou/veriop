; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/ac897be/conc64_seed_len300_v2/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/ac897be/conc64_seed_len300_v2/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_xxh3_64() local_unnamed_addr #0 {
  %1 = alloca [88 x i8], align 8
  %2 = alloca [72 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %1)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2)
  store i64 -4652524582839202649, ptr %1, align 8
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1984359620303729549, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 -2541483832472132915, ptr %4, align 8
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 2180989409883091587, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 8793566567164168122, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 2328284475129367699, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 -8122372361858984281, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 5405151996374444017, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 -3736851924113295829, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 -6770302548047166823, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 5772580125349786208, ptr %12, align 8
  store i64 7156276373681787353, ptr %2, align 8
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -4247148865069214759, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 -1567307012567157802, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 5403816109051271942, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 -7114123074153658140, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 -160848771999472614, ptr %17, align 8
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 -3670843731330913632, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 2965440022249380148, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 9015368988008384960, ptr %20, align 8
  %21 = load <4 x i64>, ptr %1, align 8
  %22 = xor <4 x i64> %21, <i64 -2251339653501868537, i64 -2830061036206481665, i64 -3408782418911095049, i64 -3987503801615708433>
  %23 = bitcast <4 x i64> %22 to <8 x i32>
  %24 = shufflevector <8 x i32> %23, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %25 = bitcast <8 x i32> %24 to <4 x i64>
  %26 = and <4 x i64> %22, splat (i64 4294967295)
  %27 = and <4 x i64> %25, splat (i64 4294967295)
  %28 = mul nuw <4 x i64> %27, %26
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %30 = load <4 x i64>, ptr %29, align 8
  %31 = xor <4 x i64> %30, <i64 -4566225184320321817, i64 -5144946567024869665, i64 -5723667949729483049, i64 -6302389332434096433>
  %32 = bitcast <4 x i64> %31 to <8 x i32>
  %33 = shufflevector <8 x i32> %32, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %34 = bitcast <8 x i32> %33 to <4 x i64>
  %35 = and <4 x i64> %31, splat (i64 4294967295)
  %36 = and <4 x i64> %34, splat (i64 4294967295)
  %37 = mul nuw <4 x i64> %36, %35
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %39 = load <4 x i64>, ptr %38, align 8
  %40 = xor <4 x i64> %39, <i64 -6881110715138709817, i64 -7459832097826545985, i64 -8038553480531159369, i64 -8617274863235772753>
  %41 = bitcast <4 x i64> %40 to <8 x i32>
  %42 = shufflevector <8 x i32> %41, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %43 = bitcast <8 x i32> %42 to <4 x i64>
  %44 = and <4 x i64> %40, splat (i64 4294967295)
  %45 = and <4 x i64> %43, splat (i64 4294967295)
  %46 = mul nuw <4 x i64> %45, %44
  %47 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %48 = load <4 x i64>, ptr %47, align 8
  %49 = xor <4 x i64> %48, <i64 -9195996245940386137, i64 8672026449359519391, i64 8093305066654906007, i64 7514583683950292623>
  %50 = bitcast <4 x i64> %49 to <8 x i32>
  %51 = shufflevector <8 x i32> %50, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %52 = bitcast <8 x i32> %51 to <4 x i64>
  %53 = and <4 x i64> %49, splat (i64 4294967295)
  %54 = and <4 x i64> %52, splat (i64 4294967295)
  %55 = mul nuw <4 x i64> %54, %53
  %56 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %57 = load <4 x i64>, ptr %56, align 8
  %58 = xor <4 x i64> %57, <i64 6935862301245679239, i64 6357142018052693631, i64 5778420635348080247, i64 5199699252643466863>
  %59 = bitcast <4 x i64> %58 to <8 x i32>
  %60 = shufflevector <8 x i32> %59, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %61 = bitcast <8 x i32> %60 to <4 x i64>
  %62 = and <4 x i64> %58, splat (i64 4294967295)
  %63 = and <4 x i64> %61, splat (i64 4294967295)
  %64 = mul nuw <4 x i64> %63, %62
  %65 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %66 = load <4 x i64>, ptr %65, align 8
  %67 = xor <4 x i64> %66, <i64 4620977869938853479, i64 4042537962210950751, i64 3463816579506337367, i64 2885095196801723983>
  %68 = bitcast <4 x i64> %67 to <8 x i32>
  %69 = shufflevector <8 x i32> %68, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %70 = bitcast <8 x i32> %69 to <4 x i64>
  %71 = and <4 x i64> %67, splat (i64 4294967295)
  %72 = and <4 x i64> %70, splat (i64 4294967295)
  %73 = mul nuw <4 x i64> %72, %71
  %74 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %75 = load <4 x i64>, ptr %74, align 8
  %76 = xor <4 x i64> %75, <i64 2306373814097110599, i64 1799710025430425151, i64 1220988642725811767, i64 642267260021198383>
  %77 = bitcast <4 x i64> %76 to <8 x i32>
  %78 = shufflevector <8 x i32> %77, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %79 = bitcast <8 x i32> %78 to <4 x i64>
  %80 = and <4 x i64> %76, splat (i64 4294967295)
  %81 = and <4 x i64> %79, splat (i64 4294967295)
  %82 = mul nuw <4 x i64> %81, %80
  %83 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %84 = load <4 x i64>, ptr %83, align 8
  %85 = xor <4 x i64> %84, <i64 63545877316584999, i64 -515175505388028385, i64 -1093896888092641769, i64 -1672618270797255153>
  %86 = bitcast <4 x i64> %85 to <8 x i32>
  %87 = shufflevector <8 x i32> %86, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %88 = bitcast <8 x i32> %87 to <4 x i64>
  %89 = and <4 x i64> %85, splat (i64 4294967295)
  %90 = and <4 x i64> %88, splat (i64 4294967295)
  %91 = mul nuw <4 x i64> %90, %89
  %92 = getelementptr inbounds nuw i8, ptr %2, i64 7
  %93 = load <4 x i64>, ptr %92, align 1
  %94 = xor <4 x i64> %93, <i64 8382665758007212699, i64 7803944375302599315, i64 7225222992597985931, i64 6646502709405000323>
  %95 = bitcast <4 x i64> %94 to <8 x i32>
  %96 = shufflevector <8 x i32> %95, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %97 = bitcast <8 x i32> %96 to <4 x i64>
  %98 = and <4 x i64> %94, splat (i64 4294967295)
  %99 = and <4 x i64> %97, splat (i64 4294967295)
  %100 = mul nuw <4 x i64> %99, %98
  %101 = add <4 x i64> %28, <i64 8492451507975914100, i64 -1375126003882166378, i64 -1639980335582908362, i64 1493278486611023544>
  %102 = add <4 x i64> %101, %46
  %103 = add <4 x i64> %102, %64
  %104 = add <4 x i64> %103, %82
  %105 = add <4 x i64> %104, %100
  %106 = getelementptr inbounds nuw i8, ptr %2, i64 39
  %107 = load <4 x i64>, ptr %106, align 1
  %108 = xor <4 x i64> %107, <i64 6067781326700386939, i64 5489059943995773555, i64 4910338561291160171, i64 4331898653563257443>
  %109 = bitcast <4 x i64> %108 to <8 x i32>
  %110 = shufflevector <8 x i32> %109, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %111 = bitcast <8 x i32> %110 to <4 x i64>
  %112 = and <4 x i64> %108, splat (i64 4294967295)
  %113 = and <4 x i64> %111, splat (i64 4294967295)
  %114 = mul nuw <4 x i64> %113, %112
  %115 = add <4 x i64> %37, <i64 6640112885982946042, i64 -5903241788309383450, i64 -5926671254066672628, i64 6756569933738358224>
  %116 = add <4 x i64> %115, %55
  %117 = add <4 x i64> %116, %73
  %118 = add <4 x i64> %117, %91
  %119 = add <4 x i64> %118, %114
  %120 = xor <4 x i64> %105, %21
  %121 = extractelement <4 x i64> %120, i64 0
  %122 = shufflevector <4 x i64> %105, <4 x i64> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %123 = xor <4 x i64> %122, %39
  %124 = extractelement <4 x i64> %123, i64 0
  %125 = zext i64 %121 to i128
  %126 = zext i64 %124 to i128
  %127 = mul nuw i128 %126, %125
  %128 = lshr i128 %127, 64
  %129 = xor i128 %128, %127
  %130 = trunc i128 %129 to i64
  %131 = add i64 %130, 7566781886141388340
  %132 = shufflevector <4 x i64> %105, <4 x i64> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %133 = xor <4 x i64> %132, %57
  %134 = extractelement <4 x i64> %133, i64 0
  %135 = shufflevector <4 x i64> %105, <4 x i64> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %136 = xor <4 x i64> %135, %75
  %137 = extractelement <4 x i64> %136, i64 0
  %138 = zext i64 %134 to i128
  %139 = zext i64 %137 to i128
  %140 = mul nuw i128 %139, %138
  %141 = lshr i128 %140, 64
  %142 = xor i128 %141, %140
  %143 = trunc i128 %142 to i64
  %144 = add i64 %131, %143
  %145 = shufflevector <4 x i64> %75, <4 x i64> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %146 = xor <4 x i64> %119, %145
  %147 = extractelement <4 x i64> %146, i64 0
  %148 = shufflevector <4 x i64> %75, <4 x i64> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %149 = xor <4 x i64> %119, %148
  %150 = extractelement <4 x i64> %149, i64 1
  %151 = zext i64 %147 to i128
  %152 = zext i64 %150 to i128
  %153 = mul nuw i128 %152, %151
  %154 = lshr i128 %153, 64
  %155 = xor i128 %154, %153
  %156 = trunc i128 %155 to i64
  %157 = add i64 %144, %156
  %158 = shufflevector <4 x i64> %75, <4 x i64> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %159 = xor <4 x i64> %119, %158
  %160 = extractelement <4 x i64> %159, i64 2
  %161 = shufflevector <4 x i64> %119, <4 x i64> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %162 = xor <4 x i64> %161, %84
  %163 = extractelement <4 x i64> %162, i64 0
  %164 = zext i64 %160 to i128
  %165 = zext i64 %163 to i128
  %166 = mul nuw i128 %165, %164
  %167 = lshr i128 %166, 64
  %168 = xor i128 %167, %166
  %169 = trunc i128 %168 to i64
  %170 = add i64 %157, %169
  %171 = lshr i64 %170, 37
  %172 = xor i64 %171, %170
  %173 = mul i64 %172, 1609587929392839161
  %174 = lshr i64 %173, 32
  %175 = xor i64 %174, %173
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2)
  ret i64 %175
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
