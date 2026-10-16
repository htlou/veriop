; ModuleID = '/srv/home/hantaolou/code/veriop/heldout/c-alive2/final-verification/modules/v2_s4_z2_L10_f0_tgt.ll.pre'
source_filename = "/srv/home/hantaolou/code/veriop/heldout/c-alive2/harness/u16_impl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE = comdat any

$_ZN10fast_float9space_lutIvE5valueE = comdat any

$_ZN10fast_float8int_lutsIvE7chdigitE = comdat any

$_ZN10fast_float8int_lutsIvE13maxdigits_u64E = comdat any

$_ZN10fast_float8int_lutsIvE12min_safe_u64E = comdat any

@_ZN10fast_float9space_lutIvE5valueE = weak_odr dso_local local_unnamed_addr constant <{ [33 x i8], [223 x i8] }> <{ [33 x i8] c"\00\00\00\00\00\00\00\00\00\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [223 x i8] zeroinitializer }>, comdat, align 16
@_ZN10fast_float8int_lutsIvE7chdigitE = weak_odr dso_local local_unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", comdat, align 16
@_ZN10fast_float8int_lutsIvE13maxdigits_u64E = weak_odr dso_local local_unnamed_addr constant [35 x i64] [i64 64, i64 41, i64 32, i64 28, i64 25, i64 23, i64 22, i64 21, i64 20, i64 19, i64 18, i64 18, i64 17, i64 17, i64 16, i64 16, i64 16, i64 16, i64 15, i64 15, i64 15, i64 15, i64 14, i64 14, i64 14, i64 14, i64 14, i64 14, i64 14, i64 13, i64 13, i64 13, i64 13, i64 13, i64 13], comdat, align 16
@_ZN10fast_float8int_lutsIvE12min_safe_u64E = weak_odr dso_local local_unnamed_addr constant [35 x i64] [i64 -9223372036854775808, i64 -6289078614652622815, i64 4611686018427387904, i64 7450580596923828125, i64 4738381338321616896, i64 3909821048582988049, i64 -9223372036854775808, i64 -6289078614652622815, i64 -8446744073709551616, i64 5559917313492231481, i64 2218611106740436992, i64 8650415919381337933, i64 2177953337809371136, i64 6568408355712890625, i64 1152921504606846976, i64 2862423051509815793, i64 6746640616477458432, i64 -3265617043834753317, i64 1638400000000000000, i64 3243919932521508681, i64 6221821273427820544, i64 -6853907749170801807, i64 876488338465357824, i64 1490116119384765625, i64 2481152873203736576, i64 4052555153018976267, i64 6502111422497947648, i64 -8186115360750949427, i64 -2503514073709551616, i64 787662783788549761, i64 1152921504606846976, i64 1667889514952984961, i64 2386420683693101056, i64 3379220508056640625, i64 4738381338321616896], comdat, align 16

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

define { ptr, i32 } @ver(ptr noundef nonnull align 2 dereferenceable(2) %v, i64 noundef %fmt, i64 noundef %o2, i8 noundef %c2, i8 noundef %c3, i8 noundef %c4, i8 noundef %c5, i8 noundef %c6, i8 noundef %c7, i8 noundef %c8, i8 noundef %c9) personality ptr @__gxx_personality_v0 {
  %buf = alloca [10 x i8], align 1
  %p0 = getelementptr inbounds i8, ptr %buf, i64 0
  store i8 48, ptr %p0, align 1
  %p1 = getelementptr inbounds i8, ptr %buf, i64 1
  store i8 48, ptr %p1, align 1
  %p2 = getelementptr inbounds i8, ptr %buf, i64 2
  store i8 %c2, ptr %p2, align 1
  %p3 = getelementptr inbounds i8, ptr %buf, i64 3
  store i8 %c3, ptr %p3, align 1
  %p4 = getelementptr inbounds i8, ptr %buf, i64 4
  store i8 %c4, ptr %p4, align 1
  %p5 = getelementptr inbounds i8, ptr %buf, i64 5
  store i8 %c5, ptr %p5, align 1
  %p6 = getelementptr inbounds i8, ptr %buf, i64 6
  store i8 %c6, ptr %p6, align 1
  %p7 = getelementptr inbounds i8, ptr %buf, i64 7
  store i8 %c7, ptr %p7, align 1
  %p8 = getelementptr inbounds i8, ptr %buf, i64 8
  store i8 %c8, ptr %p8, align 1
  %p9 = getelementptr inbounds i8, ptr %buf, i64 9
  store i8 %c9, ptr %p9, align 1
  %s2 = sub i8 %c2, 48
  %d2 = icmp ult i8 %s2, 10
  call void @llvm.assume(i1 %d2)
  %s3 = sub i8 %c3, 48
  %d3 = icmp ult i8 %s3, 10
  call void @llvm.assume(i1 %d3)
  %s4 = sub i8 %c4, 48
  %d4 = icmp ult i8 %s4, 10
  %nd4 = xor i1 %d4, true
  call void @llvm.assume(i1 %nd4)
  %nz = icmp ne i8 %c2, 48
  call void @llvm.assume(i1 %nz)
  %end = getelementptr i8, ptr %buf, i64 10
  %bhi = lshr i64 %o2, 32
  %base = trunc i64 %bhi to i32
  %b10 = icmp eq i32 %base, 10
  call void @llvm.assume(i1 %b10)
  %o2lo = and i64 %o2, 4294967295
  %o2b = or i64 %o2lo, 42949672960
  %fmtm = and i64 %fmt, -385
  %fmtc = or i64 %fmtm, 0
  %1 = ptrtoint ptr %end to i64
  %2 = ptrtoint ptr %buf to i64
  %3 = sub i64 %1, %2
  %4 = icmp slt i64 %3, 8
  br i1 %4, label %37, label %5

5:                                                ; preds = %0
  %6 = load i64, ptr %buf, align 1
  %7 = add i64 %6, 5063812098665367110
  %8 = add i64 %6, -3472328296227680304
  %9 = or i64 %7, %8
  %10 = trunc i64 %6 to i32
  %11 = add i32 %10, -808464432
  %12 = mul i32 %11, 10
  %13 = lshr i32 %11, 8
  %14 = add i32 %12, %13
  %15 = and i32 %14, 16711935
  %16 = mul i32 %15, 6553601
  %17 = lshr i32 %16, 16
  %18 = and i64 %9, 141289400074368
  %19 = icmp eq i64 %18, 140737488355328
  br i1 %19, label %20, label %31

20:                                               ; preds = %5
  %21 = mul nuw nsw i32 %17, 10
  %22 = lshr i64 %6, 32
  %23 = trunc nuw i64 %22 to i32
  %24 = and i32 %23, 255
  %25 = add nsw i32 %24, -48
  %26 = add nsw i32 %25, %21
  %27 = getelementptr inbounds nuw i8, ptr %buf, i64 5
  %28 = icmp ugt i32 %26, 65535
  br i1 %28, label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %29

29:                                               ; preds = %20
  %30 = trunc nuw i32 %26 to i16
  store i16 %30, ptr %v, align 2
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

31:                                               ; preds = %5
  %32 = and i64 %9, 551911719040
  %33 = icmp eq i64 %32, 549755813888
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = trunc nuw i32 %17 to i16
  store i16 %35, ptr %v, align 2
  %36 = getelementptr inbounds nuw i8, ptr %buf, i64 4
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

37:                                               ; preds = %31, %0
  %38 = call { ptr, i32 } @_ZN10fast_float28from_chars_int_advanced_slowItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE(ptr noundef %buf, ptr noundef %end, ptr noundef nonnull align 2 dereferenceable(2) %v, i64 %fmtc, i64 %o2b) #2
  %39 = extractvalue { ptr, i32 } %38, 0
  %40 = extractvalue { ptr, i32 } %38, 1
  br label %_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit

_ZN10fast_float23from_chars_int_advancedItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit: ; preds = %20, %29, %34, %37
  %41 = phi i32 [ %40, %37 ], [ 34, %20 ], [ 0, %34 ], [ 0, %29 ]
  %42 = phi ptr [ %39, %37 ], [ %27, %20 ], [ %36, %34 ], [ %27, %29 ]
  %43 = insertvalue { ptr, i32 } poison, ptr %42, 0
  %44 = insertvalue { ptr, i32 } %43, i32 %41, 1
  ret { ptr, i32 } %44
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
