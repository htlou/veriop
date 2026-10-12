; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/8d34547/api64_len256_avx2/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/8d34547/api64_len256_avx2/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load <8 x i32>, ptr %0, align 1
  %4 = add <8 x i32> %3, <i32 -1191285703, i32 597969854, i32 2080473388, i32 -148787940, i32 -556503575, i32 -2087675941, i32 1916839076, i32 -1212979425>
  %5 = bitcast <8 x i32> %4 to <4 x i64>
  %6 = shufflevector <8 x i32> %4, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %7 = bitcast <8 x i32> %6 to <4 x i64>
  %8 = and <4 x i64> %5, splat (i64 4294967295)
  %9 = and <4 x i64> %7, splat (i64 4294967295)
  %10 = mul nuw <4 x i64> %9, %8
  %11 = add <4 x i64> %10, <i64 0, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161>
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %13 = load <8 x i32>, ptr %12, align 1
  %14 = add <8 x i32> %13, <i32 -881203634, i32 -859773576, i32 -2107977603, i32 -855674335, i32 -1207417228, i32 -146594674, i32 -533360410, i32 -2126895540>
  %15 = bitcast <8 x i32> %14 to <4 x i64>
  %16 = shufflevector <8 x i32> %14, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %17 = bitcast <8 x i32> %16 to <4 x i64>
  %18 = and <4 x i64> %15, splat (i64 4294967295)
  %19 = and <4 x i64> %17, splat (i64 4294967295)
  %20 = mul nuw <4 x i64> %19, %18
  %21 = add <4 x i64> %20, <i64 -8796714831421723037, i64 2870177450012600261, i64 0, i64 0>
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %23 = load <8 x i32>, ptr %22, align 1
  %24 = add <8 x i32> %23, <i32 2080473388, i32 -148787940, i32 -556503575, i32 -2087675941, i32 1916839076, i32 -1212979425, i32 -881203634, i32 -859773576>
  %25 = bitcast <8 x i32> %24 to <4 x i64>
  %26 = shufflevector <8 x i32> %24, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %27 = bitcast <8 x i32> %26 to <4 x i64>
  %28 = and <4 x i64> %25, splat (i64 4294967295)
  %29 = and <4 x i64> %27, splat (i64 4294967295)
  %30 = mul nuw <4 x i64> %29, %28
  %31 = add <4 x i64> %11, %30
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %33 = load <8 x i32>, ptr %32, align 1
  %34 = add <8 x i32> %33, <i32 -2107977603, i32 -855674335, i32 -1207417228, i32 -146594674, i32 -533360410, i32 -2126895540, i32 1009275579, i32 -1849491253>
  %35 = bitcast <8 x i32> %34 to <4 x i64>
  %36 = shufflevector <8 x i32> %34, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %37 = bitcast <8 x i32> %36 to <4 x i64>
  %38 = and <4 x i64> %35, splat (i64 4294967295)
  %39 = and <4 x i64> %37, splat (i64 4294967295)
  %40 = mul nuw <4 x i64> %39, %38
  %41 = add <4 x i64> %21, %40
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %43 = load <8 x i32>, ptr %42, align 1
  %44 = add <8 x i32> %43, <i32 -556503575, i32 -2087675941, i32 1916839076, i32 -1212979425, i32 -881203634, i32 -859773576, i32 -2107977603, i32 -855674335>
  %45 = bitcast <8 x i32> %44 to <4 x i64>
  %46 = shufflevector <8 x i32> %44, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %47 = bitcast <8 x i32> %46 to <4 x i64>
  %48 = and <4 x i64> %45, splat (i64 4294967295)
  %49 = and <4 x i64> %47, splat (i64 4294967295)
  %50 = mul nuw <4 x i64> %49, %48
  %51 = add <4 x i64> %31, %50
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %53 = load <8 x i32>, ptr %52, align 1
  %54 = add <8 x i32> %53, <i32 -1207417228, i32 -146594674, i32 -533360410, i32 -2126895540, i32 1009275579, i32 -1849491253, i32 -1999608437, i32 458436259>
  %55 = bitcast <8 x i32> %54 to <4 x i64>
  %56 = shufflevector <8 x i32> %54, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %57 = bitcast <8 x i32> %56 to <4 x i64>
  %58 = and <4 x i64> %55, splat (i64 4294967295)
  %59 = and <4 x i64> %57, splat (i64 4294967295)
  %60 = mul nuw <4 x i64> %59, %58
  %61 = add <4 x i64> %41, %60
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %63 = load <8 x i32>, ptr %62, align 1
  %64 = add <8 x i32> %63, <i32 1916839076, i32 -1212979425, i32 -881203634, i32 -859773576, i32 -2107977603, i32 -855674335, i32 -1207417228, i32 -146594674>
  %65 = bitcast <8 x i32> %64 to <4 x i64>
  %66 = shufflevector <8 x i32> %64, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %67 = bitcast <8 x i32> %66 to <4 x i64>
  %68 = and <4 x i64> %65, splat (i64 4294967295)
  %69 = and <4 x i64> %67, splat (i64 4294967295)
  %70 = mul nuw <4 x i64> %69, %68
  %71 = add <4 x i64> %51, %70
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %73 = load <8 x i32>, ptr %72, align 1
  %74 = add <8 x i32> %73, <i32 -533360410, i32 -2126895540, i32 1009275579, i32 -1849491253, i32 -1999608437, i32 458436259, i32 1902397591, i32 -1576142514>
  %75 = bitcast <8 x i32> %74 to <4 x i64>
  %76 = shufflevector <8 x i32> %74, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 0, i32 5, i32 4, i32 7, i32 4>
  %77 = bitcast <8 x i32> %76 to <4 x i64>
  %78 = and <4 x i64> %75, splat (i64 4294967295)
  %79 = and <4 x i64> %77, splat (i64 4294967295)
  %80 = mul nuw <4 x i64> %79, %78
  %81 = add <4 x i64> %61, %80
  %82 = extractelement <4 x i64> %71, i64 0
  %83 = add i64 %82, 256
  %84 = extractelement <4 x i64> %71, i64 1
  %85 = extractelement <4 x i64> %71, i64 2
  %86 = extractelement <4 x i64> %71, i64 3
  %87 = extractelement <4 x i64> %81, i64 0
  %88 = extractelement <4 x i64> %81, i64 1
  %89 = extractelement <4 x i64> %81, i64 2
  %90 = extractelement <4 x i64> %81, i64 3
  %91 = add i64 %90, -256
  %92 = add i64 %89, %83
  %93 = tail call i64 @llvm.fshl.i64(i64 %92, i64 %92, i64 21)
  %94 = tail call i64 @llvm.fshl.i64(i64 %84, i64 %84, i64 34)
  %95 = add i64 %94, %85
  %96 = mul i64 %95, 9
  %97 = add i64 %83, %84
  %98 = xor i64 %97, %86
  %99 = tail call i64 @llvm.fshl.i64(i64 %98, i64 %98, i64 17)
  %100 = add i64 %88, 2870177450012600261
  %101 = add i64 %100, %99
  %102 = mul i64 %87, -8796714831421723037
  %103 = add i64 %102, %88
  %104 = tail call i64 @llvm.fshl.i64(i64 %103, i64 %103, i64 46)
  %105 = add i64 %104, %85
  %106 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 23)
  %107 = add i64 %89, %87
  %108 = tail call i64 @llvm.fshl.i64(i64 %107, i64 %107, i64 12)
  %109 = add i64 %93, %96
  %110 = add i64 %109, %101
  %111 = mul i64 %110, -7046029288634856825
  %112 = tail call noundef i64 @llvm.bswap.i64(i64 %111)
  %113 = add i64 %105, %112
  %114 = mul i64 %113, 1609587929392839161
  %115 = add i64 %114, %91
  %116 = add i64 %106, %108
  %117 = add i64 %116, %101
  %118 = mul i64 %117, -4417276706812531889
  %119 = tail call noundef i64 @llvm.bswap.i64(i64 %118)
  %120 = add i64 %119, %86
  %121 = mul i64 %120, -4417276706812531377
  %122 = xor i64 %115, %121
  %123 = mul i64 %122, -4417276706812531377
  %124 = lshr i64 %123, 47
  %125 = xor i64 %121, %124
  %126 = xor i64 %125, %123
  %127 = mul i64 %126, -4417276706812531377
  %128 = lshr i64 %127, 47
  %129 = xor i64 %128, %127
  %130 = mul i64 %129, -4417276706812531377
  ret i64 %130
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
