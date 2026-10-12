; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/bca2d27/wrap_totlen.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/bca2d27/wrap_totlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local range(i64 0, 4294967296) i64 @target_s64_total_len(ptr noundef readonly %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = icmp eq i64 %1, 0
  tail call void @llvm.assume(i1 %6)
  br label %9

7:                                                ; preds = %3
  %8 = and i64 %1, 4294967295
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i64 [ 0, %5 ], [ %8, %7 ]
  ret i64 %10
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
  br label %51

10:                                               ; preds = %3
  %11 = trunc i64 %1 to i32
  %12 = icmp ult i64 %1, 16
  br i1 %12, label %51, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %15 = getelementptr inbounds i8, ptr %14, i64 -15
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi i32 [ %6, %13 ], [ %48, %16 ]
  %18 = phi i32 [ %2, %13 ], [ %41, %16 ]
  %19 = phi i32 [ %5, %13 ], [ %34, %16 ]
  %20 = phi i32 [ %4, %13 ], [ %27, %16 ]
  %21 = phi ptr [ %0, %13 ], [ %49, %16 ]
  %22 = load i32, ptr %21, align 1
  %23 = mul i32 %22, -2048144777
  %24 = add i32 %23, %20
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 13)
  %26 = mul i32 %25, -1640531535
  %27 = freeze i32 %26
  %28 = getelementptr inbounds nuw i8, ptr %21, i64 4
  %29 = load i32, ptr %28, align 1
  %30 = mul i32 %29, -2048144777
  %31 = add i32 %30, %19
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 13)
  %33 = mul i32 %32, -1640531535
  %34 = freeze i32 %33
  %35 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %36 = load i32, ptr %35, align 1
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %18
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = freeze i32 %40
  %42 = getelementptr inbounds nuw i8, ptr %21, i64 12
  %43 = load i32, ptr %42, align 1
  %44 = mul i32 %43, -2048144777
  %45 = add i32 %44, %17
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 13)
  %47 = mul i32 %46, -1640531535
  %48 = freeze i32 %47
  %49 = getelementptr inbounds nuw i8, ptr %21, i64 16
  %50 = icmp ult ptr %49, %15
  br i1 %50, label %16, label %51

51:                                               ; preds = %16, %10, %8
  %52 = phi i32 [ 0, %8 ], [ %11, %10 ], [ %11, %16 ]
  ret i32 %52
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
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH32_consumeLong: argument 1"}
!7 = distinct !{!7, !"XXH32_consumeLong"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"XXH32_consumeLong: argument 0"}
!10 = !{i64 2148150297}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
