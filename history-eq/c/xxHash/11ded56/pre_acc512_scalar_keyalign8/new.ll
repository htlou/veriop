; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/11ded56/pre_acc512_scalar_keyalign8/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/11ded56/pre_acc512_scalar_keyalign8/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_acc512(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = ptrtoint ptr %2 to i64
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %101

7:                                                ; preds = %3
  %8 = load i64, ptr %0, align 8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %22 = load i64, ptr %21, align 8
  %23 = load i64, ptr %1, align 1
  %24 = load i64, ptr %2, align 8
  %25 = xor i64 %24, %23
  %26 = and i64 %25, 4294967295
  %27 = lshr i64 %25, 32
  %28 = mul nuw i64 %26, %27
  %29 = add i64 %8, %23
  %30 = add i64 %29, %28
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %32 = load i64, ptr %31, align 1
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %34 = load i64, ptr %33, align 8
  %35 = xor i64 %34, %32
  %36 = and i64 %35, 4294967295
  %37 = lshr i64 %35, 32
  %38 = mul nuw i64 %36, %37
  %39 = add i64 %10, %32
  %40 = add i64 %39, %38
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %42 = load i64, ptr %41, align 1
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %44 = load i64, ptr %43, align 8
  %45 = xor i64 %44, %42
  %46 = and i64 %45, 4294967295
  %47 = lshr i64 %45, 32
  %48 = mul nuw i64 %46, %47
  %49 = add i64 %12, %42
  %50 = add i64 %49, %48
  %51 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %52 = load i64, ptr %51, align 1
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %54 = load i64, ptr %53, align 8
  %55 = xor i64 %54, %52
  %56 = and i64 %55, 4294967295
  %57 = lshr i64 %55, 32
  %58 = mul nuw i64 %56, %57
  %59 = add i64 %14, %52
  %60 = add i64 %59, %58
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %62 = load i64, ptr %61, align 1
  %63 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %64 = load i64, ptr %63, align 8
  %65 = xor i64 %64, %62
  %66 = and i64 %65, 4294967295
  %67 = lshr i64 %65, 32
  %68 = mul nuw i64 %66, %67
  %69 = add i64 %16, %62
  %70 = add i64 %69, %68
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %72 = load i64, ptr %71, align 1
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %74 = load i64, ptr %73, align 8
  %75 = xor i64 %74, %72
  %76 = and i64 %75, 4294967295
  %77 = lshr i64 %75, 32
  %78 = mul nuw i64 %76, %77
  %79 = add i64 %18, %72
  %80 = add i64 %79, %78
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %82 = load i64, ptr %81, align 1
  %83 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %84 = load i64, ptr %83, align 8
  %85 = xor i64 %84, %82
  %86 = and i64 %85, 4294967295
  %87 = lshr i64 %85, 32
  %88 = mul nuw i64 %86, %87
  %89 = add i64 %20, %82
  %90 = add i64 %89, %88
  %91 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %92 = load i64, ptr %91, align 1
  %93 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %94 = load i64, ptr %93, align 8
  %95 = xor i64 %94, %92
  %96 = and i64 %95, 4294967295
  %97 = lshr i64 %95, 32
  %98 = mul nuw i64 %96, %97
  %99 = add i64 %22, %92
  %100 = add i64 %99, %98
  store i64 %30, ptr %0, align 8
  store i64 %40, ptr %9, align 8
  store i64 %50, ptr %11, align 8
  store i64 %60, ptr %13, align 8
  store i64 %70, ptr %15, align 8
  store i64 %80, ptr %17, align 8
  store i64 %90, ptr %19, align 8
  store i64 %100, ptr %21, align 8
  br label %101

101:                                              ; preds = %3, %7
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
