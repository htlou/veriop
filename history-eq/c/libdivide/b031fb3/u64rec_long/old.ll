; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/b031fb3/wrap_u64rec.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/b031fb3/wrap_u64rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_u64_bf_recover_api(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult i64 %0, 2
  br i1 %2, label %105, label %3

3:                                                ; preds = %1
  %4 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, 0) %0, i1 true)
  %5 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %0)
  %6 = icmp samesign ult i64 %5, 2
  br i1 %6, label %71, label %7

7:                                                ; preds = %3
  %8 = xor i64 %4, 63
  %9 = shl nuw i64 1, %8
  %10 = icmp ult i64 %9, %0
  br i1 %10, label %11, label %61

11:                                               ; preds = %7
  %12 = shl i64 %0, %4
  %13 = shl i64 %9, %4
  %14 = lshr i64 %12, 32
  %15 = and i64 %12, 4294967295
  %16 = udiv i64 %13, %14
  %17 = mul i64 %16, %14
  %18 = urem i64 %13, %14
  br label %19

19:                                               ; preds = %27, %11
  %20 = phi i64 [ %16, %11 ], [ %28, %27 ]
  %21 = phi i64 [ %18, %11 ], [ %29, %27 ]
  %22 = icmp ugt i64 %20, 4294967295
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = mul nuw i64 %20, %15
  %25 = shl i64 %21, 32
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23, %19
  %28 = add i64 %20, -1
  %29 = add i64 %21, %14
  %30 = icmp ult i64 %29, 4294967296
  br i1 %30, label %19, label %31

31:                                               ; preds = %27, %23
  %32 = phi i64 [ %28, %27 ], [ %20, %23 ]
  %33 = shl i64 %13, 32
  %34 = mul i64 %32, %12
  %35 = sub i64 %33, %34
  %36 = udiv i64 %35, %14
  %37 = mul i64 %36, %14
  %38 = urem i64 %35, %14
  br label %39

39:                                               ; preds = %47, %31
  %40 = phi i64 [ %36, %31 ], [ %48, %47 ]
  %41 = phi i64 [ %38, %31 ], [ %49, %47 ]
  %42 = icmp ugt i64 %40, 4294967295
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = mul nuw i64 %40, %15
  %45 = shl i64 %41, 32
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43, %39
  %48 = add i64 %40, -1
  %49 = add i64 %41, %14
  %50 = icmp ult i64 %49, 4294967296
  br i1 %50, label %39, label %51

51:                                               ; preds = %47, %43
  %52 = phi i64 [ %48, %47 ], [ %40, %43 ]
  %53 = shl i64 %35, 32
  %54 = mul i64 %52, %12
  %55 = sub i64 %53, %54
  %56 = lshr i64 %55, %4
  %57 = shl i64 %32, 33
  %58 = shl i64 %52, 1
  %59 = add i64 %58, %57
  %60 = or disjoint i64 %59, 1
  br label %61

61:                                               ; preds = %7, %51
  %62 = phi i64 [ %56, %51 ], [ -1, %7 ]
  %63 = phi i64 [ %60, %51 ], [ -1, %7 ]
  %64 = shl i64 %62, 1
  %65 = icmp uge i64 %64, %0
  %66 = icmp slt i64 %62, 0
  %67 = or i1 %66, %65
  %68 = zext i1 %67 to i64
  %69 = add i64 %63, %68
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %73, label %78

71:                                               ; preds = %3
  %72 = sub nuw nsw i64 62, %4
  br label %73

73:                                               ; preds = %71, %61
  %74 = phi i64 [ %8, %61 ], [ %72, %71 ]
  %75 = add nsw i64 %74, 1
  %76 = and i64 %75, 255
  %77 = shl nuw i64 1, %76
  br label %105

78:                                               ; preds = %61
  %79 = zext i64 %9 to i128
  %80 = shl nuw i128 %79, 64
  %81 = zext i64 %69 to i128
  %82 = or disjoint i128 %81, 18446744073709551616
  %83 = freeze i128 %80
  %84 = freeze i128 %82
  %85 = udiv i128 %83, %84
  %86 = mul i128 %85, %84
  %87 = sub i128 %83, %86
  %88 = trunc i128 %87 to i64
  %89 = lshr i128 %87, 64
  %90 = trunc nuw nsw i128 %89 to i64
  %91 = trunc nuw i128 %85 to i64
  %92 = tail call i64 @llvm.fshl.i64(i64 %90, i64 %88, i64 1)
  %93 = icmp samesign ugt i64 %92, 1
  br i1 %93, label %100, label %94

94:                                               ; preds = %78
  %95 = shl i64 %88, 1
  %96 = icmp eq i64 %92, 1
  %97 = icmp uge i64 %95, %69
  %98 = select i1 %96, i1 %97, i1 false
  %99 = zext i1 %98 to i64
  br label %100

100:                                              ; preds = %94, %78
  %101 = phi i64 [ 1, %78 ], [ %99, %94 ]
  %102 = shl i64 %91, 1
  %103 = or disjoint i64 %102, 1
  %104 = add i64 %103, %101
  br label %105

105:                                              ; preds = %100, %73, %1
  %106 = phi i64 [ 0, %1 ], [ %77, %73 ], [ %104, %100 ]
  ret i64 %106
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
