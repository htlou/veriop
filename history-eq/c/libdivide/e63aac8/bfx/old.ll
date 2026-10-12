; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/e63aac8/wrap.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/e63aac8/wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_s64_bfx(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %1, 1
  %4 = icmp ult i64 %3, 3
  br i1 %4, label %139, label %5

5:                                                ; preds = %2
  %6 = icmp slt i64 %1, 0
  %7 = tail call i64 @llvm.abs.i64(i64 range(i64 2, -1) %1, i1 true)
  %8 = tail call range(i64 1, 64) i64 @llvm.ctpop.i64(i64 %7)
  %9 = icmp samesign ult i64 %8, 2
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 2, -1) %1, i1 true)
  %12 = trunc nuw nsw i64 %11 to i8
  %13 = lshr i64 %1, 56
  %14 = trunc nuw i64 %13 to i8
  %15 = and i8 %14, -128
  %16 = or disjoint i8 %15, %12
  br label %103

17:                                               ; preds = %5
  %18 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 2, -1) %7, i1 true)
  %19 = trunc nuw nsw i64 %18 to i32
  %20 = xor i32 %19, 63
  %21 = sub nuw nsw i32 62, %19
  %22 = zext nneg i32 %21 to i64
  %23 = shl nuw nsw i64 1, %22
  %24 = icmp samesign ult i64 %23, %7
  br i1 %24, label %25, label %73

25:                                               ; preds = %17
  %26 = shl i64 %7, %18
  %27 = shl i64 %23, %18
  %28 = lshr i64 %26, 32
  %29 = and i64 %26, 4294967294
  %30 = udiv i64 %27, %28
  %31 = mul i64 %30, %28
  %32 = urem i64 %27, %28
  br label %33

33:                                               ; preds = %41, %25
  %34 = phi i64 [ %30, %25 ], [ %42, %41 ]
  %35 = phi i64 [ %32, %25 ], [ %43, %41 ]
  %36 = icmp ugt i64 %34, 4294967295
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = mul nuw i64 %34, %29
  %39 = shl i64 %35, 32
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37, %33
  %42 = add i64 %34, -1
  %43 = add i64 %35, %28
  %44 = icmp ult i64 %43, 4294967296
  br i1 %44, label %33, label %45

45:                                               ; preds = %41, %37
  %46 = phi i64 [ %42, %41 ], [ %34, %37 ]
  %47 = shl i64 %27, 32
  %48 = mul i64 %46, %26
  %49 = sub i64 %47, %48
  %50 = udiv i64 %49, %28
  %51 = mul i64 %50, %28
  %52 = urem i64 %49, %28
  br label %53

53:                                               ; preds = %61, %45
  %54 = phi i64 [ %50, %45 ], [ %62, %61 ]
  %55 = phi i64 [ %52, %45 ], [ %63, %61 ]
  %56 = icmp ugt i64 %54, 4294967295
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = mul nuw i64 %54, %29
  %59 = shl i64 %55, 32
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57, %53
  %62 = add i64 %54, -1
  %63 = add i64 %55, %28
  %64 = icmp ult i64 %63, 4294967296
  br i1 %64, label %53, label %65

65:                                               ; preds = %61, %57
  %66 = phi i64 [ %62, %61 ], [ %54, %57 ]
  %67 = shl i64 %49, 32
  %68 = mul i64 %66, %26
  %69 = sub i64 %67, %68
  %70 = lshr i64 %69, %18
  %71 = shl i64 %46, 32
  %72 = add i64 %66, %71
  br label %73

73:                                               ; preds = %65, %17
  %74 = phi i64 [ %70, %65 ], [ -1, %17 ]
  %75 = phi i64 [ %72, %65 ], [ -1, %17 ]
  %76 = sub i64 %7, %74
  %77 = zext nneg i32 %20 to i64
  %78 = lshr i64 %76, %77
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = trunc nuw nsw i32 %21 to i8
  br label %96

82:                                               ; preds = %73
  %83 = shl i64 %75, 1
  %84 = shl i64 %74, 1
  %85 = icmp uge i64 %84, %7
  %86 = icmp slt i64 %74, 0
  %87 = or i1 %86, %85
  %88 = zext i1 %87 to i64
  %89 = or disjoint i64 %83, %88
  %90 = lshr i64 %1, 56
  %91 = trunc nuw nsw i64 %90 to i32
  %92 = and i32 %91, 128
  %93 = or disjoint i32 %20, %92
  %94 = trunc nuw i32 %93 to i8
  %95 = or disjoint i8 %94, 64
  br label %96

96:                                               ; preds = %80, %82
  %97 = phi i8 [ %81, %80 ], [ %95, %82 ]
  %98 = phi i64 [ %75, %80 ], [ %89, %82 ]
  %99 = add i64 %98, 1
  %100 = xor i64 %98, -1
  %101 = select i1 %6, i64 %100, i64 %99
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %10, %96
  %104 = phi i8 [ %16, %10 ], [ %97, %96 ]
  %105 = and i8 %104, 63
  %106 = zext nneg i8 %105 to i64
  %107 = shl nsw i64 -1, %106
  %108 = xor i64 %107, -1
  %109 = icmp slt i64 %0, 0
  %110 = select i1 %109, i64 %108, i64 0
  %111 = add nsw i64 %110, %0
  %112 = ashr i64 %111, %106
  %113 = ashr i8 %104, 7
  %114 = sext i8 %113 to i64
  %115 = xor i64 %112, %114
  %116 = sub nsw i64 %115, %114
  br label %139

117:                                              ; preds = %96
  %118 = sext i64 %101 to i128
  %119 = sext i64 %0 to i128
  %120 = mul nsw i128 %118, %119
  %121 = lshr i128 %120, 64
  %122 = trunc nuw i128 %121 to i64
  %123 = zext i8 %97 to i32
  %124 = and i32 %123, 64
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %117
  %127 = ashr i8 %97, 7
  %128 = sext i8 %127 to i64
  %129 = xor i64 %0, %128
  %130 = sub i64 %129, %128
  %131 = add nsw i64 %130, %122
  br label %132

132:                                              ; preds = %126, %117
  %133 = phi i64 [ %131, %126 ], [ %122, %117 ]
  %134 = and i32 %123, 63
  %135 = zext nneg i32 %134 to i64
  %136 = ashr i64 %133, %135
  %137 = lshr i64 %136, 63
  %138 = add nsw i64 %137, %136
  br label %139

139:                                              ; preds = %132, %103, %2
  %140 = phi i64 [ 0, %2 ], [ %116, %103 ], [ %138, %132 ]
  ret i64 %140
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
