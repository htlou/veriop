; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7558f18/pre_acc512_scalar/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7558f18/pre_acc512_scalar/wrapper.c"
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
  %19 = load i32, ptr %1, align 4
  %20 = load i32, ptr %2, align 4
  %21 = add i32 %20, %19
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %24
  %28 = zext i32 %27 to i64
  %29 = mul nuw i64 %28, %22
  %30 = add i64 %29, %4
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %32
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %38
  %42 = zext i32 %41 to i64
  %43 = mul nuw i64 %42, %36
  %44 = add i64 %43, %6
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, %46
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %52
  %56 = zext i32 %55 to i64
  %57 = mul nuw i64 %56, %50
  %58 = add i64 %57, %8
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, %60
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds nuw i8, ptr %2, i64 28
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, %66
  %70 = zext i32 %69 to i64
  %71 = mul nuw i64 %70, %64
  %72 = add i64 %71, %10
  %73 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, %74
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 36
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, %80
  %84 = zext i32 %83 to i64
  %85 = mul nuw i64 %84, %78
  %86 = add i64 %85, %12
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, %88
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds nuw i8, ptr %2, i64 44
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %96, %94
  %98 = zext i32 %97 to i64
  %99 = mul nuw i64 %98, %92
  %100 = add i64 %99, %14
  %101 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %104 = load i32, ptr %103, align 4
  %105 = add i32 %104, %102
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds nuw i8, ptr %1, i64 52
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds nuw i8, ptr %2, i64 52
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, %108
  %112 = zext i32 %111 to i64
  %113 = mul nuw i64 %112, %106
  %114 = add i64 %113, %16
  %115 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %118 = load i32, ptr %117, align 4
  %119 = add i32 %118, %116
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds nuw i8, ptr %1, i64 60
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr inbounds nuw i8, ptr %2, i64 60
  %124 = load i32, ptr %123, align 4
  %125 = add i32 %124, %122
  %126 = zext i32 %125 to i64
  %127 = mul nuw i64 %126, %120
  %128 = add i64 %127, %18
  store i64 %30, ptr %0, align 8
  store i64 %44, ptr %5, align 8
  store i64 %58, ptr %7, align 8
  store i64 %72, ptr %9, align 8
  store i64 %86, ptr %11, align 8
  store i64 %100, ptr %13, align 8
  store i64 %114, ptr %15, align 8
  store i64 %128, ptr %17, align 8
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
