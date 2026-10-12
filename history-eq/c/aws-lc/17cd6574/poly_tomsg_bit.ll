; ModuleID = 'history-eq/c/aws-lc/17cd6574/poly_tomsg_bit.c'
source_filename = "history-eq/c/aws-lc/17cd6574/poly_tomsg_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @raw_old_bit(i16 noundef signext %0) local_unnamed_addr #0 {
  %2 = icmp slt i16 %0, 0
  %3 = select i1 %2, i16 3329, i16 0
  %4 = add i16 %3, %0
  %5 = zext i16 %4 to i32
  %6 = shl nuw nsw i32 %5, 1
  %7 = add nuw nsw i32 %6, 1664
  %8 = udiv i32 %7, 3329
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @raw_new_bit(i16 noundef signext %0) local_unnamed_addr #0 {
  %2 = sext i16 %0 to i32
  %3 = mul i32 %2, 161270
  %4 = add i32 %3, 134257275
  %5 = lshr i32 %4, 28
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define dso_local range(i32 0, 2) i32 @old_bit_reduced(i16 noundef signext %0) local_unnamed_addr #1 {
  %2 = icmp sgt i16 %0, -1665
  tail call void @llvm.assume(i1 %2)
  %3 = icmp slt i16 %0, 1665
  tail call void @llvm.assume(i1 %3)
  %4 = icmp slt i16 %0, 0
  %5 = select i1 %4, i16 3329, i16 0
  %6 = add nsw i16 %5, %0
  %7 = shl nuw nsw i16 %6, 1
  %8 = add nuw nsw i16 %7, 1664
  %9 = udiv i16 %8, 3329
  %10 = and i16 %9, 1
  %11 = zext nneg i16 %10 to i32
  ret i32 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define dso_local range(i32 0, 2) i32 @new_bit_reduced(i16 noundef signext %0) local_unnamed_addr #1 {
  %2 = icmp sgt i16 %0, -1665
  tail call void @llvm.assume(i1 %2)
  %3 = icmp slt i16 %0, 1665
  tail call void @llvm.assume(i1 %3)
  %4 = sext i16 %0 to i32
  %5 = mul nsw i32 %4, 161270
  %6 = add nsw i32 %5, 134257275
  %7 = lshr i32 %6, 28
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i16 @historical_barrett_reduce(i16 noundef signext %0) local_unnamed_addr #0 {
  %2 = sext i16 %0 to i32
  %3 = mul nsw i32 %2, 20159
  %4 = add nsw i32 %3, 33554432
  %5 = ashr i32 %4, 26
  %6 = trunc nsw i32 %5 to i16
  %7 = mul i16 %6, -3329
  %8 = add i16 %7, %0
  ret i16 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @barrett_bad(i16 noundef signext %0) local_unnamed_addr #0 {
  %2 = sext i16 %0 to i32
  %3 = mul nsw i32 %2, 20159
  %4 = add nsw i32 %3, 33554432
  %5 = ashr i32 %4, 26
  %6 = trunc nsw i32 %5 to i16
  %7 = mul i16 %6, -3329
  %8 = add i16 %0, -1665
  %9 = add i16 %8, %7
  %10 = icmp ult i16 %9, -3329
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @barrett_zero(i16 noundef signext %0) local_unnamed_addr #0 {
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
