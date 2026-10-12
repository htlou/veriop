; ModuleID = 'history-eq/cpp/simdjson/314356d5/digits.cpp'
source_filename = "history-eq/cpp/simdjson/314356d5/digits.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local zeroext i1 @old_eight_digits(i64 noundef %0) local_unnamed_addr #0 {
  %2 = trunc i64 %0 to i32
  %3 = shl i32 %2, 24
  %4 = ashr exact i32 %3, 24
  %5 = add nsw i32 %4, -48
  %6 = icmp ult i32 %5, 10
  %7 = shl i32 %2, 16
  %8 = ashr i32 %7, 24
  %9 = add nsw i32 %8, -48
  %10 = icmp ult i32 %9, 10
  %11 = and i1 %6, %10
  %12 = shl i32 %2, 8
  %13 = ashr i32 %12, 24
  %14 = add nsw i32 %13, -48
  %15 = icmp ult i32 %14, 10
  %16 = and i1 %15, %11
  %17 = ashr i32 %2, 24
  %18 = add nsw i32 %17, -48
  %19 = icmp ult i32 %18, 10
  %20 = and i1 %19, %16
  %21 = lshr i64 %0, 8
  %22 = trunc i64 %21 to i32
  %23 = ashr i32 %22, 24
  %24 = add nsw i32 %23, -48
  %25 = icmp ult i32 %24, 10
  %26 = and i1 %25, %20
  %27 = lshr i64 %0, 16
  %28 = trunc i64 %27 to i32
  %29 = ashr i32 %28, 24
  %30 = add nsw i32 %29, -48
  %31 = icmp ult i32 %30, 10
  %32 = and i1 %31, %26
  %33 = lshr i64 %0, 24
  %34 = trunc i64 %33 to i32
  %35 = ashr i32 %34, 24
  %36 = add nsw i32 %35, -48
  %37 = icmp ult i32 %36, 10
  %38 = and i1 %37, %32
  br i1 %38, label %39, label %45

39:                                               ; preds = %1
  %40 = lshr i64 %0, 32
  %41 = trunc nuw i64 %40 to i32
  %42 = ashr i32 %41, 24
  %43 = add nsw i32 %42, -48
  %44 = icmp ult i32 %43, 10
  br label %45

45:                                               ; preds = %39, %1
  %46 = phi i1 [ false, %1 ], [ %44, %39 ]
  ret i1 %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local zeroext i1 @new_eight_digits(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i64, ptr %0, align 1
  %3 = and i64 %2, -1085102592571150096
  %4 = add i64 %2, 434041037028460038
  %5 = lshr i64 %4, 4
  %6 = and i64 %5, 1085102592571150095
  %7 = or disjoint i64 %6, %3
  %8 = icmp eq i64 %7, 3689348814741910323
  ret i1 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local zeroext i1 @new_eight_digits_word(i64 noundef %0) local_unnamed_addr #0 {
  %2 = and i64 %0, -1085102592571150096
  %3 = add i64 %0, 434041037028460038
  %4 = lshr i64 %3, 4
  %5 = and i64 %4, 1085102592571150095
  %6 = or disjoint i64 %5, %2
  %7 = icmp eq i64 %6, 3689348814741910323
  ret i1 %7
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
