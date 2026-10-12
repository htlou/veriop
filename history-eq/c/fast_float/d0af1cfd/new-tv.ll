; ModuleID = 'history-eq/c/fast_float/d0af1cfd/checker_wrap.cpp'
source_filename = "history-eq/c/fast_float/d0af1cfd/checker_wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZZN10fast_float16parse_int_stringItDsEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EEE4divs = comdat any

@_ZZN10fast_float16parse_int_stringItDsEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EEE4divs = linkonce_odr dso_local local_unnamed_addr constant [4 x i32] [i32 0, i32 1000, i32 100, i32 10], comdat, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 23) i64 @target_error(i16 noundef zeroext %0) local_unnamed_addr #0 {
  switch i16 %0, label %2 [
    i16 45, label %12
    i16 48, label %11
  ]

2:                                                ; preds = %1
  %3 = or i16 %0, -256
  %4 = zext i16 %3 to i32
  %5 = add nuw nsw i32 %4, 70
  %6 = add nuw nsw i32 %4, 208
  %7 = or i32 %5, %6
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i64 0, i64 22
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %1, %11, %2
  %13 = phi i64 [ 22, %1 ], [ %10, %2 ], [ 0, %11 ]
  ret i64 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 -4611686018427387904, 4611686018427387904) i64 @target_consumed(i16 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = alloca [1 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #3
  switch i16 %0, label %3 [
    i16 45, label %18
    i16 48, label %16
  ]

3:                                                ; preds = %1
  %4 = or i16 %0, -256
  %5 = zext i16 %4 to i32
  %6 = add nuw nsw i32 %5, 70
  %7 = add nuw nsw i32 %5, -808464432
  %8 = or i32 %6, %7
  %9 = and i32 %8, -2139062144
  %10 = tail call noundef range(i32 7, 16) i32 @llvm.cttz.i32(i32 %9, i1 true)
  %11 = icmp samesign ult i32 %10, 8
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = lshr i32 %10, 3
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds nuw i16, ptr %2, i64 %14
  br label %18

16:                                               ; preds = %1
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 2
  br label %18

18:                                               ; preds = %1, %16, %3, %12
  %19 = phi ptr [ %2, %1 ], [ %15, %12 ], [ %2, %3 ], [ %17, %16 ]
  %20 = ptrtoint ptr %19 to i64
  %21 = ptrtoint ptr %2 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #3
  ret i64 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 65536) i64 @target_value(i16 noundef zeroext %0) local_unnamed_addr #0 {
  switch i16 %0, label %2 [
    i16 45, label %31
    i16 48, label %30
  ]

2:                                                ; preds = %1
  %3 = zext i16 %0 to i32
  %4 = or i32 %3, -256
  %5 = add nuw nsw i32 %3, 70
  %6 = add nsw i32 %4, -808464432
  %7 = or i32 %5, %6
  %8 = and i32 %7, -2139062144
  %9 = tail call noundef range(i32 7, 16) i32 @llvm.cttz.i32(i32 %8, i1 true)
  %10 = icmp samesign ult i32 %9, 8
  br i1 %10, label %31, label %11

11:                                               ; preds = %2
  %12 = lshr i32 %9, 3
  %13 = and i32 %9, 8
  %14 = sub nuw nsw i32 32, %13
  %15 = lshr i32 -1, %14
  %16 = and i32 %15, %4
  %17 = or i32 %16, 808464384
  %18 = add nsw i32 %17, -808464432
  %19 = mul nsw i32 %18, 10
  %20 = lshr i32 %18, 8
  %21 = add nsw i32 %19, %20
  %22 = and i32 %21, 16711935
  %23 = mul i32 %22, 6553601
  %24 = lshr i32 %23, 16
  %25 = zext nneg i32 %12 to i64
  %26 = getelementptr inbounds nuw [4 x i32], ptr @_ZZN10fast_float16parse_int_stringItDsEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EEE4divs, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = udiv i32 %24, %27
  %29 = zext nneg i32 %28 to i64
  br label %31

30:                                               ; preds = %1
  br label %31

31:                                               ; preds = %1, %30, %2, %11
  %32 = phi i64 [ 123, %1 ], [ %29, %11 ], [ 123, %2 ], [ 0, %30 ]
  ret i64 %32
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.linker.options = !{}
!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
