; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/proto/loop/w.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/proto/loop/w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @target_f(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %72, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = and i64 %5, 7
  %7 = icmp ult i32 %1, 8
  br i1 %7, label %56, label %8

8:                                                ; preds = %4
  %9 = and i64 %5, 4294967288
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i64 [ 0, %8 ], [ %53, %10 ]
  %12 = phi i32 [ 0, %8 ], [ %52, %10 ]
  %13 = phi i64 [ 0, %8 ], [ %54, %10 ]
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %11
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = add i32 %12, %16
  %18 = or disjoint i64 %11, 1
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 %18
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = add i32 %17, %21
  %23 = or disjoint i64 %11, 2
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 %23
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = add i32 %22, %26
  %28 = or disjoint i64 %11, 3
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 %28
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = add i32 %27, %31
  %33 = or disjoint i64 %11, 4
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 %33
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = add i32 %32, %36
  %38 = or disjoint i64 %11, 5
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 %38
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = add i32 %37, %41
  %43 = or disjoint i64 %11, 6
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 %43
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = add i32 %42, %46
  %48 = or disjoint i64 %11, 7
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 %48
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = add i32 %47, %51
  %53 = add nuw nsw i64 %11, 8
  %54 = add i64 %13, 8
  %55 = icmp eq i64 %54, %9
  br i1 %55, label %56, label %10

56:                                               ; preds = %10, %4
  %57 = phi i32 [ poison, %4 ], [ %52, %10 ]
  %58 = phi i64 [ 0, %4 ], [ %53, %10 ]
  %59 = phi i32 [ 0, %4 ], [ %52, %10 ]
  %60 = icmp eq i64 %6, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %56, %61
  %62 = phi i64 [ %69, %61 ], [ %58, %56 ]
  %63 = phi i32 [ %68, %61 ], [ %59, %56 ]
  %64 = phi i64 [ %70, %61 ], [ 0, %56 ]
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 %62
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = add i32 %63, %67
  %69 = add nuw nsw i64 %62, 1
  %70 = add i64 %64, 1
  %71 = icmp eq i64 %70, %6
  br i1 %71, label %72, label %61

72:                                               ; preds = %56, %61, %2
  %73 = phi i32 [ 0, %2 ], [ %57, %56 ], [ %68, %61 ]
  ret i32 %73
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
