; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/proto/loop/w.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/proto/loop/w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @target_f(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %62, label %4

4:                                                ; preds = %2
  %5 = and i32 %1, 7
  %6 = icmp ult i32 %1, 8
  br i1 %6, label %47, label %7

7:                                                ; preds = %4
  %8 = and i32 %1, -8
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ 0, %7 ], [ %44, %9 ]
  %11 = phi ptr [ %0, %7 ], [ %41, %9 ]
  %12 = phi i32 [ 0, %7 ], [ %45, %9 ]
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 1
  %14 = load i8, ptr %11, align 1
  %15 = zext i8 %14 to i32
  %16 = add i32 %10, %15
  %17 = getelementptr inbounds nuw i8, ptr %11, i64 2
  %18 = load i8, ptr %13, align 1
  %19 = zext i8 %18 to i32
  %20 = add i32 %16, %19
  %21 = getelementptr inbounds nuw i8, ptr %11, i64 3
  %22 = load i8, ptr %17, align 1
  %23 = zext i8 %22 to i32
  %24 = add i32 %20, %23
  %25 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %26 = load i8, ptr %21, align 1
  %27 = zext i8 %26 to i32
  %28 = add i32 %24, %27
  %29 = getelementptr inbounds nuw i8, ptr %11, i64 5
  %30 = load i8, ptr %25, align 1
  %31 = zext i8 %30 to i32
  %32 = add i32 %28, %31
  %33 = getelementptr inbounds nuw i8, ptr %11, i64 6
  %34 = load i8, ptr %29, align 1
  %35 = zext i8 %34 to i32
  %36 = add i32 %32, %35
  %37 = getelementptr inbounds nuw i8, ptr %11, i64 7
  %38 = load i8, ptr %33, align 1
  %39 = zext i8 %38 to i32
  %40 = add i32 %36, %39
  %41 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %42 = load i8, ptr %37, align 1
  %43 = zext i8 %42 to i32
  %44 = add i32 %40, %43
  %45 = add i32 %12, 8
  %46 = icmp eq i32 %45, %8
  br i1 %46, label %47, label %9

47:                                               ; preds = %9, %4
  %48 = phi i32 [ poison, %4 ], [ %44, %9 ]
  %49 = phi i32 [ 0, %4 ], [ %44, %9 ]
  %50 = phi ptr [ %0, %4 ], [ %41, %9 ]
  %51 = icmp eq i32 %5, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %47, %52
  %53 = phi i32 [ %59, %52 ], [ %49, %47 ]
  %54 = phi ptr [ %56, %52 ], [ %50, %47 ]
  %55 = phi i32 [ %60, %52 ], [ 0, %47 ]
  %56 = getelementptr inbounds nuw i8, ptr %54, i64 1
  %57 = load i8, ptr %54, align 1
  %58 = zext i8 %57 to i32
  %59 = add i32 %53, %58
  %60 = add i32 %55, 1
  %61 = icmp eq i32 %60, %5
  br i1 %61, label %62, label %52

62:                                               ; preds = %47, %52, %2
  %63 = phi i32 [ 0, %2 ], [ %48, %47 ], [ %59, %52 ]
  ret i32 %63
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}
