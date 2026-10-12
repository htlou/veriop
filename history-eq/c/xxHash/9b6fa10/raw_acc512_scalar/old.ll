; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/9b6fa10/raw_acc512_scalar/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/9b6fa10/raw_acc512_scalar/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_acc512_64(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i64, ptr %1, align 1
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 1
  %7 = load i64, ptr %2, align 1
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %9 = load i64, ptr %8, align 1
  %10 = xor i64 %7, %4
  %11 = xor i64 %9, %6
  %12 = and i64 %10, 4294967295
  %13 = lshr i64 %10, 32
  %14 = mul nuw i64 %12, %13
  %15 = load i64, ptr %0, align 8
  %16 = add i64 %14, %15
  %17 = and i64 %11, 4294967295
  %18 = lshr i64 %11, 32
  %19 = mul nuw i64 %17, %18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %21 = load i64, ptr %20, align 8
  %22 = add i64 %21, %19
  %23 = add i64 %16, %4
  store i64 %23, ptr %0, align 8
  %24 = add i64 %22, %6
  store i64 %24, ptr %20, align 8
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %26 = load i64, ptr %25, align 1
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %28 = load i64, ptr %27, align 1
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %30 = load i64, ptr %29, align 1
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %32 = load i64, ptr %31, align 1
  %33 = xor i64 %30, %26
  %34 = xor i64 %32, %28
  %35 = and i64 %33, 4294967295
  %36 = lshr i64 %33, 32
  %37 = mul nuw i64 %35, %36
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %39 = load i64, ptr %38, align 8
  %40 = add i64 %37, %39
  %41 = and i64 %34, 4294967295
  %42 = lshr i64 %34, 32
  %43 = mul nuw i64 %41, %42
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %45 = load i64, ptr %44, align 8
  %46 = add i64 %45, %43
  %47 = add i64 %40, %26
  store i64 %47, ptr %38, align 8
  %48 = add i64 %46, %28
  store i64 %48, ptr %44, align 8
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %52 = load i64, ptr %51, align 1
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %54 = load i64, ptr %53, align 1
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %56 = load i64, ptr %55, align 1
  %57 = xor i64 %54, %50
  %58 = xor i64 %56, %52
  %59 = and i64 %57, 4294967295
  %60 = lshr i64 %57, 32
  %61 = mul nuw i64 %59, %60
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %63 = load i64, ptr %62, align 8
  %64 = add i64 %61, %63
  %65 = and i64 %58, 4294967295
  %66 = lshr i64 %58, 32
  %67 = mul nuw i64 %65, %66
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %69 = load i64, ptr %68, align 8
  %70 = add i64 %69, %67
  %71 = add i64 %64, %50
  store i64 %71, ptr %62, align 8
  %72 = add i64 %70, %52
  store i64 %72, ptr %68, align 8
  %73 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %74 = load i64, ptr %73, align 1
  %75 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %76 = load i64, ptr %75, align 1
  %77 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %78 = load i64, ptr %77, align 1
  %79 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %80 = load i64, ptr %79, align 1
  %81 = xor i64 %78, %74
  %82 = xor i64 %80, %76
  %83 = and i64 %81, 4294967295
  %84 = lshr i64 %81, 32
  %85 = mul nuw i64 %83, %84
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %87 = load i64, ptr %86, align 8
  %88 = add i64 %85, %87
  %89 = and i64 %82, 4294967295
  %90 = lshr i64 %82, 32
  %91 = mul nuw i64 %89, %90
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %93 = load i64, ptr %92, align 8
  %94 = add i64 %93, %91
  %95 = add i64 %88, %74
  store i64 %95, ptr %86, align 8
  %96 = add i64 %94, %76
  store i64 %96, ptr %92, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_acc512_128(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i64, ptr %1, align 1
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 1
  %7 = load i64, ptr %2, align 1
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %9 = load i64, ptr %8, align 1
  %10 = xor i64 %7, %4
  %11 = xor i64 %9, %6
  %12 = and i64 %10, 4294967295
  %13 = lshr i64 %10, 32
  %14 = mul nuw i64 %12, %13
  %15 = load i64, ptr %0, align 8
  %16 = add i64 %14, %15
  %17 = and i64 %11, 4294967295
  %18 = lshr i64 %11, 32
  %19 = mul nuw i64 %17, %18
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %21 = load i64, ptr %20, align 8
  %22 = add i64 %21, %19
  %23 = add i64 %16, %6
  store i64 %23, ptr %0, align 8
  %24 = add i64 %22, %4
  store i64 %24, ptr %20, align 8
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %26 = load i64, ptr %25, align 1
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %28 = load i64, ptr %27, align 1
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %30 = load i64, ptr %29, align 1
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %32 = load i64, ptr %31, align 1
  %33 = xor i64 %30, %26
  %34 = xor i64 %32, %28
  %35 = and i64 %33, 4294967295
  %36 = lshr i64 %33, 32
  %37 = mul nuw i64 %35, %36
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %39 = load i64, ptr %38, align 8
  %40 = add i64 %37, %39
  %41 = and i64 %34, 4294967295
  %42 = lshr i64 %34, 32
  %43 = mul nuw i64 %41, %42
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %45 = load i64, ptr %44, align 8
  %46 = add i64 %45, %43
  %47 = add i64 %40, %28
  store i64 %47, ptr %38, align 8
  %48 = add i64 %46, %26
  store i64 %48, ptr %44, align 8
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %52 = load i64, ptr %51, align 1
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %54 = load i64, ptr %53, align 1
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %56 = load i64, ptr %55, align 1
  %57 = xor i64 %54, %50
  %58 = xor i64 %56, %52
  %59 = and i64 %57, 4294967295
  %60 = lshr i64 %57, 32
  %61 = mul nuw i64 %59, %60
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %63 = load i64, ptr %62, align 8
  %64 = add i64 %61, %63
  %65 = and i64 %58, 4294967295
  %66 = lshr i64 %58, 32
  %67 = mul nuw i64 %65, %66
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %69 = load i64, ptr %68, align 8
  %70 = add i64 %69, %67
  %71 = add i64 %64, %52
  store i64 %71, ptr %62, align 8
  %72 = add i64 %70, %50
  store i64 %72, ptr %68, align 8
  %73 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %74 = load i64, ptr %73, align 1
  %75 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %76 = load i64, ptr %75, align 1
  %77 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %78 = load i64, ptr %77, align 1
  %79 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %80 = load i64, ptr %79, align 1
  %81 = xor i64 %78, %74
  %82 = xor i64 %80, %76
  %83 = and i64 %81, 4294967295
  %84 = lshr i64 %81, 32
  %85 = mul nuw i64 %83, %84
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %87 = load i64, ptr %86, align 8
  %88 = add i64 %85, %87
  %89 = and i64 %82, 4294967295
  %90 = lshr i64 %82, 32
  %91 = mul nuw i64 %89, %90
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %93 = load i64, ptr %92, align 8
  %94 = add i64 %93, %91
  %95 = add i64 %88, %76
  store i64 %95, ptr %86, align 8
  %96 = add i64 %94, %74
  store i64 %96, ptr %92, align 8
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
