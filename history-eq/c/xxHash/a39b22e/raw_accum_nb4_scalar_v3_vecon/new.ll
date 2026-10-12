; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/a39b22e/raw_accum_nb4_scalar_v3_vecon/wrapper.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/a39b22e/raw_accum_nb4_scalar_v3_vecon/wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @target_accum(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ugt i64 %3, 4
  br i1 %5, label %104, label %6

6:                                                ; preds = %4
  %7 = load <4 x i64>, ptr %0, align 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = load <4 x i64>, ptr %8, align 8
  %10 = icmp eq i64 %3, 0
  br i1 %10, label %101, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %14 = load <4 x i64>, ptr %1, align 1
  %15 = load <4 x i64>, ptr %2, align 8
  %16 = xor <4 x i64> %15, %14
  %17 = and <4 x i64> %16, splat (i64 4294967295)
  %18 = lshr <4 x i64> %16, splat (i64 32)
  %19 = mul nuw <4 x i64> %17, %18
  %20 = add <4 x i64> %14, %7
  %21 = add <4 x i64> %20, %19
  %22 = load <4 x i64>, ptr %12, align 1
  %23 = load <4 x i64>, ptr %13, align 8
  %24 = xor <4 x i64> %23, %22
  %25 = and <4 x i64> %24, splat (i64 4294967295)
  %26 = lshr <4 x i64> %24, splat (i64 32)
  %27 = mul nuw <4 x i64> %25, %26
  %28 = add <4 x i64> %22, %9
  %29 = add <4 x i64> %28, %27
  %30 = icmp eq i64 %3, 1
  br i1 %30, label %101, label %31

31:                                               ; preds = %11
  %32 = load <2 x i64>, ptr %13, align 8
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %34 = load <4 x i64>, ptr %33, align 1
  %35 = shufflevector <2 x i64> %32, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %36 = shufflevector <4 x i64> %15, <4 x i64> %35, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %37 = xor <4 x i64> %34, %36
  %38 = and <4 x i64> %37, splat (i64 4294967295)
  %39 = lshr <4 x i64> %37, splat (i64 32)
  %40 = mul nuw <4 x i64> %38, %39
  %41 = add <4 x i64> %34, %21
  %42 = add <4 x i64> %41, %40
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %44 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %45 = load i64, ptr %44, align 8
  %46 = load <4 x i64>, ptr %43, align 1
  %47 = shufflevector <4 x i64> %23, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %48 = insertelement <4 x i64> %47, i64 %45, i64 3
  %49 = xor <4 x i64> %46, %48
  %50 = and <4 x i64> %49, splat (i64 4294967295)
  %51 = lshr <4 x i64> %49, splat (i64 32)
  %52 = mul nuw <4 x i64> %50, %51
  %53 = add <4 x i64> %46, %29
  %54 = add <4 x i64> %53, %52
  %55 = icmp eq i64 %3, 2
  br i1 %55, label %101, label %56

56:                                               ; preds = %31
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %58 = load <4 x i64>, ptr %57, align 1
  %59 = shufflevector <4 x i64> %36, <4 x i64> %35, <4 x i32> <i32 1, i32 2, i32 3, i32 5>
  %60 = xor <4 x i64> %58, %59
  %61 = and <4 x i64> %60, splat (i64 4294967295)
  %62 = lshr <4 x i64> %60, splat (i64 32)
  %63 = mul nuw <4 x i64> %61, %62
  %64 = add <4 x i64> %58, %42
  %65 = add <4 x i64> %64, %63
  %66 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %67 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %68 = load i64, ptr %67, align 8
  %69 = load <4 x i64>, ptr %66, align 1
  %70 = shufflevector <4 x i64> %48, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %71 = insertelement <4 x i64> %70, i64 %68, i64 3
  %72 = xor <4 x i64> %69, %71
  %73 = and <4 x i64> %72, splat (i64 4294967295)
  %74 = lshr <4 x i64> %72, splat (i64 32)
  %75 = mul nuw <4 x i64> %73, %74
  %76 = add <4 x i64> %69, %54
  %77 = add <4 x i64> %76, %75
  %78 = icmp eq i64 %3, 3
  br i1 %78, label %101, label %79

79:                                               ; preds = %56
  %80 = getelementptr inbounds nuw i8, ptr %1, i64 192
  %81 = load <4 x i64>, ptr %80, align 1
  %82 = shufflevector <4 x i64> %59, <4 x i64> %23, <4 x i32> <i32 1, i32 2, i32 3, i32 6>
  %83 = xor <4 x i64> %81, %82
  %84 = and <4 x i64> %83, splat (i64 4294967295)
  %85 = lshr <4 x i64> %83, splat (i64 32)
  %86 = mul nuw <4 x i64> %84, %85
  %87 = add <4 x i64> %81, %65
  %88 = add <4 x i64> %87, %86
  %89 = getelementptr inbounds nuw i8, ptr %1, i64 224
  %90 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %91 = load i64, ptr %90, align 8
  %92 = load <4 x i64>, ptr %89, align 1
  %93 = shufflevector <4 x i64> %71, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %94 = insertelement <4 x i64> %93, i64 %91, i64 3
  %95 = xor <4 x i64> %92, %94
  %96 = and <4 x i64> %95, splat (i64 4294967295)
  %97 = lshr <4 x i64> %95, splat (i64 32)
  %98 = mul nuw <4 x i64> %96, %97
  %99 = add <4 x i64> %92, %77
  %100 = add <4 x i64> %99, %98
  br label %101

101:                                              ; preds = %6, %11, %31, %56, %79
  %102 = phi <4 x i64> [ %7, %6 ], [ %21, %11 ], [ %42, %31 ], [ %65, %56 ], [ %88, %79 ]
  %103 = phi <4 x i64> [ %9, %6 ], [ %29, %11 ], [ %54, %31 ], [ %77, %56 ], [ %100, %79 ]
  store <4 x i64> %102, ptr %0, align 8
  store <4 x i64> %103, ptr %8, align 8
  br label %104

104:                                              ; preds = %4, %101
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.enable"}
