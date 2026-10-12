; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/930e2fa5/old.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/930e2fa5/old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @compare_f32_contiguous(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = zext i32 %0 to i64
  %6 = zext i32 %1 to i64
  %7 = shl nuw i64 %6, 32
  %8 = or disjoint i64 %7, %5
  %9 = zext i32 %2 to i64
  %10 = zext i32 %3 to i64
  %11 = shl nuw i64 %10, 32
  %12 = or disjoint i64 %11, %9
  %13 = insertvalue { i64, i64 } poison, i64 %8, 0
  %14 = insertvalue { i64, i64 } %13, i64 %12, 1
  ret { i64, i64 } %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @compare_f32_row_runs(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = zext i32 %0 to i64
  %6 = zext i32 %1 to i64
  %7 = shl nuw i64 %6, 32
  %8 = or disjoint i64 %7, %5
  %9 = zext i32 %3 to i64
  %10 = shl nuw i64 %9, 32
  %11 = zext i32 %2 to i64
  %12 = or disjoint i64 %10, %11
  %13 = insertvalue { i64, i64 } poison, i64 %8, 0
  %14 = insertvalue { i64, i64 } %13, i64 %12, 1
  ret { i64, i64 } %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @compare_f32_row_boundary(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = zext i32 %1 to i64
  %6 = shl nuw i64 %5, 32
  %7 = zext i32 %2 to i64
  %8 = insertvalue { i64, i64 } poison, i64 %6, 0
  %9 = insertvalue { i64, i64 } %8, i64 %7, 1
  ret { i64, i64 } %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i64 } @compare_f32_strided(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = zext i32 %0 to i64
  %6 = zext i32 %1 to i64
  %7 = shl nuw i64 %6, 32
  %8 = or disjoint i64 %7, %5
  %9 = zext i32 %2 to i64
  %10 = zext i32 %3 to i64
  %11 = shl nuw i64 %10, 32
  %12 = or disjoint i64 %11, %9
  %13 = insertvalue { i64, i64 } poison, i64 %8, 0
  %14 = insertvalue { i64, i64 } %13, i64 %12, 1
  ret { i64, i64 } %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @compare_f16_contiguous(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = zext i16 %0 to i64
  %6 = zext i16 %1 to i64
  %7 = shl nuw nsw i64 %6, 16
  %8 = or disjoint i64 %7, %5
  %9 = zext i16 %2 to i64
  %10 = shl nuw nsw i64 %9, 32
  %11 = or disjoint i64 %8, %10
  %12 = zext i16 %3 to i64
  %13 = shl nuw i64 %12, 48
  %14 = or disjoint i64 %11, %13
  ret i64 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @compare_f16_row_runs(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = zext i16 %0 to i64
  %6 = zext i16 %1 to i64
  %7 = shl nuw nsw i64 %6, 16
  %8 = or disjoint i64 %7, %5
  %9 = zext i16 %2 to i64
  %10 = shl nuw nsw i64 %9, 32
  %11 = or disjoint i64 %10, %8
  %12 = zext i16 %3 to i64
  %13 = shl nuw i64 %12, 48
  %14 = or disjoint i64 %11, %13
  ret i64 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 281474976710656) i64 @compare_f16_row_boundary(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = zext i16 %1 to i64
  %6 = shl nuw nsw i64 %5, 16
  %7 = zext i16 %2 to i64
  %8 = shl nuw nsw i64 %7, 32
  %9 = or disjoint i64 %8, %6
  ret i64 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @compare_f16_strided(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = zext i16 %0 to i64
  %6 = zext i16 %1 to i64
  %7 = shl nuw nsw i64 %6, 16
  %8 = or disjoint i64 %7, %5
  %9 = zext i16 %2 to i64
  %10 = shl nuw nsw i64 %9, 32
  %11 = or disjoint i64 %8, %10
  %12 = zext i16 %3 to i64
  %13 = shl nuw i64 %12, 48
  %14 = or disjoint i64 %11, %13
  ret i64 %14
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
