; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/b031fb3/wrap_u64rec.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/b031fb3/wrap_u64rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64_bf_recover_api(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult i64 %0, 2
  br i1 %2, label %110, label %3

3:                                                ; preds = %1
  %4 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, 0) %0, i1 true)
  %5 = trunc nuw nsw i64 %4 to i32
  %6 = xor i32 %5, 63
  %7 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %0)
  %8 = icmp samesign ult i64 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = sub nsw i64 62, %4
  br label %76

11:                                               ; preds = %3
  %12 = zext nneg i32 %6 to i64
  %13 = shl nuw i64 1, %12
  %14 = icmp ult i64 %13, %0
  br i1 %14, label %15, label %65

15:                                               ; preds = %11
  %16 = shl i64 %0, %4
  %17 = shl i64 %13, %4
  %18 = lshr i64 %16, 32
  %19 = and i64 %16, 4294967295
  %20 = udiv i64 %17, %18
  %21 = mul i64 %20, %18
  %22 = urem i64 %17, %18
  br label %23

23:                                               ; preds = %31, %15
  %24 = phi i64 [ %20, %15 ], [ %32, %31 ]
  %25 = phi i64 [ %22, %15 ], [ %33, %31 ]
  %26 = icmp ugt i64 %24, 4294967295
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = mul nuw i64 %24, %19
  %29 = shl i64 %25, 32
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27, %23
  %32 = add i64 %24, -1
  %33 = add i64 %25, %18
  %34 = icmp ult i64 %33, 4294967296
  br i1 %34, label %23, label %35

35:                                               ; preds = %31, %27
  %36 = phi i64 [ %32, %31 ], [ %24, %27 ]
  %37 = shl i64 %17, 32
  %38 = mul i64 %36, %16
  %39 = sub i64 %37, %38
  %40 = udiv i64 %39, %18
  %41 = mul i64 %40, %18
  %42 = urem i64 %39, %18
  br label %43

43:                                               ; preds = %51, %35
  %44 = phi i64 [ %40, %35 ], [ %52, %51 ]
  %45 = phi i64 [ %42, %35 ], [ %53, %51 ]
  %46 = icmp ugt i64 %44, 4294967295
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = mul nuw i64 %44, %19
  %49 = shl i64 %45, 32
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47, %43
  %52 = add i64 %44, -1
  %53 = add i64 %45, %18
  %54 = icmp ult i64 %53, 4294967296
  br i1 %54, label %43, label %55

55:                                               ; preds = %51, %47
  %56 = phi i64 [ %52, %51 ], [ %44, %47 ]
  %57 = shl i64 %39, 32
  %58 = mul i64 %56, %16
  %59 = sub i64 %57, %58
  %60 = lshr i64 %59, %4
  %61 = shl i64 %36, 33
  %62 = shl i64 %56, 1
  %63 = add i64 %62, %61
  %64 = or disjoint i64 %63, 1
  br label %65

65:                                               ; preds = %11, %55
  %66 = phi i64 [ %60, %55 ], [ -1, %11 ]
  %67 = phi i64 [ %64, %55 ], [ -1, %11 ]
  %68 = shl i64 %66, 1
  %69 = icmp uge i64 %68, %0
  %70 = icmp slt i64 %66, 0
  %71 = or i1 %70, %69
  %72 = zext i1 %71 to i64
  %73 = zext nneg i32 %6 to i64
  %74 = add i64 %67, %72
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %9, %65
  %77 = phi i64 [ %10, %9 ], [ %73, %65 ]
  %78 = add nsw i64 %77, 1
  %79 = and i64 %78, 255
  %80 = shl nuw i64 1, %79
  br label %110

81:                                               ; preds = %65
  %82 = zext nneg i32 %6 to i64
  %83 = shl nuw i64 1, %82
  %84 = zext i64 %83 to i128
  %85 = shl nuw i128 %84, 64
  %86 = zext i64 %74 to i128
  %87 = or disjoint i128 %86, 18446744073709551616
  %88 = freeze i128 %85
  %89 = freeze i128 %87
  %90 = udiv i128 %88, %89
  %91 = mul i128 %90, %89
  %92 = sub i128 %88, %91
  %93 = trunc i128 %92 to i64
  %94 = lshr i128 %92, 64
  %95 = trunc nuw nsw i128 %94 to i64
  %96 = trunc nuw i128 %90 to i64
  %97 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %93, i64 1)
  %98 = icmp samesign ugt i64 %97, 1
  br i1 %98, label %105, label %99

99:                                               ; preds = %81
  %100 = shl i64 %93, 1
  %101 = icmp eq i64 %97, 1
  %102 = icmp uge i64 %100, %74
  %103 = select i1 %101, i1 %102, i1 false
  %104 = zext i1 %103 to i64
  br label %105

105:                                              ; preds = %99, %81
  %106 = phi i64 [ 1, %81 ], [ %104, %99 ]
  %107 = shl i64 %96, 1
  %108 = or disjoint i64 %107, 1
  %109 = add i64 %108, %106
  br label %110

110:                                              ; preds = %105, %76, %1
  %111 = phi i64 [ 0, %1 ], [ %80, %76 ], [ %109, %105 ]
  ret i64 %111
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
