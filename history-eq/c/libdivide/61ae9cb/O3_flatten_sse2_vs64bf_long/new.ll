; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/61ae9cb/wrap_vs64bf.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/libdivide/61ae9cb/wrap_vs64bf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local <2 x i64> @target_vs64_bf(<2 x i64> noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %152, label %4

4:                                                ; preds = %2
  %5 = icmp slt i64 %1, 0
  %6 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %1, i1 false)
  %7 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %6, i1 true)
  %8 = trunc nuw nsw i64 %7 to i32
  %9 = xor i32 %8, 63
  %10 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %6)
  %11 = icmp samesign ult i64 %10, 2
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = lshr i64 %1, 56
  %14 = trunc nuw nsw i64 %13 to i32
  %15 = and i32 %14, 128
  %16 = or disjoint i32 %9, %15
  %17 = trunc nuw i32 %16 to i8
  br label %85

18:                                               ; preds = %4
  %19 = sub nsw i64 62, %7
  %20 = and i64 %19, 4294967295
  %21 = shl nuw i64 1, %20
  %22 = icmp ult i64 %21, %6
  br i1 %22, label %23, label %73

23:                                               ; preds = %18
  %24 = shl i64 %6, %7
  %25 = shl i64 %21, %7
  %26 = lshr i64 %24, 32
  %27 = and i64 %24, 4294967295
  %28 = udiv i64 %25, %26
  %29 = mul i64 %28, %26
  %30 = urem i64 %25, %26
  br label %31

31:                                               ; preds = %39, %23
  %32 = phi i64 [ %28, %23 ], [ %40, %39 ]
  %33 = phi i64 [ %30, %23 ], [ %41, %39 ]
  %34 = icmp ugt i64 %32, 4294967295
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = mul nuw i64 %32, %27
  %37 = shl i64 %33, 32
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35, %31
  %40 = add i64 %32, -1
  %41 = add i64 %33, %26
  %42 = icmp ugt i64 %41, 4294967295
  br i1 %42, label %43, label %31

43:                                               ; preds = %39, %35
  %44 = phi i64 [ %40, %39 ], [ %32, %35 ]
  %45 = shl i64 %25, 32
  %46 = mul i64 %44, %24
  %47 = sub i64 %45, %46
  %48 = udiv i64 %47, %26
  %49 = mul i64 %48, %26
  %50 = urem i64 %47, %26
  br label %51

51:                                               ; preds = %59, %43
  %52 = phi i64 [ %48, %43 ], [ %60, %59 ]
  %53 = phi i64 [ %50, %43 ], [ %61, %59 ]
  %54 = icmp ugt i64 %52, 4294967295
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = mul nuw i64 %52, %27
  %57 = shl i64 %53, 32
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55, %51
  %60 = add i64 %52, -1
  %61 = add i64 %53, %26
  %62 = icmp ugt i64 %61, 4294967295
  br i1 %62, label %63, label %51

63:                                               ; preds = %59, %55
  %64 = phi i64 [ %60, %59 ], [ %52, %55 ]
  %65 = shl i64 %47, 32
  %66 = mul i64 %64, %24
  %67 = sub i64 %65, %66
  %68 = lshr i64 %67, %7
  %69 = shl i64 %44, 33
  %70 = shl i64 %64, 1
  %71 = add i64 %70, %69
  %72 = or disjoint i64 %71, 1
  br label %73

73:                                               ; preds = %18, %63
  %74 = phi i64 [ %68, %63 ], [ -1, %18 ]
  %75 = phi i64 [ %72, %63 ], [ -1, %18 ]
  %76 = shl i64 %74, 1
  %77 = icmp uge i64 %76, %6
  %78 = icmp slt i64 %74, 0
  %79 = or i1 %78, %77
  %80 = zext i1 %79 to i64
  %81 = trunc nuw nsw i32 %9 to i8
  %82 = add i64 %75, %80
  %83 = select i1 %5, i8 -64, i8 64
  %84 = or disjoint i8 %83, %81
  br label %85

