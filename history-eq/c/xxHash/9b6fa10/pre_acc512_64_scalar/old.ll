; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/9b6fa10/pre_acc512_64_scalar/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/9b6fa10/pre_acc512_64_scalar/wrapper.c"
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
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %21 = load i64, ptr %20, align 1
  %22 = load i64, ptr %2, align 1
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %24 = load i64, ptr %23, align 1
  %25 = xor i64 %22, %19
  %26 = xor i64 %24, %21
  %27 = and i64 %25, 4294967295
  %28 = lshr i64 %25, 32
  %29 = mul nuw i64 %27, %28
  %30 = add i64 %29, %4
  %31 = and i64 %26, 4294967295
  %32 = lshr i64 %26, 32
  %33 = mul nuw i64 %31, %32
  %34 = add i64 %6, %33
  %35 = add i64 %30, %19
  %36 = add i64 %34, %21
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %38 = load i64, ptr %37, align 1
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %40 = load i64, ptr %39, align 1
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %42 = load i64, ptr %41, align 1
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %44 = load i64, ptr %43, align 1
  %45 = xor i64 %42, %38
  %46 = xor i64 %44, %40
  %47 = and i64 %45, 4294967295
  %48 = lshr i64 %45, 32
  %49 = mul nuw i64 %47, %48
  %50 = add i64 %49, %8
  %51 = and i64 %46, 4294967295
  %52 = lshr i64 %46, 32
  %53 = mul nuw i64 %51, %52
  %54 = add i64 %10, %53
  %55 = add i64 %50, %38
  %56 = add i64 %54, %40
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %58 = load i64, ptr %57, align 1
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %60 = load i64, ptr %59, align 1
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %62 = load i64, ptr %61, align 1
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %64 = load i64, ptr %63, align 1
  %65 = xor i64 %62, %58
  %66 = xor i64 %64, %60
  %67 = and i64 %65, 4294967295
  %68 = lshr i64 %65, 32
  %69 = mul nuw i64 %67, %68
  %70 = add i64 %69, %12
  %71 = and i64 %66, 4294967295
  %72 = lshr i64 %66, 32
  %73 = mul nuw i64 %71, %72
  %74 = add i64 %14, %73
  %75 = add i64 %70, %58
  %76 = add i64 %74, %60
  %77 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %78 = load i64, ptr %77, align 1
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %80 = load i64, ptr %79, align 1
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %82 = load i64, ptr %81, align 1
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %84 = load i64, ptr %83, align 1
  %85 = xor i64 %82, %78
  %86 = xor i64 %84, %80
  %87 = and i64 %85, 4294967295
  %88 = lshr i64 %85, 32
  %89 = mul nuw i64 %87, %88
  %90 = add i64 %89, %16
  %91 = and i64 %86, 4294967295
  %92 = lshr i64 %86, 32
  %93 = mul nuw i64 %91, %92
  %94 = add i64 %18, %93
  %95 = add i64 %90, %78
  %96 = add i64 %94, %80
  store i64 %35, ptr %0, align 8
  store i64 %36, ptr %5, align 8
  store i64 %55, ptr %7, align 8
  store i64 %56, ptr %9, align 8
  store i64 %75, ptr %11, align 8
  store i64 %76, ptr %13, align 8
  store i64 %95, ptr %15, align 8
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
