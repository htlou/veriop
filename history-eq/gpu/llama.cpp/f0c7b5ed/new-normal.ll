; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/f0c7b5ed/new.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/f0c7b5ed/new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @compare(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load atomic i32, ptr %0 monotonic, align 4
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load atomic i32, ptr %5 monotonic, align 4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = atomicrmw add ptr %7, i32 1 seq_cst, align 4
  %9 = add nsw i32 %2, -1
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  store atomic i32 0, ptr %7 monotonic, align 4
  %12 = atomicrmw add ptr %5, i32 1 seq_cst, align 4
  br label %17

13:                                               ; preds = %4, %13
  %14 = load atomic i32, ptr %5 monotonic, align 4
  %15 = icmp eq i32 %14, %6
  br i1 %15, label %13, label %16, !llvm.loop !5

16:                                               ; preds = %13
  fence seq_cst
  br label %17

17:                                               ; preds = %1, %11, %16
  ret void
}

attributes #0 = { nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
