; ModuleID = 'history-eq/c/fast_float/cda25408/checker_wrap.cpp'
source_filename = "history-eq/c/fast_float/cda25408/checker_wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 4294967296) i64 @target_raw(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = shl i64 %1, 8
  %4 = and i64 %3, -72057594037927936
  %5 = shl i64 %1, 16
  %6 = and i64 %5, 71776119061217280
  %7 = or disjoint i64 %4, %6
  %8 = shl i64 %1, 24
  %9 = and i64 %8, 280375465082880
  %10 = or disjoint i64 %7, %9
  %11 = shl i64 %1, 32
  %12 = and i64 %11, 1095216660480
  %13 = or disjoint i64 %10, %12
  %14 = lshr i64 %0, 24
  %15 = and i64 %14, 4278190080
  %16 = or disjoint i64 %13, %15
  %17 = lshr i64 %0, 16
  %18 = and i64 %17, 16711680
  %19 = lshr i64 %0, 8
  %20 = and i64 %19, 65280
  %21 = or disjoint i64 %16, %18
  %22 = and i64 %0, 255
  %23 = or i64 %21, %20
  %24 = or i64 %23, %22
  %25 = add i64 %24, -3472328296227680304
  %26 = mul i64 %25, 10
  %27 = lshr i64 %25, 8
  %28 = add i64 %26, %27
  %29 = and i64 %28, 1095216660735
  %30 = mul i64 %29, 4294967296000100
  %31 = lshr i64 %28, 16
  %32 = and i64 %31, 1095216660735
  %33 = mul i64 %32, 42949672960001
  %34 = add i64 %33, %30
  %35 = lshr i64 %34, 32
  ret i64 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 2) i64 @target_guarded_valid(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %4 = trunc i64 %0 to i16
  %5 = add i16 %4, -48
  %6 = icmp ult i16 %5, 10
  br i1 %6, label %7, label %41

7:                                                ; preds = %3
  %8 = lshr i64 %1, 48
  %9 = trunc nuw i64 %8 to i16
  %10 = lshr i64 %0, 48
  %11 = trunc nuw i64 %10 to i16
  %12 = lshr i64 %1, 32
  %13 = trunc i64 %12 to i16
  %14 = lshr i64 %0, 32
  %15 = trunc i64 %14 to i16
  %16 = lshr i64 %1, 16
  %17 = trunc i64 %16 to i16
  %18 = trunc i64 %1 to i16
  %19 = lshr i64 %0, 16
  %20 = trunc i64 %19 to i16
  %21 = add i16 %20, -48
  %22 = icmp ult i16 %21, 10
  %23 = add i16 %15, -48
  %24 = icmp ult i16 %23, 10
  %25 = and i1 %22, %24
  %26 = add i16 %11, -48
  %27 = icmp ult i16 %26, 10
  %28 = select i1 %25, i1 %27, i1 false
  %29 = add i16 %18, -48
  %30 = icmp ult i16 %29, 10
  %31 = and i1 %28, %30
  %32 = add i16 %17, -48
  %33 = icmp ult i16 %32, 10
  %34 = and i1 %31, %33
  %35 = add i16 %13, -48
  %36 = icmp ult i16 %35, 10
  %37 = and i1 %34, %36
  %38 = add i16 %9, -48
  %39 = icmp ult i16 %38, 10
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %42, label %41

41:                                               ; preds = %7, %3
  br label %42

42:                                               ; preds = %7, %41
  %43 = phi i64 [ 0, %41 ], [ 1, %7 ]
  ret i64 %43
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_guarded_value(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %4 = trunc i64 %0 to i16
  %5 = trunc i64 %1 to i16
  %6 = lshr i64 %0, 16
  %7 = lshr i64 %1, 16
  %8 = trunc i64 %7 to i16
  %9 = lshr i64 %0, 32
  %10 = trunc i64 %9 to i16
  %11 = lshr i64 %1, 32
  %12 = trunc i64 %11 to i16
  %13 = lshr i64 %0, 48
  %14 = trunc nuw i64 %13 to i16
  %15 = lshr i64 %1, 48
  %16 = trunc nuw i64 %15 to i16
  %17 = add i16 %4, -58
  %18 = icmp ult i16 %17, -10
  %19 = trunc i64 %6 to i16
  %20 = add i16 %19, -58
  %21 = icmp ult i16 %20, -10
  %22 = or i1 %18, %21
  %23 = add i16 %10, -58
  %24 = icmp ult i16 %23, -10
  %25 = or i1 %22, %24
  %26 = add i16 %14, -58
  %27 = icmp ult i16 %26, -10
  %28 = select i1 %25, i1 true, i1 %27
  %29 = add i16 %5, -58
  %30 = icmp ult i16 %29, -10
  %31 = or i1 %28, %30
  %32 = add i16 %8, -58
  %33 = icmp ult i16 %32, -10
  %34 = or i1 %31, %33
  %35 = add i16 %12, -58
  %36 = icmp ult i16 %35, -10
  %37 = or i1 %34, %36
  %38 = add i16 %16, -58
  %39 = icmp ult i16 %38, -10
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %76, label %41

41:                                               ; preds = %3
  %42 = shl i64 %15, 56
  %43 = shl i64 %11, 48
  %44 = and i64 %43, 71776119061217280
  %45 = or disjoint i64 %42, %44
  %46 = shl i64 %7, 40
  %47 = and i64 %46, 280375465082880
  %48 = or disjoint i64 %45, %47
  %49 = shl i64 %1, 32
  %50 = and i64 %49, 1095216660480
  %51 = or disjoint i64 %48, %50
  %52 = shl nuw nsw i64 %13, 24
  %53 = and i64 %52, 4278190080
  %54 = or disjoint i64 %51, %53
  %55 = shl nuw nsw i64 %9, 16
  %56 = and i64 %55, 16711680
  %57 = shl nuw nsw i64 %6, 8
  %58 = and i64 %57, 65280
  %59 = or disjoint i64 %54, %56
  %60 = and i64 %0, 255
  %61 = or i64 %59, %58
  %62 = or i64 %61, %60
  %63 = mul i64 %2, 100000000
  %64 = add i64 %62, -3472328296227680304
  %65 = mul i64 %64, 10
  %66 = lshr i64 %64, 8
  %67 = add i64 %65, %66
  %68 = and i64 %67, 1095216660735
  %69 = mul i64 %68, 4294967296000100
  %70 = lshr i64 %67, 16
  %71 = and i64 %70, 1095216660735
  %72 = mul i64 %71, 42949672960001
  %73 = add i64 %72, %69
  %74 = lshr i64 %73, 32
  %75 = add i64 %74, %63
  br label %76

76:                                               ; preds = %3, %41
  %77 = phi i64 [ %75, %41 ], [ %2, %3 ]
  ret i64 %77
}

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.linker.options = !{}
!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
