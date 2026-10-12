; ModuleID = 'history-eq/cpp/simdjson/1421ae9c/umul128.cpp'
source_filename = "history-eq/cpp/simdjson/1421ae9c/umul128.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local { i64, i64 } @old_umul128(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i64 %0, 32
  %4 = lshr i64 %1, 32
  %5 = mul nuw i64 %4, %3
  %6 = and i64 %0, 4294967295
  %7 = mul nuw i64 %4, %6
  %8 = and i64 %1, 4294967295
  %9 = mul nuw i64 %8, %3
  %10 = mul nuw i64 %8, %6
  %11 = lshr i64 %10, 32
  %12 = and i64 %9, 4294967295
  %13 = add nuw nsw i64 %11, %12
  %14 = and i64 %7, 4294967295
  %15 = add nuw nsw i64 %13, %14
  %16 = lshr i64 %15, 32
  %17 = lshr i64 %9, 32
  %18 = lshr i64 %7, 32
  %19 = add nuw i64 %17, %5
  %20 = add nuw i64 %19, %18
  %21 = add nuw i64 %20, %16
  %22 = shl i64 %15, 32
  %23 = and i64 %10, 4294967295
  %24 = or disjoint i64 %22, %23
  %25 = insertvalue { i64, i64 } poison, i64 %21, 0
  %26 = insertvalue { i64, i64 } %25, i64 %24, 1
  ret { i64, i64 } %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local { i64, i64 } @new_umul128(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = zext i64 %0 to i128
  %4 = zext i64 %1 to i128
  %5 = mul nuw i128 %4, %3
  %6 = lshr i128 %5, 64
  %7 = trunc nuw i128 %6 to i64
  %8 = trunc i128 %5 to i64
  %9 = insertvalue { i64, i64 } poison, i64 %7, 0
  %10 = insertvalue { i64, i64 } %9, i64 %8, 1
  ret { i64, i64 } %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local i64 @old_umul128_upper64(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i64 %0, 32
  %4 = lshr i64 %1, 32
  %5 = mul nuw i64 %4, %3
  %6 = and i64 %0, 4294967295
  %7 = mul nuw i64 %4, %6
  %8 = and i64 %1, 4294967295
  %9 = mul nuw i64 %8, %3
  %10 = mul nuw i64 %8, %6
  %11 = lshr i64 %10, 32
  %12 = and i64 %9, 4294967295
  %13 = add nuw nsw i64 %11, %12
  %14 = and i64 %7, 4294967295
  %15 = add nuw nsw i64 %13, %14
  %16 = lshr i64 %15, 32
  %17 = lshr i64 %9, 32
  %18 = lshr i64 %7, 32
  %19 = add nuw i64 %17, %5
  %20 = add nuw i64 %19, %18
  %21 = add nuw i64 %20, %16
  ret i64 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local range(i64 0, -1) i64 @new_umul128_upper64(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = zext i64 %0 to i128
  %4 = zext i64 %1 to i128
  %5 = mul nuw i128 %4, %3
  %6 = lshr i128 %5, 64
  %7 = trunc nuw i128 %6 to i64
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local noundef i64 @old_umul128_low(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = mul i64 %0, %1
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local noundef i64 @new_umul128_low(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = mul i64 %1, %0
  ret i64 %3
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
