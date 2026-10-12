; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0ab31bc/conc64_seed_len256_v2/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/0ab31bc/conc64_seed_len256_v2/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_xxh3_64() local_unnamed_addr #0 {
  %1 = alloca [88 x i8], align 64
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %1)
  store i64 -4652524582839202649, ptr %1, align 64
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1984359620303729549, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 -2541483832472132915, ptr %3, align 16
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 2180989409883091587, ptr %4, align 8
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 8793566567164168122, ptr %5, align 32
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 2328284475129367699, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 -8122372361858984281, ptr %7, align 16
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 5405151996374444017, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 -3736851924113295829, ptr %9, align 64
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 -6770302548047166823, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 5772580125349786208, ptr %11, align 16
  %12 = load <4 x i64>, ptr %1, align 64
  %13 = xor <4 x i64> %12, <i64 -2251339653501868537, i64 -2830061036206481665, i64 -3408782418911095049, i64 -3987503801615708433>
  %14 = bitcast <4 x i64> %13 to <8 x i32>
  %15 = shufflevector <8 x i32> %14, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %16 = bitcast <8 x i32> %15 to <4 x i64>
  %17 = and <4 x i64> %13, splat (i64 4294967295)
  %18 = and <4 x i64> %16, splat (i64 4294967295)
  %19 = mul nuw <4 x i64> %18, %17
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %21 = load <4 x i64>, ptr %20, align 32
  %22 = xor <4 x i64> %21, <i64 -4566225184320321817, i64 -5144946567024869665, i64 -5723667949729483049, i64 -6302389332434096433>
  %23 = bitcast <4 x i64> %22 to <8 x i32>
  %24 = shufflevector <8 x i32> %23, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %25 = bitcast <8 x i32> %24 to <4 x i64>
  %26 = and <4 x i64> %22, splat (i64 4294967295)
  %27 = and <4 x i64> %25, splat (i64 4294967295)
  %28 = mul nuw <4 x i64> %27, %26
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %30 = load <4 x i64>, ptr %29, align 8
  %31 = xor <4 x i64> %30, <i64 -6881110715138709817, i64 -7459832097826545985, i64 -8038553480531159369, i64 -8617274863235772753>
  %32 = bitcast <4 x i64> %31 to <8 x i32>
  %33 = shufflevector <8 x i32> %32, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %34 = bitcast <8 x i32> %33 to <4 x i64>
  %35 = and <4 x i64> %31, splat (i64 4294967295)
  %36 = and <4 x i64> %34, splat (i64 4294967295)
  %37 = mul nuw <4 x i64> %36, %35
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %39 = load <4 x i64>, ptr %38, align 8
  %40 = xor <4 x i64> %39, <i64 -9195996245940386137, i64 8672026449359519391, i64 8093305066654906007, i64 7514583683950292623>
  %41 = bitcast <4 x i64> %40 to <8 x i32>
  %42 = shufflevector <8 x i32> %41, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %43 = bitcast <8 x i32> %42 to <4 x i64>
  %44 = and <4 x i64> %40, splat (i64 4294967295)
  %45 = and <4 x i64> %43, splat (i64 4294967295)
  %46 = mul nuw <4 x i64> %45, %44
  %47 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %48 = load <4 x i64>, ptr %47, align 16
  %49 = xor <4 x i64> %48, <i64 6935862301245679239, i64 6357142018052693631, i64 5778420635348080247, i64 5199699252643466863>
  %50 = bitcast <4 x i64> %49 to <8 x i32>
  %51 = shufflevector <8 x i32> %50, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %52 = bitcast <8 x i32> %51 to <4 x i64>
  %53 = and <4 x i64> %49, splat (i64 4294967295)
  %54 = and <4 x i64> %52, splat (i64 4294967295)
  %55 = mul nuw <4 x i64> %54, %53
  %56 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %57 = load <4 x i64>, ptr %56, align 16
  %58 = xor <4 x i64> %57, <i64 4620977869938853479, i64 4042537962210950751, i64 3463816579506337367, i64 2885095196801723983>
  %59 = bitcast <4 x i64> %58 to <8 x i32>
  %60 = shufflevector <8 x i32> %59, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %61 = bitcast <8 x i32> %60 to <4 x i64>
  %62 = and <4 x i64> %58, splat (i64 4294967295)
  %63 = and <4 x i64> %61, splat (i64 4294967295)
  %64 = mul nuw <4 x i64> %63, %62
  %65 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %66 = load <4 x i64>, ptr %65, align 8
  %67 = xor <4 x i64> %66, <i64 2306373814097110599, i64 1799710025430425151, i64 1220988642725811767, i64 642267260021198383>
  %68 = bitcast <4 x i64> %67 to <8 x i32>
  %69 = shufflevector <8 x i32> %68, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %70 = bitcast <8 x i32> %69 to <4 x i64>
  %71 = and <4 x i64> %67, splat (i64 4294967295)
  %72 = and <4 x i64> %70, splat (i64 4294967295)
  %73 = mul nuw <4 x i64> %72, %71
  %74 = add <4 x i64> %19, <i64 191771275918698379, i64 -9179070379184765693, i64 -8865203328180894293, i64 -5153224222793976779>
  %75 = add <4 x i64> %74, %37
  %76 = add <4 x i64> %75, %55
  %77 = add <4 x i64> %76, %73
  %78 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %79 = load <4 x i64>, ptr %78, align 8
  %80 = xor <4 x i64> %79, <i64 63545877316584999, i64 -515175505388028385, i64 -1093896888092641769, i64 -1672618270797255153>
  %81 = bitcast <4 x i64> %80 to <8 x i32>
  %82 = shufflevector <8 x i32> %81, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %83 = bitcast <8 x i32> %82 to <4 x i64>
  %84 = and <4 x i64> %80, splat (i64 4294967295)
  %85 = and <4 x i64> %83, splat (i64 4294967295)
  %86 = mul nuw <4 x i64> %85, %84
  %87 = add <4 x i64> %28, <i64 572331559282559103, i64 -8522124284539379263, i64 4657571279122631661, i64 2424671277520665020>
  %88 = add <4 x i64> %87, %46
  %89 = add <4 x i64> %88, %64
  %90 = add <4 x i64> %89, %86
  %91 = xor <4 x i64> %77, %12
  %92 = extractelement <4 x i64> %91, i64 0
  %93 = shufflevector <4 x i64> %77, <4 x i64> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %94 = xor <4 x i64> %93, %30
  %95 = extractelement <4 x i64> %94, i64 0
  %96 = zext i64 %92 to i128
  %97 = zext i64 %95 to i128
  %98 = mul nuw i128 %97, %96
  %99 = lshr i128 %98, 64
  %100 = xor i128 %99, %98
  %101 = trunc i128 %100 to i64
  %102 = add i64 %101, 3997421333012711168
  %103 = shufflevector <4 x i64> %77, <4 x i64> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %104 = xor <4 x i64> %103, %48
  %105 = extractelement <4 x i64> %104, i64 0
  %106 = shufflevector <4 x i64> %77, <4 x i64> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %107 = xor <4 x i64> %106, %66
  %108 = extractelement <4 x i64> %107, i64 0
  %109 = zext i64 %105 to i128
  %110 = zext i64 %108 to i128
  %111 = mul nuw i128 %110, %109
  %112 = lshr i128 %111, 64
  %113 = xor i128 %112, %111
  %114 = trunc i128 %113 to i64
  %115 = add i64 %102, %114
  %116 = shufflevector <4 x i64> %66, <4 x i64> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %117 = xor <4 x i64> %90, %116
  %118 = extractelement <4 x i64> %117, i64 0
  %119 = shufflevector <4 x i64> %66, <4 x i64> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %120 = xor <4 x i64> %90, %119
  %121 = extractelement <4 x i64> %120, i64 1
  %122 = zext i64 %118 to i128
  %123 = zext i64 %121 to i128
  %124 = mul nuw i128 %123, %122
  %125 = lshr i128 %124, 64
  %126 = xor i128 %125, %124
  %127 = trunc i128 %126 to i64
  %128 = add i64 %115, %127
  %129 = shufflevector <4 x i64> %66, <4 x i64> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %130 = xor <4 x i64> %90, %129
  %131 = extractelement <4 x i64> %130, i64 2
  %132 = shufflevector <4 x i64> %90, <4 x i64> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %133 = xor <4 x i64> %132, %79
  %134 = extractelement <4 x i64> %133, i64 0
  %135 = zext i64 %131 to i128
  %136 = zext i64 %134 to i128
  %137 = mul nuw i128 %136, %135
  %138 = lshr i128 %137, 64
  %139 = xor i128 %138, %137
  %140 = trunc i128 %139 to i64
  %141 = add i64 %128, %140
  %142 = lshr i64 %141, 37
  %143 = xor i64 %142, %141
  %144 = mul i64 %143, 1609587929392839161
  %145 = lshr i64 %144, 32
  %146 = xor i64 %145, %144
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %1)
  ret i64 %146
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
