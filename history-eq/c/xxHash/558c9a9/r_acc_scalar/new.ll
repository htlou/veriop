; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/558c9a9/wrap_acc.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/558c9a9/wrap_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @target_raw_accumulate_512(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i64 noundef %20, i64 noundef %21, i64 noundef %22, i64 noundef %23, i32 noundef %24, ptr noundef writeonly %25) local_unnamed_addr #0 {
  %27 = icmp ugt i32 %24, 1
  br i1 %27, label %119, label %28

28:                                               ; preds = %26
  %29 = icmp eq i32 %24, 0
  %30 = xor i64 %16, %8
  %31 = and i64 %30, 4294967295
  %32 = lshr i64 %30, 32
  %33 = mul nuw i64 %31, %32
  %34 = xor i64 %18, %10
  %35 = and i64 %34, 4294967295
  %36 = lshr i64 %34, 32
  %37 = mul nuw i64 %35, %36
  %38 = xor i64 %20, %12
  %39 = and i64 %38, 4294967295
  %40 = lshr i64 %38, 32
  %41 = mul nuw i64 %39, %40
  %42 = xor i64 %22, %14
  br i1 %29, label %67, label %43

43:                                               ; preds = %28
  %44 = add i64 %8, %1
  %45 = xor i64 %17, %9
  %46 = and i64 %45, 4294967295
  %47 = lshr i64 %45, 32
  %48 = mul nuw i64 %46, %47
  %49 = add i64 %44, %48
  %50 = add i64 %10, %3
  %51 = xor i64 %19, %11
  %52 = and i64 %51, 4294967295
  %53 = lshr i64 %51, 32
  %54 = mul nuw i64 %52, %53
  %55 = add i64 %50, %54
  %56 = add i64 %12, %5
  %57 = xor i64 %21, %13
  %58 = and i64 %57, 4294967295
  %59 = lshr i64 %57, 32
  %60 = mul nuw i64 %58, %59
  %61 = add i64 %56, %60
  %62 = and i64 %42, 4294967295
  %63 = lshr i64 %42, 32
  %64 = mul nuw i64 %62, %63
  %65 = add i64 %15, %6
  %66 = add i64 %65, %64
  br label %91

67:                                               ; preds = %28
  %68 = xor i64 %17, %9
  %69 = add i64 %9, %1
  %70 = and i64 %68, 4294967295
  %71 = lshr i64 %68, 32
  %72 = mul nuw i64 %70, %71
  %73 = add i64 %69, %72
  %74 = xor i64 %19, %11
  %75 = add i64 %11, %3
  %76 = and i64 %74, 4294967295
  %77 = lshr i64 %74, 32
  %78 = mul nuw i64 %76, %77
  %79 = add i64 %75, %78
  %80 = xor i64 %21, %13
  %81 = add i64 %13, %5
  %82 = and i64 %80, 4294967295
  %83 = lshr i64 %80, 32
  %84 = mul nuw i64 %82, %83
  %85 = add i64 %81, %84
  %86 = add i64 %14, %6
  %87 = and i64 %42, 4294967295
  %88 = lshr i64 %42, 32
  %89 = mul nuw i64 %87, %88
  %90 = add i64 %86, %89
  br label %91

91:                                               ; preds = %43, %67
  %92 = phi i64 [ %14, %43 ], [ %15, %67 ]
  %93 = phi i64 [ %9, %43 ], [ %8, %67 ]
  %94 = phi i64 [ %49, %43 ], [ %73, %67 ]
  %95 = phi i64 [ %11, %43 ], [ %10, %67 ]
  %96 = phi i64 [ %55, %43 ], [ %79, %67 ]
  %97 = phi i64 [ %13, %43 ], [ %12, %67 ]
  %98 = phi i64 [ %61, %43 ], [ %85, %67 ]
  %99 = phi i64 [ %66, %43 ], [ %90, %67 ]
  %100 = add i64 %97, %4
  %101 = add i64 %100, %41
  %102 = add i64 %95, %2
  %103 = add i64 %102, %37
  %104 = add i64 %93, %0
  %105 = add i64 %104, %33
  %106 = add i64 %92, %7
  %107 = xor i64 %23, %15
  %108 = and i64 %107, 4294967295
  %109 = lshr i64 %107, 32
  %110 = mul nuw i64 %108, %109
  %111 = add i64 %106, %110
  store i64 %105, ptr %25, align 8
  %112 = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %94, ptr %112, align 8
  %113 = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i64 %103, ptr %113, align 8
  %114 = getelementptr inbounds nuw i8, ptr %25, i64 24
  store i64 %96, ptr %114, align 8
  %115 = getelementptr inbounds nuw i8, ptr %25, i64 32
  store i64 %101, ptr %115, align 8
  %116 = getelementptr inbounds nuw i8, ptr %25, i64 40
  store i64 %98, ptr %116, align 8
  %117 = getelementptr inbounds nuw i8, ptr %25, i64 48
  store i64 %99, ptr %117, align 8
  %118 = getelementptr inbounds nuw i8, ptr %25, i64 56
  store i64 %111, ptr %118, align 8
  br label %119

119:                                              ; preds = %26, %91
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
