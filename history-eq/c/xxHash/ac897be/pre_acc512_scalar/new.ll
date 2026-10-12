; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/ac897be/pre_acc512_scalar/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/ac897be/pre_acc512_scalar/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_acc512(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i64, ptr %0, align 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %18 = load i64, ptr %17, align 8
  %19 = load i64, ptr %1, align 1
  %20 = load i64, ptr %2, align 1
  %21 = xor i64 %20, %19
  %22 = and i64 %21, 4294967295
  %23 = lshr i64 %21, 32
  %24 = mul nuw i64 %22, %23
  %25 = add i64 %4, %19
  %26 = add i64 %25, %24
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %28 = load i64, ptr %27, align 1
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %30 = load i64, ptr %29, align 1
  %31 = xor i64 %30, %28
  %32 = and i64 %31, 4294967295
  %33 = lshr i64 %31, 32
  %34 = mul nuw i64 %32, %33
  %35 = add i64 %6, %28
  %36 = add i64 %35, %34
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %38 = load i64, ptr %37, align 1
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %40 = load i64, ptr %39, align 1
  %41 = xor i64 %40, %38
  %42 = and i64 %41, 4294967295
  %43 = lshr i64 %41, 32
  %44 = mul nuw i64 %42, %43
  %45 = add i64 %8, %38
  %46 = add i64 %45, %44
  %47 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %48 = load i64, ptr %47, align 1
  %49 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %50 = load i64, ptr %49, align 1
  %51 = xor i64 %50, %48
  %52 = and i64 %51, 4294967295
  %53 = lshr i64 %51, 32
  %54 = mul nuw i64 %52, %53
  %55 = add i64 %10, %48
  %56 = add i64 %55, %54
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %58 = load i64, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %60 = load i64, ptr %59, align 1
  %61 = xor i64 %60, %58
  %62 = and i64 %61, 4294967295
  %63 = lshr i64 %61, 32
  %64 = mul nuw i64 %62, %63
  %65 = add i64 %12, %58
  %66 = add i64 %65, %64
  %67 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %68 = load i64, ptr %67, align 1
  %69 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %70 = load i64, ptr %69, align 1
  %71 = xor i64 %70, %68
  %72 = and i64 %71, 4294967295
  %73 = lshr i64 %71, 32
  %74 = mul nuw i64 %72, %73
  %75 = add i64 %14, %68
  %76 = add i64 %75, %74
  %77 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %78 = load i64, ptr %77, align 1
  %79 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %80 = load i64, ptr %79, align 1
  %81 = xor i64 %80, %78
  %82 = and i64 %81, 4294967295
  %83 = lshr i64 %81, 32
  %84 = mul nuw i64 %82, %83
  %85 = add i64 %16, %78
  %86 = add i64 %85, %84
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %88 = load i64, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %90 = load i64, ptr %89, align 1
  %91 = xor i64 %90, %88
  %92 = and i64 %91, 4294967295
  %93 = lshr i64 %91, 32
  %94 = mul nuw i64 %92, %93
  %95 = add i64 %18, %88
  %96 = add i64 %95, %94
  store i64 %26, ptr %0, align 8
  store i64 %36, ptr %5, align 8
  store i64 %46, ptr %7, align 8
  store i64 %56, ptr %9, align 8
  store i64 %66, ptr %11, align 8
  store i64 %76, ptr %13, align 8
  store i64 %86, ptr %15, align 8
  store i64 %96, ptr %17, align 8
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