85:                                               ; preds = %12, %73
  %86 = phi i64 [ 0, %12 ], [ %82, %73 ]
  %87 = phi i8 [ %17, %12 ], [ %84, %73 ]
  %88 = and i8 %87, 63
  %89 = ashr i8 %87, 7
  %90 = sext i8 %89 to i32
  %91 = insertelement <4 x i32> poison, i32 %90, i64 0
  %92 = shufflevector <4 x i32> %91, <4 x i32> poison, <4 x i32> zeroinitializer
  %93 = bitcast <4 x i32> %92 to <2 x i64>
  %94 = insertelement <2 x i64> poison, i64 %86, i64 0
  %95 = shufflevector <2 x i64> %94, <2 x i64> poison, <2 x i32> zeroinitializer
  %96 = and <2 x i64> %0, splat (i64 4294967295)
  %97 = and <2 x i64> %95, splat (i64 4294967295)
  %98 = mul nuw <2 x i64> %97, %96
  %99 = lshr <2 x i64> %98, splat (i64 32)
  %100 = bitcast <2 x i64> %0 to <4 x i32>
  %101 = shufflevector <4 x i32> %100, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %102 = bitcast <4 x i32> %101 to <2 x i64>
  %103 = bitcast <2 x i64> %95 to <4 x i32>
  %104 = shufflevector <4 x i32> %103, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %105 = bitcast <4 x i32> %104 to <2 x i64>
  %106 = and <2 x i64> %105, splat (i64 4294967295)
  %107 = mul nuw <2 x i64> %106, %96
  %108 = and <2 x i64> %102, splat (i64 4294967295)
  %109 = mul nuw <2 x i64> %97, %108
  %110 = mul nuw <2 x i64> %106, %108
  %111 = add nuw <2 x i64> %99, %109
  %112 = and <2 x i64> %111, splat (i64 4294967295)
  %113 = lshr <2 x i64> %111, splat (i64 32)
  %114 = add nuw <2 x i64> %112, %107
  %115 = lshr <2 x i64> %114, splat (i64 32)
  %116 = ashr <4 x i32> %101, splat (i32 31)
  %117 = bitcast <4 x i32> %116 to <2 x i64>
  %118 = and <2 x i64> %95, %117
  %119 = ashr <4 x i32> %104, splat (i32 31)
  %120 = bitcast <4 x i32> %119 to <2 x i64>
  %121 = and <2 x i64> %0, %120
  %122 = sub <2 x i64> %0, %118
  %123 = add <2 x i64> %122, %113
  %124 = add <2 x i64> %123, %110
  %125 = sub <2 x i64> %124, %121
  %126 = add <2 x i64> %125, %115
  %127 = icmp eq i64 %86, 0
  %128 = bitcast <2 x i64> %126 to <4 x i32>
  %129 = ashr <4 x i32> %128, <i32 0, i32 31, i32 0, i32 31>
  %130 = shufflevector <4 x i32> %129, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %131 = bitcast <4 x i32> %130 to <2 x i64>
  %132 = zext nneg i8 %88 to i64
  %133 = shl nuw i64 1, %132
  %134 = sext i1 %127 to i64
  %135 = add i64 %133, %134
  %136 = insertelement <2 x i64> poison, i64 %135, i64 0
  %137 = shufflevector <2 x i64> %136, <2 x i64> poison, <2 x i32> zeroinitializer
  %138 = and <2 x i64> %137, %131
  %139 = add <2 x i64> %138, %126
  %140 = xor i8 %88, 63
  %141 = zext nneg i8 %140 to i64
  %142 = shl nuw i64 1, %141
  %143 = insertelement <2 x i64> poison, i64 %142, i64 0
  %144 = shufflevector <2 x i64> %143, <2 x i64> poison, <2 x i32> zeroinitializer
  %145 = insertelement <2 x i64> poison, i64 %132, i64 0
  %146 = shufflevector <2 x i64> %145, <2 x i64> poison, <2 x i32> zeroinitializer
  %147 = lshr <2 x i64> %139, %146
  %148 = xor <2 x i64> %147, %144
  %149 = sub <2 x i64> %148, %144
  %150 = xor <2 x i64> %149, %93
  %151 = sub <2 x i64> %150, %93
  br label %152

152:                                              ; preds = %2, %85
  %153 = phi <2 x i64> [ %151, %85 ], [ %0, %2 ]
  ret <2 x i64> %153
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #2

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
