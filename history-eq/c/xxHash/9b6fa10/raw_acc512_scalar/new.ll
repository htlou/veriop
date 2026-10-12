; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/9b6fa10/raw_acc512_scalar/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/9b6fa10/raw_acc512_scalar/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_acc512_64(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i64, ptr %1, align 1
  %5 = load i64, ptr %2, align 1
  %6 = xor i64 %5, %4
  %7 = load i64, ptr %0, align 8
  %8 = add i64 %7, %4
  %9 = and i64 %6, 4294967295
  %10 = lshr i64 %6, 32
  %11 = mul nuw i64 %9, %10
  %12 = add i64 %8, %11
  store i64 %12, ptr %0, align 8
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %14 = load i64, ptr %13, align 1
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %16 = load i64, ptr %15, align 1
  %17 = xor i64 %16, %14
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = load i64, ptr %18, align 8
  %20 = add i64 %19, %14
  %21 = and i64 %17, 4294967295
  %22 = lshr i64 %17, 32
  %23 = mul nuw i64 %21, %22
  %24 = add i64 %20, %23
  store i64 %24, ptr %18, align 8
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %26 = load i64, ptr %25, align 1
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %28 = load i64, ptr %27, align 1
  %29 = xor i64 %28, %26
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %31 = load i64, ptr %30, align 8
  %32 = add i64 %31, %26
  %33 = and i64 %29, 4294967295
  %34 = lshr i64 %29, 32
  %35 = mul nuw i64 %33, %34
  %36 = add i64 %32, %35
  store i64 %36, ptr %30, align 8
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %38 = load i64, ptr %37, align 1
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %40 = load i64, ptr %39, align 1
  %41 = xor i64 %40, %38
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %43 = load i64, ptr %42, align 8
  %44 = add i64 %43, %38
  %45 = and i64 %41, 4294967295
  %46 = lshr i64 %41, 32
  %47 = mul nuw i64 %45, %46
  %48 = add i64 %44, %47
  store i64 %48, ptr %42, align 8
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %52, %50
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %55 = load i64, ptr %54, align 8
  %56 = add i64 %55, %50
  %57 = and i64 %53, 4294967295
  %58 = lshr i64 %53, 32
  %59 = mul nuw i64 %57, %58
  %60 = add i64 %56, %59
  store i64 %60, ptr %54, align 8
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %62 = load i64, ptr %61, align 1
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %64 = load i64, ptr %63, align 1
  %65 = xor i64 %64, %62
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %67 = load i64, ptr %66, align 8
  %68 = add i64 %67, %62
  %69 = and i64 %65, 4294967295
  %70 = lshr i64 %65, 32
  %71 = mul nuw i64 %69, %70
  %72 = add i64 %68, %71
  store i64 %72, ptr %66, align 8
  %73 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %74 = load i64, ptr %73, align 1
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %76 = load i64, ptr %75, align 1
  %77 = xor i64 %76, %74
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %79 = load i64, ptr %78, align 8
  %80 = add i64 %79, %74
  %81 = and i64 %77, 4294967295
  %82 = lshr i64 %77, 32
  %83 = mul nuw i64 %81, %82
  %84 = add i64 %80, %83
  store i64 %84, ptr %78, align 8
  %85 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %86 = load i64, ptr %85, align 1
  %87 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %88 = load i64, ptr %87, align 1
  %89 = xor i64 %88, %86
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %91 = load i64, ptr %90, align 8
  %92 = add i64 %91, %86
  %93 = and i64 %89, 4294967295
  %94 = lshr i64 %89, 32
  %95 = mul nuw i64 %93, %94
  %96 = add i64 %92, %95
  store i64 %96, ptr %90, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_acc512_128(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i64, ptr %1, align 1
  %5 = load i64, ptr %2, align 1
  %6 = xor i64 %5, %4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load i64, ptr %7, align 8
  %9 = add i64 %8, %4
  store i64 %9, ptr %7, align 8
  %10 = and i64 %6, 4294967295
  %11 = lshr i64 %6, 32
  %12 = mul nuw i64 %10, %11
  %13 = load i64, ptr %0, align 8
  %14 = add i64 %13, %12
  store i64 %14, ptr %0, align 8
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %16 = load i64, ptr %15, align 1
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %18 = load i64, ptr %17, align 1
  %19 = xor i64 %18, %16
  %20 = add i64 %14, %16
  store i64 %20, ptr %0, align 8
  %21 = and i64 %19, 4294967295
  %22 = lshr i64 %19, 32
  %23 = mul nuw i64 %21, %22
  %24 = add i64 %9, %23
  store i64 %24, ptr %7, align 8
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %26 = load i64, ptr %25, align 1
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %28 = load i64, ptr %27, align 1
  %29 = xor i64 %28, %26
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %31 = load i64, ptr %30, align 8
  %32 = add i64 %31, %26
  store i64 %32, ptr %30, align 8
  %33 = and i64 %29, 4294967295
  %34 = lshr i64 %29, 32
  %35 = mul nuw i64 %33, %34
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %37 = load i64, ptr %36, align 8
  %38 = add i64 %37, %35
  store i64 %38, ptr %36, align 8
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %40 = load i64, ptr %39, align 1
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %42 = load i64, ptr %41, align 1
  %43 = xor i64 %42, %40
  %44 = add i64 %38, %40
  store i64 %44, ptr %36, align 8
  %45 = and i64 %43, 4294967295
  %46 = lshr i64 %43, 32
  %47 = mul nuw i64 %45, %46
  %48 = add i64 %32, %47
  store i64 %48, ptr %30, align 8
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %50 = load i64, ptr %49, align 1
  %51 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %52 = load i64, ptr %51, align 1
  %53 = xor i64 %52, %50
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %55 = load i64, ptr %54, align 8
  %56 = add i64 %55, %50
  store i64 %56, ptr %54, align 8
  %57 = and i64 %53, 4294967295
  %58 = lshr i64 %53, 32
  %59 = mul nuw i64 %57, %58
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %61 = load i64, ptr %60, align 8
  %62 = add i64 %61, %59
  store i64 %62, ptr %60, align 8
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %64 = load i64, ptr %63, align 1
  %65 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %66 = load i64, ptr %65, align 1
  %67 = xor i64 %66, %64
  %68 = add i64 %62, %64
  store i64 %68, ptr %60, align 8
  %69 = and i64 %67, 4294967295
  %70 = lshr i64 %67, 32
  %71 = mul nuw i64 %69, %70
  %72 = add i64 %56, %71
  store i64 %72, ptr %54, align 8
  %73 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %74 = load i64, ptr %73, align 1
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %76 = load i64, ptr %75, align 1
  %77 = xor i64 %76, %74
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %79 = load i64, ptr %78, align 8
  %80 = add i64 %79, %74
  store i64 %80, ptr %78, align 8
  %81 = and i64 %77, 4294967295
  %82 = lshr i64 %77, 32
  %83 = mul nuw i64 %81, %82
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %85 = load i64, ptr %84, align 8
  %86 = add i64 %85, %83
  store i64 %86, ptr %84, align 8
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %88 = load i64, ptr %87, align 1
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %90 = load i64, ptr %89, align 1
  %91 = xor i64 %90, %88
  %92 = add i64 %86, %88
  store i64 %92, ptr %84, align 8
  %93 = and i64 %91, 4294967295
  %94 = lshr i64 %91, 32
  %95 = mul nuw i64 %93, %94
  %96 = add i64 %80, %95
  store i64 %96, ptr %78, align 8
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
