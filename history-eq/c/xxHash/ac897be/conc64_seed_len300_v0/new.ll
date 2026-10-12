; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/ac897be/conc64_seed_len300_v0/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/ac897be/conc64_seed_len300_v0/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_xxh3_64() local_unnamed_addr #0 {
  %1 = alloca [72 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %1)
  store i64 7156276373681787353, ptr %1, align 8
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -4247148865069214759, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 -1567307012567157802, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 5403816109051271942, ptr %4, align 8
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 -7114123074153658140, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 -160848771999472614, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 -3670843731330913632, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 2965440022249380148, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 9015368988008384960, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %11 = load i64, ptr %10, align 1
  %12 = xor i64 %11, 8382665758007212699
  %13 = and i64 %12, 4294967295
  %14 = lshr i64 %12, 32
  %15 = mul nuw i64 %13, %14
  %16 = add i64 %15, -5379003240007669080
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 15
  %18 = load i64, ptr %17, align 1
  %19 = xor i64 %18, 7803944375302599315
  %20 = and i64 %19, 4294967295
  %21 = lshr i64 %19, 32
  %22 = mul nuw i64 %20, %21
  %23 = add i64 %22, 2202355383573550554
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 23
  %25 = load i64, ptr %24, align 1
  %26 = xor i64 %25, 7225222992597985931
  %27 = and i64 %26, 4294967295
  %28 = lshr i64 %26, 32
  %29 = mul nuw i64 %27, %28
  %30 = add i64 %29, 521324012582917694
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 31
  %32 = load i64, ptr %31, align 1
  %33 = xor i64 %32, 6646502709405000323
  %34 = and i64 %33, 4294967295
  %35 = lshr i64 %33, 32
  %36 = mul nuw i64 %34, %35
  %37 = add i64 %36, 8797245681034937984
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 39
  %39 = load i64, ptr %38, align 1
  %40 = xor i64 %39, 6067781326700386939
  %41 = and i64 %40, 4294967295
  %42 = lshr i64 %40, 32
  %43 = mul nuw i64 %41, %42
  %44 = add i64 %43, -3193096595624655908
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 47
  %46 = load i64, ptr %45, align 1
  %47 = xor i64 %46, 5489059943995773555
  %48 = and i64 %47, 4294967295
  %49 = lshr i64 %47, 32
  %50 = mul nuw i64 %48, %49
  %51 = add i64 %50, -7537213954940235576
  %52 = getelementptr inbounds nuw i8, ptr %1, i64 55
  %53 = load i64, ptr %52, align 1
  %54 = xor i64 %53, 4910338561291160171
  %55 = and i64 %54, 4294967295
  %56 = lshr i64 %54, 32
  %57 = mul nuw i64 %55, %56
  %58 = add i64 %57, 1880363210747381836
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 63
  %60 = load i64, ptr %59, align 1
  %61 = xor i64 %60, 4331898653563257443
  %62 = and i64 %61, 4294967295
  %63 = lshr i64 %61, 32
  %64 = mul nuw i64 %62, %63
  %65 = add i64 %64, -4400435065455961457
  %66 = xor i64 %16, -4652524582839202649
  %67 = xor i64 %23, 1984359620303729549
  %68 = zext i64 %66 to i128
  %69 = zext i64 %67 to i128
  %70 = mul nuw i128 %69, %68
  %71 = lshr i128 %70, 64
  %72 = xor i128 %71, %70
  %73 = trunc i128 %72 to i64
  %74 = add i64 %73, 7566781886141388340
  %75 = xor i64 %30, -2541483832472132915
  %76 = xor i64 %37, 2180989409883091587
  %77 = zext i64 %75 to i128
  %78 = zext i64 %76 to i128
  %79 = mul nuw i128 %78, %77
  %80 = lshr i128 %79, 64
  %81 = xor i128 %80, %79
  %82 = trunc i128 %81 to i64
  %83 = add i64 %74, %82
  %84 = xor i64 %44, 8793566567164168122
  %85 = xor i64 %51, 2328284475129367699
  %86 = zext i64 %84 to i128
  %87 = zext i64 %85 to i128
  %88 = mul nuw i128 %87, %86
  %89 = lshr i128 %88, 64
  %90 = xor i128 %89, %88
  %91 = trunc i128 %90 to i64
  %92 = add i64 %83, %91
  %93 = xor i64 %58, -8122372361858984281
  %94 = xor i64 %65, 5405151996374444017
  %95 = zext i64 %93 to i128
  %96 = zext i64 %94 to i128
  %97 = mul nuw i128 %96, %95
  %98 = lshr i128 %97, 64
  %99 = xor i128 %98, %97
  %100 = trunc i128 %99 to i64
  %101 = add i64 %92, %100
  %102 = lshr i64 %101, 37
  %103 = xor i64 %102, %101
  %104 = mul i64 %103, 1609587929392839161
  %105 = lshr i64 %104, 32
  %106 = xor i64 %105, %104
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %1)
  ret i64 %106
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
