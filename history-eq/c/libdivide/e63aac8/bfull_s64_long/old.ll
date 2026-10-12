; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/e63aac8/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/e63aac8/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_s64_bfull(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %138, label %4

4:                                                ; preds = %2
  %5 = icmp slt i64 %1, 0
  %6 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %1, i1 true)
  %7 = tail call range(i64 1, 64) i64 @llvm.ctpop.i64(i64 %6)
  %8 = icmp samesign ult i64 %7, 2
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %1, i1 true)
  %11 = trunc nuw nsw i64 %10 to i8
  %12 = lshr i64 %1, 56
  %13 = trunc nuw i64 %12 to i8
  %14 = and i8 %13, -128
  %15 = or disjoint i8 %14, %11
  br label %102

16:                                               ; preds = %4
  %17 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %6, i1 true)
  %18 = trunc nuw nsw i64 %17 to i32
  %19 = xor i32 %18, 63
  %20 = sub nuw nsw i32 62, %18
  %21 = zext nneg i32 %20 to i64
  %22 = shl nuw nsw i64 1, %21
  %23 = icmp samesign ult i64 %22, %6
  br i1 %23, label %24, label %72

24:                                               ; preds = %16
  %25 = shl i64 %6, %17
  %26 = shl i64 %22, %17
  %27 = lshr i64 %25, 32
  %28 = and i64 %25, 4294967294
  %29 = udiv i64 %26, %27
  %30 = mul i64 %29, %27
  %31 = urem i64 %26, %27
  br label %32

32:                                               ; preds = %40, %24
  %33 = phi i64 [ %29, %24 ], [ %41, %40 ]
  %34 = phi i64 [ %31, %24 ], [ %42, %40 ]
  %35 = icmp ugt i64 %33, 4294967295
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = mul nuw i64 %33, %28
  %38 = shl i64 %34, 32
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36, %32
  %41 = add i64 %33, -1
  %42 = add i64 %34, %27
  %43 = icmp ult i64 %42, 4294967296
  br i1 %43, label %32, label %44

44:                                               ; preds = %40, %36
  %45 = phi i64 [ %41, %40 ], [ %33, %36 ]
  %46 = shl i64 %26, 32
  %47 = mul i64 %45, %25
  %48 = sub i64 %46, %47
  %49 = udiv i64 %48, %27
  %50 = mul i64 %49, %27
  %51 = urem i64 %48, %27
  br label %52

52:                                               ; preds = %60, %44
  %53 = phi i64 [ %49, %44 ], [ %61, %60 ]
  %54 = phi i64 [ %51, %44 ], [ %62, %60 ]
  %55 = icmp ugt i64 %53, 4294967295
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = mul nuw i64 %53, %28
  %58 = shl i64 %54, 32
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56, %52
  %61 = add i64 %53, -1
  %62 = add i64 %54, %27
  %63 = icmp ult i64 %62, 4294967296
  br i1 %63, label %52, label %64

64:                                               ; preds = %60, %56
  %65 = phi i64 [ %61, %60 ], [ %53, %56 ]
  %66 = shl i64 %48, 32
  %67 = mul i64 %65, %25
  %68 = sub i64 %66, %67
  %69 = lshr i64 %68, %17
  %70 = shl i64 %45, 32
  %71 = add i64 %65, %70
  br label %72

72:                                               ; preds = %64, %16
  %73 = phi i64 [ %69, %64 ], [ -1, %16 ]
  %74 = phi i64 [ %71, %64 ], [ -1, %16 ]
  %75 = sub i64 %6, %73
  %76 = zext nneg i32 %19 to i64
  %77 = lshr i64 %75, %76
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = trunc nuw nsw i32 %20 to i8
  br label %95

81:                                               ; preds = %72
  %82 = shl i64 %74, 1
  %83 = shl i64 %73, 1
  %84 = icmp uge i64 %83, %6
  %85 = icmp slt i64 %73, 0
  %86 = or i1 %85, %84
  %87 = zext i1 %86 to i64
  %88 = or disjoint i64 %82, %87
  %89 = lshr i64 %1, 56
  %90 = trunc nuw nsw i64 %89 to i32
  %91 = and i32 %90, 128
  %92 = or disjoint i32 %19, %91
  %93 = trunc nuw i32 %92 to i8
  %94 = or disjoint i8 %93, 64
  br label %95

95:                                               ; preds = %79, %81
  %96 = phi i8 [ %80, %79 ], [ %94, %81 ]
  %97 = phi i64 [ %74, %79 ], [ %88, %81 ]
  %98 = add i64 %97, 1
  %99 = xor i64 %97, -1
  %100 = select i1 %5, i64 %99, i64 %98
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %9, %95
  %103 = phi i8 [ %15, %9 ], [ %96, %95 ]
  %104 = and i8 %103, 63
  %105 = zext nneg i8 %104 to i64
  %106 = shl nsw i64 -1, %105
  %107 = xor i64 %106, -1
  %108 = icmp slt i64 %0, 0
  %109 = select i1 %108, i64 %107, i64 0
  %110 = add nsw i64 %109, %0
  %111 = ashr i64 %110, %105
  %112 = ashr i8 %103, 7
  %113 = sext i8 %112 to i64
  %114 = xor i64 %111, %113
  %115 = sub nsw i64 %114, %113
  br label %138

116:                                              ; preds = %95
  %117 = sext i64 %100 to i128
  %118 = sext i64 %0 to i128
  %119 = mul nsw i128 %117, %118
  %120 = lshr i128 %119, 64
  %121 = trunc nuw i128 %120 to i64
  %122 = zext i8 %96 to i32
  %123 = and i32 %122, 64
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %116
  %126 = ashr i8 %96, 7
  %127 = sext i8 %126 to i64
  %128 = xor i64 %0, %127
  %129 = sub i64 %128, %127
  %130 = add nsw i64 %129, %121
  br label %131

131:                                              ; preds = %125, %116
  %132 = phi i64 [ %130, %125 ], [ %121, %116 ]
  %133 = and i32 %122, 63
  %134 = zext nneg i32 %133 to i64
  %135 = ashr i64 %132, %134
  %136 = lshr i64 %135, 63
  %137 = add nsw i64 %136, %135
  br label %138

138:                                              ; preds = %131, %102, %2
  %139 = phi i64 [ 0, %2 ], [ %115, %102 ], [ %137, %131 ]
  ret i64 %139
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #2

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
