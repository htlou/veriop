; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/bca2d27/wrap_totlen.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/bca2d27/wrap_totlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local noundef i64 @target_s64_total_len(ptr noundef readonly %0, i64 noundef returned %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = icmp eq i64 %1, 0
  tail call void @llvm.assume(i1 %6)
  br label %7

7:                                                ; preds = %3, %5
  ret i64 %1
}

; Function Attrs: nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local noundef i32 @target_s32_total_len(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = add i32 %2, 606290984
  %5 = add i32 %2, -2048144777
  %6 = add i32 %2, 1640531535
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = icmp eq i64 %1, 0
  tail call void @llvm.assume(i1 %9)
  br label %52

10:                                               ; preds = %3
  %11 = trunc i64 %1 to i32
  %12 = icmp ult i64 %1, 16
  br i1 %12, label %52, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %15 = getelementptr inbounds i8, ptr %14, i64 -16
  %16 = icmp ugt ptr %0, %15
  br i1 %16, label %52, label %17

17:                                               ; preds = %13, %17
  %18 = phi i32 [ %49, %17 ], [ %6, %13 ]
  %19 = phi i32 [ %42, %17 ], [ %2, %13 ]
  %20 = phi i32 [ %35, %17 ], [ %5, %13 ]
  %21 = phi i32 [ %28, %17 ], [ %4, %13 ]
  %22 = phi ptr [ %50, %17 ], [ %0, %13 ]
  %23 = load i32, ptr %22, align 1
  %24 = mul i32 %23, -2048144777
  %25 = add i32 %24, %21
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 13)
  %27 = mul i32 %26, -1640531535
  %28 = freeze i32 %27
  %29 = getelementptr inbounds nuw i8, ptr %22, i64 4
  %30 = load i32, ptr %29, align 1
  %31 = mul i32 %30, -2048144777
  %32 = add i32 %31, %20
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 13)
  %34 = mul i32 %33, -1640531535
  %35 = freeze i32 %34
  %36 = getelementptr inbounds nuw i8, ptr %22, i64 8
  %37 = load i32, ptr %36, align 1
  %38 = mul i32 %37, -2048144777
  %39 = add i32 %38, %19
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 13)
  %41 = mul i32 %40, -1640531535
  %42 = freeze i32 %41
  %43 = getelementptr inbounds nuw i8, ptr %22, i64 12
  %44 = load i32, ptr %43, align 1
  %45 = mul i32 %44, -2048144777
  %46 = add i32 %45, %18
  %47 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 13)
  %48 = mul i32 %47, -1640531535
  %49 = freeze i32 %48
  %50 = getelementptr inbounds nuw i8, ptr %22, i64 16
  %51 = icmp ugt ptr %50, %15
  br i1 %51, label %52, label %17

52:                                               ; preds = %17, %13, %10, %8
  %53 = phi i32 [ 0, %8 ], [ %11, %10 ], [ %11, %13 ], [ %11, %17 ]
  ret i32 %53
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { nounwind memory(argmem: read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 2148149190}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
