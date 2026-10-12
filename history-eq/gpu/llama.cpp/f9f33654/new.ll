; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/f9f33654/new.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/f9f33654/new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 16192) i32 @target(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, i8 noundef zeroext %9, i8 noundef zeroext %10, i8 noundef zeroext %11, i32 noundef %12) local_unnamed_addr #0 {
  %14 = icmp ugt i32 %12, 7
  br i1 %14, label %67, label %15

15:                                               ; preds = %13
  %16 = zext i8 %0 to i32
  %17 = zext i8 %1 to i32
  %18 = shl nuw nsw i32 %17, 8
  %19 = or disjoint i32 %18, %16
  %20 = zext i8 %2 to i32
  %21 = shl nuw nsw i32 %20, 16
  %22 = or disjoint i32 %19, %21
  %23 = zext i8 %3 to i32
  %24 = shl nuw i32 %23, 24
  %25 = or disjoint i32 %22, %24
  %26 = zext i8 %4 to i32
  %27 = zext i8 %5 to i32
  %28 = shl nuw nsw i32 %27, 8
  %29 = or disjoint i32 %28, %26
  %30 = zext i8 %6 to i32
  %31 = shl nuw nsw i32 %30, 16
  %32 = or disjoint i32 %29, %31
  %33 = zext i8 %7 to i32
  %34 = shl nuw i32 %33, 24
  %35 = or disjoint i32 %32, %34
  %36 = zext i8 %8 to i32
  %37 = zext i8 %9 to i32
  %38 = shl nuw nsw i32 %37, 8
  %39 = or disjoint i32 %38, %36
  %40 = zext i8 %10 to i32
  %41 = shl nuw nsw i32 %40, 16
  %42 = or disjoint i32 %39, %41
  %43 = zext i8 %11 to i32
  %44 = shl nuw i32 %43, 24
  %45 = or disjoint i32 %42, %44
  %46 = shl nuw nsw i32 %12, 3
  %47 = and i32 %46, 24
  %48 = icmp ult i32 %12, 4
  %49 = or disjoint i32 %47, 2
  %50 = select i1 %48, i32 %47, i32 %49
  %51 = or disjoint i32 %47, 4
  %52 = select i1 %48, i32 %47, i32 %51
  %53 = select i1 %48, i32 %25, i32 %45
  %54 = lshr i32 %53, %47
  %55 = and i32 %54, 15
  %56 = lshr i32 %25, %50
  %57 = and i32 %56, 48
  %58 = or disjoint i32 %55, %57
  %59 = select i1 %48, i32 %35, i32 %45
  %60 = lshr i32 %59, %52
  %61 = and i32 %60, 15
  %62 = lshr i32 %35, %50
  %63 = and i32 %62, 48
  %64 = or disjoint i32 %61, %63
  %65 = shl nuw nsw i32 %64, 8
  %66 = or disjoint i32 %65, %58
  br label %67

67:                                               ; preds = %13, %15
  %68 = phi i32 [ %66, %15 ], [ 0, %13 ]
  ret i32 %68
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
