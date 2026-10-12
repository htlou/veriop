; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/d5e42a6/api64_len256_scalar_v3_vecon/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/d5e42a6/api64_len256_scalar_v3_vecon/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_64(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [72 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3)
  %4 = insertelement <2 x i64> poison, i64 %1, i64 0
  %5 = sub i64 2066345149520216444, %1
  store i64 %5, ptr %3, align 8
  %6 = add i64 %1, -2623469361688619810
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %6, ptr %7, align 8
  %8 = insertelement <4 x i64> poison, i64 %1, i64 0
  %9 = shufflevector <4 x i64> %8, <4 x i64> poison, <4 x i32> zeroinitializer
  %10 = sub <4 x i64> <i64 2262974939099578482, i64 2410270004345854594, i64 5487137525590930912, i64 -6688317018830679928>, %9
  %11 = extractelement <4 x i64> %10, i64 0
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %11, ptr %12, align 8
  %13 = add <4 x i64> %9, <i64 8711581037947681227, i64 -8204357891075471176, i64 -3818837453329782724, i64 5690594596133299313>
  %14 = add i64 %1, 8711581037947681227
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %14, ptr %15, align 8
  %16 = extractelement <4 x i64> %10, i64 1
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %16, ptr %17, align 8
  %18 = extractelement <4 x i64> %13, i64 1
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %18, ptr %19, align 8
  %20 = extractelement <4 x i64> %10, i64 2
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %20, ptr %21, align 8
  %22 = extractelement <4 x i64> %13, i64 2
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %22, ptr %23, align 8
  %24 = extractelement <4 x i64> %10, i64 3
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %24, ptr %25, align 8
  %26 = load i64, ptr %0, align 1
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = load i64, ptr %27, align 1
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %30 = load i64, ptr %29, align 1
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %32 = load i64, ptr %31, align 1
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %34 = load i64, ptr %33, align 1
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %36 = load i64, ptr %35, align 1
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %38 = load i64, ptr %37, align 1
  %39 = insertelement <4 x i64> poison, i64 %26, i64 0
  %40 = insertelement <4 x i64> %39, i64 %30, i64 1
  %41 = insertelement <4 x i64> %40, i64 %34, i64 2
  %42 = insertelement <4 x i64> %41, i64 %38, i64 3
  %43 = shufflevector <4 x i64> %13, <4 x i64> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %44 = shufflevector <2 x i64> %4, <2 x i64> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %45 = add <4 x i64> %44, <i64 -4734510112055689544, i64 -2623469361688619810, i64 undef, i64 undef>
  %46 = shufflevector <4 x i64> %45, <4 x i64> %43, <4 x i32> <i32 0, i32 1, i32 poison, i32 7>
  %47 = insertelement <4 x i64> %46, i64 %14, i64 2
  %48 = xor <4 x i64> %42, %47
  %49 = and <4 x i64> %48, splat (i64 4294967295)
  %50 = lshr <4 x i64> %48, splat (i64 32)
  %51 = mul nuw <4 x i64> %49, %50
  %52 = add <4 x i64> %42, <i64 3266489917, i64 -4417276706812531889, i64 -8796714831421723037, i64 2870177450012600261>
  %53 = add <4 x i64> %52, %51
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %55 = load i64, ptr %54, align 1
  %56 = insertelement <4 x i64> poison, i64 %32, i64 0
  %57 = insertelement <4 x i64> %56, i64 %36, i64 1
  %58 = insertelement <4 x i64> %57, i64 %55, i64 2
  %59 = insertelement <4 x i64> %58, i64 %28, i64 3
  %60 = insertelement <4 x i64> %10, i64 %5, i64 3
  %61 = xor <4 x i64> %59, %60
  %62 = shufflevector <4 x i64> %61, <4 x i64> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %63 = and <4 x i64> %62, splat (i64 4294967295)
  %64 = lshr <4 x i64> %62, splat (i64 32)
  %65 = mul nuw <4 x i64> %63, %64
  %66 = add <4 x i64> %59, <i64 1609587929392839161, i64 2246822519, i64 2654435761, i64 -7046029288634856825>
  %67 = shufflevector <4 x i64> %66, <4 x i64> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %68 = add <4 x i64> %67, %65
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %79 = load i64, ptr %76, align 1
  %80 = load <8 x i64>, ptr %69, align 1
  %81 = load i64, ptr %75, align 1
  %82 = load i64, ptr %74, align 1
  %83 = load i64, ptr %73, align 1
  %84 = load i64, ptr %72, align 1
  %85 = load i64, ptr %71, align 1
  %86 = load i64, ptr %70, align 1
  %87 = load i64, ptr %69, align 1
  %88 = xor i64 %87, %5
  %89 = and i64 %88, 4294967295
  %90 = lshr i64 %88, 32
  %91 = xor i64 %86, %6
  %92 = and i64 %91, 4294967295
  %93 = lshr i64 %91, 32
  %94 = xor i64 %85, %11
  %95 = and i64 %94, 4294967295
  %96 = lshr i64 %94, 32
  %97 = xor i64 %84, %14
  %98 = and i64 %97, 4294967295
  %99 = lshr i64 %97, 32
  %100 = xor i64 %83, %16
  %101 = and i64 %100, 4294967295
  %102 = lshr i64 %100, 32
  %103 = xor i64 %82, %18
  %104 = and i64 %103, 4294967295
  %105 = lshr i64 %103, 32
  %106 = xor i64 %81, %20
  %107 = and i64 %106, 4294967295
  %108 = lshr i64 %106, 32
  %109 = insertelement <4 x i64> poison, i64 %89, i64 0
  %110 = insertelement <4 x i64> %109, i64 %95, i64 1
  %111 = insertelement <4 x i64> %110, i64 %101, i64 2
  %112 = insertelement <4 x i64> %111, i64 %107, i64 3
  %113 = insertelement <4 x i64> poison, i64 %90, i64 0
  %114 = insertelement <4 x i64> %113, i64 %96, i64 1
  %115 = insertelement <4 x i64> %114, i64 %102, i64 2
  %116 = insertelement <4 x i64> %115, i64 %108, i64 3
  %117 = mul nuw <4 x i64> %112, %116
  %118 = shufflevector <8 x i64> %80, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %119 = add <4 x i64> %53, %118
  %120 = add <4 x i64> %119, %117
  %121 = xor i64 %79, %22
  %122 = and i64 %121, 4294967295
  %123 = lshr i64 %121, 32
  %124 = insertelement <4 x i64> poison, i64 %92, i64 0
  %125 = insertelement <4 x i64> %124, i64 %98, i64 1
  %126 = insertelement <4 x i64> %125, i64 %104, i64 2
  %127 = insertelement <4 x i64> %126, i64 %122, i64 3
  %128 = insertelement <4 x i64> poison, i64 %93, i64 0
  %129 = insertelement <4 x i64> %128, i64 %99, i64 1
  %130 = insertelement <4 x i64> %129, i64 %105, i64 2
  %131 = insertelement <4 x i64> %130, i64 %123, i64 3
  %132 = mul nuw <4 x i64> %127, %131
  %133 = shufflevector <8 x i64> %80, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %134 = add <4 x i64> %68, %133
  %135 = add <4 x i64> %134, %132
  %136 = load <8 x i64>, ptr %77, align 1
  %137 = shufflevector <8 x i64> %136, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %138 = shufflevector <4 x i64> %13, <4 x i64> %45, <4 x i32> <i32 5, i32 0, i32 1, i32 2>
  %139 = xor <4 x i64> %137, %138
  %140 = and <4 x i64> %139, splat (i64 4294967295)
  %141 = lshr <4 x i64> %139, splat (i64 32)
  %142 = mul nuw <4 x i64> %140, %141
  %143 = shufflevector <8 x i64> %136, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %144 = add <4 x i64> %120, %143
  %145 = add <4 x i64> %144, %142
  %146 = shufflevector <8 x i64> %136, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %147 = xor <4 x i64> %146, %10
  %148 = and <4 x i64> %147, splat (i64 4294967295)
  %149 = lshr <4 x i64> %147, splat (i64 32)
  %150 = mul nuw <4 x i64> %148, %149
  %151 = add <4 x i64> %135, %146
  %152 = add <4 x i64> %151, %150
  %153 = load <8 x i64>, ptr %78, align 1
  %154 = shufflevector <8 x i64> %153, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %155 = xor <4 x i64> %154, %10
  %156 = and <4 x i64> %155, splat (i64 4294967295)
  %157 = lshr <4 x i64> %155, splat (i64 32)
  %158 = mul nuw <4 x i64> %156, %157
  %159 = add <4 x i64> %145, %154
  %160 = add <4 x i64> %159, %158
  %161 = shufflevector <8 x i64> %153, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %162 = xor <4 x i64> %161, %13
  %163 = and <4 x i64> %162, splat (i64 4294967295)
  %164 = lshr <4 x i64> %162, splat (i64 32)
  %165 = mul nuw <4 x i64> %163, %164
  %166 = add <4 x i64> %152, %161
  %167 = add <4 x i64> %166, %165
  %168 = getelementptr inbounds nuw i8, ptr %3, i64 3
  %169 = load <8 x i64>, ptr %168, align 1
  %170 = shufflevector <8 x i64> %169, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %171 = xor <4 x i64> %170, %160
  %172 = shufflevector <8 x i64> %169, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %173 = xor <4 x i64> %172, %167
  %174 = zext <4 x i64> %171 to <4 x i128>
  %175 = zext <4 x i64> %173 to <4 x i128>
  %176 = mul nuw <4 x i128> %175, %174
  %177 = lshr <4 x i128> %176, splat (i128 64)
  %178 = xor <4 x i128> %177, %176
  %179 = trunc <4 x i128> %178 to <4 x i64>
  %180 = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %179)
  %181 = add i64 %180, 3997421333012711168
  %182 = lshr i64 %181, 37
  %183 = xor i64 %182, %181
  %184 = mul i64 %183, 1609587929392839161
  %185 = lshr i64 %184, 32
  %186 = xor i64 %185, %184
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3)
  ret i64 %186
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
