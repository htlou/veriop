; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7558f18/pre_scramble_scalar/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7558f18/pre_scramble_scalar/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_scramble(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %17 = load i64, ptr %16, align 8
  %18 = lshr i64 %3, 47
  %19 = xor i64 %3, %18
  %20 = xor i64 %19, 2870177450012600261
  %21 = and i64 %20, 4294967295
  %22 = load i32, ptr %1, align 4
  %23 = zext i32 %22 to i64
  %24 = mul nuw i64 %21, %23
  %25 = lshr i64 %20, 32
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %27 = load i32, ptr %26, align 4
  %28 = zext i32 %27 to i64
  %29 = mul nuw i64 %25, %28
  %30 = xor i64 %29, %24
  %31 = lshr i64 %5, 47
  %32 = xor i64 %5, %31
  %33 = xor i64 %32, 2870177450012600261
  %34 = and i64 %33, 4294967295
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %36 = load i32, ptr %35, align 4
  %37 = zext i32 %36 to i64
  %38 = mul nuw i64 %34, %37
  %39 = lshr i64 %33, 32
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %41 = load i32, ptr %40, align 4
  %42 = zext i32 %41 to i64
  %43 = mul nuw i64 %39, %42
  %44 = xor i64 %43, %38
  %45 = lshr i64 %7, 47
  %46 = xor i64 %7, %45
  %47 = xor i64 %46, 2870177450012600261
  %48 = and i64 %47, 4294967295
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %50 = load i32, ptr %49, align 4
  %51 = zext i32 %50 to i64
  %52 = mul nuw i64 %48, %51
  %53 = lshr i64 %47, 32
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %55 = load i32, ptr %54, align 4
  %56 = zext i32 %55 to i64
  %57 = mul nuw i64 %53, %56
  %58 = xor i64 %57, %52
  %59 = lshr i64 %9, 47
  %60 = xor i64 %9, %59
  %61 = xor i64 %60, 2870177450012600261
  %62 = and i64 %61, 4294967295
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %64 = load i32, ptr %63, align 4
  %65 = zext i32 %64 to i64
  %66 = mul nuw i64 %62, %65
  %67 = lshr i64 %61, 32
  %68 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %69 = load i32, ptr %68, align 4
  %70 = zext i32 %69 to i64
  %71 = mul nuw i64 %67, %70
  %72 = xor i64 %71, %66
  %73 = lshr i64 %11, 47
  %74 = xor i64 %11, %73
  %75 = xor i64 %74, 2870177450012600261
  %76 = and i64 %75, 4294967295
  %77 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %78 = load i32, ptr %77, align 4
  %79 = zext i32 %78 to i64
  %80 = mul nuw i64 %76, %79
  %81 = lshr i64 %75, 32
  %82 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %83 = load i32, ptr %82, align 4
  %84 = zext i32 %83 to i64
  %85 = mul nuw i64 %81, %84
  %86 = xor i64 %85, %80
  %87 = lshr i64 %13, 47
  %88 = xor i64 %13, %87
  %89 = xor i64 %88, 2870177450012600261
  %90 = and i64 %89, 4294967295
  %91 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %92 = load i32, ptr %91, align 4
  %93 = zext i32 %92 to i64
  %94 = mul nuw i64 %90, %93
  %95 = lshr i64 %89, 32
  %96 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %97 = load i32, ptr %96, align 4
  %98 = zext i32 %97 to i64
  %99 = mul nuw i64 %95, %98
  %100 = xor i64 %99, %94
  %101 = lshr i64 %15, 47
  %102 = xor i64 %15, %101
  %103 = xor i64 %102, 2870177450012600261
  %104 = and i64 %103, 4294967295
  %105 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %106 = load i32, ptr %105, align 4
  %107 = zext i32 %106 to i64
  %108 = mul nuw i64 %104, %107
  %109 = lshr i64 %103, 32
  %110 = getelementptr inbounds nuw i8, ptr %1, i64 52
  %111 = load i32, ptr %110, align 4
  %112 = zext i32 %111 to i64
  %113 = mul nuw i64 %109, %112
  %114 = xor i64 %113, %108
  %115 = lshr i64 %17, 47
  %116 = xor i64 %17, %115
  %117 = xor i64 %116, 2870177450012600261
  %118 = and i64 %117, 4294967295
  %119 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %120 = load i32, ptr %119, align 4
  %121 = zext i32 %120 to i64
  %122 = mul nuw i64 %118, %121
  %123 = lshr i64 %117, 32
  %124 = getelementptr inbounds nuw i8, ptr %1, i64 60
  %125 = load i32, ptr %124, align 4
  %126 = zext i32 %125 to i64
  %127 = mul nuw i64 %123, %126
  %128 = xor i64 %127, %122
  store i64 %30, ptr %0, align 8
  store i64 %44, ptr %4, align 8
  store i64 %58, ptr %6, align 8
  store i64 %72, ptr %8, align 8
  store i64 %86, ptr %10, align 8
  store i64 %100, ptr %12, align 8
  store i64 %114, ptr %14, align 8
  store i64 %128, ptr %16, align 8
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
