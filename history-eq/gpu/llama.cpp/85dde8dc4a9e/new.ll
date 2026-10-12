; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/85dde8dc4a9e/new.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/85dde8dc4a9e/new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define dso_local range(i64 0, 67108801) i64 @src_index(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult i32 %0, 8192
  tail call void @llvm.assume(i1 %4)
  %5 = and i32 %0, 1
  %6 = icmp eq i32 %5, 0
  tail call void @llvm.assume(i1 %6)
  %7 = add i32 %2, -32
  %8 = icmp ult i32 %7, 8161
  tail call void @llvm.assume(i1 %8)
  %9 = and i32 %2, 31
  %10 = icmp eq i32 %9, 0
  tail call void @llvm.assume(i1 %10)
  %11 = icmp sgt i32 %1, -1
  tail call void @llvm.assume(i1 %11)
  %12 = icmp samesign ult i32 %1, %2
  tail call void @llvm.assume(i1 %12)
  %13 = and i32 %1, 31
  %14 = icmp eq i32 %13, 0
  tail call void @llvm.assume(i1 %14)
  %15 = shl nuw nsw i32 %2, 5
  %16 = zext nneg i32 %15 to i64
  %17 = zext nneg i32 %0 to i64
  %18 = lshr i64 %17, 5
  %19 = lshr exact i32 %1, 5
  %20 = zext nneg i32 %19 to i64
  %21 = mul nuw nsw i64 %18, %16
  %22 = shl nuw nsw i64 %20, 10
  %23 = add nuw nsw i64 %21, %22
  %24 = shl nuw nsw i64 %17, 5
  %25 = and i64 %24, 960
  %26 = or disjoint i64 %23, %25
  ret i64 %26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define dso_local range(i64 0, 67108864) i64 @dst0_index(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = or i32 %1, %0
  %5 = icmp ult i32 %4, 8192
  %6 = icmp ne i32 %2, 0
  tail call void @llvm.assume(i1 %5)
  tail call void @llvm.assume(i1 %6)
  %7 = icmp samesign ult i32 %2, 8193
  tail call void @llvm.assume(i1 %7)
  %8 = mul nuw nsw i32 %2, %0
  %9 = add nuw nsw i32 %8, %1
  %10 = zext nneg i32 %9 to i64
  ret i64 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define dso_local range(i64 1, 67117056) i64 @dst1_index(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = or i32 %1, %0
  %5 = icmp ult i32 %4, 8192
  %6 = icmp ne i32 %2, 0
  tail call void @llvm.assume(i1 %5)
  tail call void @llvm.assume(i1 %6)
  %7 = icmp samesign ult i32 %2, 8193
  tail call void @llvm.assume(i1 %7)
  %8 = mul nuw nsw i32 %2, %0
  %9 = add nuw nsw i32 %2, %1
  %10 = add nuw nsw i32 %9, %8
  %11 = zext nneg i32 %10 to i64
  ret i64 %11
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
