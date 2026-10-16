; ModuleID = 'modules/v1a_tgt.ll.pre'
source_filename = "/srv/home/hantaolou/code/veriop/heldout/c-alive2/harness/u16_impl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE = comdat any

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define weak_odr dso_local { ptr, i32 } @_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2, i64 %3, i64 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %6 = and i64 %4, -4294967296
  %7 = icmp ne i64 %6, 42949672960
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = icmp slt i64 %10, 8
  %12 = or i1 %11, %7
  br i1 %12, label %45, label %13

13:                                               ; preds = %5
  %14 = load i64, ptr %0, align 1
  %15 = add i64 %14, 5063812098665367110
  %16 = add i64 %14, -3472328296227680304
  %17 = or i64 %15, %16
  %18 = trunc i64 %14 to i32
  %19 = add i32 %18, -808464432
  %20 = mul i32 %19, 10
  %21 = lshr i32 %19, 8
  %22 = add i32 %20, %21
  %23 = and i32 %22, 16711935
  %24 = mul i32 %23, 6553601
  %25 = lshr i32 %24, 16
  %26 = and i64 %17, 141289400074368
  %27 = icmp eq i64 %26, 140737488355328
  br i1 %27, label %28, label %39

28:                                               ; preds = %13
  %29 = mul nuw nsw i32 %25, 10
  %30 = lshr i64 %14, 32
  %31 = trunc nuw i64 %30 to i32
  %32 = and i32 %31, 255
  %33 = add nsw i32 %32, -48
  %34 = add nsw i32 %33, %29
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %36 = icmp ugt i32 %34, 65535
  br i1 %36, label %49, label %37

37:                                               ; preds = %28
  %38 = trunc nuw i32 %34 to i16
  store i16 %38, ptr %2, align 2
  br label %49

39:                                               ; preds = %13
  %40 = and i64 %17, 551911719040
  %41 = icmp eq i64 %40, 549755813888
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = trunc nuw i32 %25 to i16
  store i16 %43, ptr %2, align 2
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %49

45:                                               ; preds = %39, %5
  %46 = tail call { ptr, i32 } @_ZN10fast_float28from_chars_int_advanced_slowItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2, i64 %3, i64 %4) #2
  %47 = extractvalue { ptr, i32 } %46, 0
  %48 = extractvalue { ptr, i32 } %46, 1
  br label %49

49:                                               ; preds = %45, %42, %37, %28
  %50 = phi i32 [ %48, %45 ], [ 34, %28 ], [ 0, %42 ], [ 0, %37 ]
  %51 = phi ptr [ %47, %45 ], [ %35, %28 ], [ %44, %42 ], [ %35, %37 ]
  %52 = insertvalue { ptr, i32 } poison, ptr %51, 0
  %53 = insertvalue { ptr, i32 } %52, i32 %50, 1
  ret { ptr, i32 } %53
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
declare dso_local { ptr, i32 } @_ZN10fast_float28from_chars_int_advanced_slowItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE(ptr noundef, ptr noundef, ptr noundef nonnull align 2 dereferenceable(2), i64, i64) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

define { ptr, i32 } @ver(ptr noundef %buf, i64 noundef %len, ptr noundef nonnull align 2 dereferenceable(2) %v, i64 noundef %fmt, i64 noundef %o2) personality ptr @__gxx_personality_v0 {
  %end = getelementptr i8, ptr %buf, i64 %len
  %pre = icmp ult i64 %len, 8
  call void @llvm.assume(i1 %pre)
  %1 = and i64 %o2, -4294967296
  %2 = icmp ne i64 %1, 42949672960
  %3 = ptrtoint ptr %end to i64
  %4 = ptrtoint ptr %buf to i64
  %5 = sub i64 %3, %4
  %6 = icmp slt i64 %5, 8
  %7 = or i1 %6, %2
  br i1 %7, label %40, label %8

8:                                                ; preds = %0
  %9 = load i64, ptr %buf, align 1
  %10 = add i64 %9, 5063812098665367110
  %11 = add i64 %9, -3472328296227680304
  %12 = or i64 %10, %11
  %13 = trunc i64 %9 to i32
  %14 = add i32 %13, -808464432
  %15 = mul i32 %14, 10
  %16 = lshr i32 %14, 8
  %17 = add i32 %15, %16
  %18 = and i32 %17, 16711935
  %19 = mul i32 %18, 6553601
  %20 = lshr i32 %19, 16
  %21 = and i64 %12, 141289400074368
  %22 = icmp eq i64 %21, 140737488355328
  br i1 %22, label %23, label %34

23:                                               ; preds = %8
  %24 = mul nuw nsw i32 %20, 10
  %25 = lshr i64 %9, 32
  %26 = trunc nuw i64 %25 to i32
  %27 = and i32 %26, 255
  %28 = add nsw i32 %27, -48
  %29 = add nsw i32 %28, %24
  %30 = getelementptr inbounds nuw i8, ptr %buf, i64 5
  %31 = icmp ugt i32 %29, 65535
  br i1 %31, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %32

32:                                               ; preds = %23
  %33 = trunc nuw i32 %29 to i16
  store i16 %33, ptr %v, align 2
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

34:                                               ; preds = %8
  %35 = and i64 %12, 551911719040
  %36 = icmp eq i64 %35, 549755813888
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = trunc nuw i32 %20 to i16
  store i16 %38, ptr %v, align 2
  %39 = getelementptr inbounds nuw i8, ptr %buf, i64 4
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

40:                                               ; preds = %34, %0
  %41 = call { ptr, i32 } @_ZN10fast_float28from_chars_int_advanced_slowItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE(ptr noundef %buf, ptr noundef %end, ptr noundef nonnull align 2 dereferenceable(2) %v, i64 %fmt, i64 %o2) #2
  %42 = extractvalue { ptr, i32 } %41, 0
  %43 = extractvalue { ptr, i32 } %41, 1
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit: ; preds = %23, %32, %37, %40
  %44 = phi i32 [ %43, %40 ], [ 34, %23 ], [ 0, %37 ], [ 0, %32 ]
  %45 = phi ptr [ %42, %40 ], [ %30, %23 ], [ %39, %37 ], [ %30, %32 ]
  %46 = insertvalue { ptr, i32 } poison, ptr %45, 0
  %47 = insertvalue { ptr, i32 } %46, i32 %44, 1
  ret { ptr, i32 } %47
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { alwaysinline mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
