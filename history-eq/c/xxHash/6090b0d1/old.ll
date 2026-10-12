; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/6090b0d1/old.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/6090b0d1/old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @target_update(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i32 %3, 4
  tail call void @llvm.assume(i1 %5)
  switch i32 %3, label %12 [
    i32 0, label %6
    i32 1, label %8
    i32 2, label %10
    i32 3, label %13
  ]

6:                                                ; preds = %4
  %7 = tail call i32 @XXH3_update(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef nonnull @XXH3_accumulate_512_scalar, ptr noundef nonnull @XXH3_scrambleAcc_scalar) #3
  br label %15

8:                                                ; preds = %4
  %9 = tail call i32 @XXH3_update(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef nonnull @XXH3_accumulate_512_sse2, ptr noundef nonnull @XXH3_scrambleAcc_sse2) #3
  br label %15

10:                                               ; preds = %4
  %11 = tail call i32 @XXH3_update(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef nonnull @XXH3_accumulate_512_avx2, ptr noundef nonnull @XXH3_scrambleAcc_avx2) #3
  br label %15

12:                                               ; preds = %4
  unreachable

13:                                               ; preds = %4
  %14 = tail call i32 @XXH3_update(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef nonnull @XXH3_accumulate_512_avx512, ptr noundef nonnull @XXH3_scrambleAcc_avx512) #3
  br label %15

15:                                               ; preds = %13, %10, %8, %6
  %16 = phi i32 [ %14, %13 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ]
  ret i32 %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

declare i32 @XXH3_update(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @XXH3_accumulate_512_scalar(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @XXH3_scrambleAcc_scalar(ptr noundef, ptr noundef) #2

declare void @XXH3_accumulate_512_sse2(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @XXH3_scrambleAcc_sse2(ptr noundef, ptr noundef) #2

declare void @XXH3_accumulate_512_avx2(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @XXH3_scrambleAcc_avx2(ptr noundef, ptr noundef) #2

declare void @XXH3_accumulate_512_avx512(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @XXH3_scrambleAcc_avx512(ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
