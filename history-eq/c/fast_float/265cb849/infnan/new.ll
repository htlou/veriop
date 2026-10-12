; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/fast_float/265cb849/wrap.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/fast_float/265cb849/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN10fast_float6detail12parse_infnanIdcEENS_19from_chars_result_tIT0_EEPKS3_S6_RT_NS_12chars_formatE = comdat any

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_raw_u8(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = xor i32 %0, %1
  %4 = and i32 %3, -538976289
  %5 = icmp eq i32 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @target_literal_inf(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, -538976289
  %3 = icmp eq i32 %2, 1229344329
  ret i1 %3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @target_infnan_value(i64 noundef %0) local_unnamed_addr #2 {
  %2 = alloca [8 x i8], align 8
  %3 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #3
  store i64 %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #3
  store double 0.000000e+00, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %5 = call { ptr, i32 } @_ZN10fast_float6detail12parse_infnanIdcEENS_19from_chars_result_tIT0_EEPKS3_S6_RT_NS_12chars_formatE(ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 5) #3
  %6 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #3
  ret i64 %6
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @target_infnan_offset(i64 noundef %0) local_unnamed_addr #2 {
  %2 = alloca [8 x i8], align 8
  %3 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #3
  store i64 %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #3
  store double 0.000000e+00, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %5 = call { ptr, i32 } @_ZN10fast_float6detail12parse_infnanIdcEENS_19from_chars_result_tIT0_EEPKS3_S6_RT_NS_12chars_formatE(ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 5) #3
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %2 to i64
  %9 = sub i64 %7, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #3
  %10 = trunc i64 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @target_infnan_error(i64 noundef %0) local_unnamed_addr #2 {
  %2 = alloca [8 x i8], align 8
  %3 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #3
  store i64 %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #3
  store double 0.000000e+00, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %5 = call { ptr, i32 } @_ZN10fast_float6detail12parse_infnanIdcEENS_19from_chars_result_tIT0_EEPKS3_S6_RT_NS_12chars_formatE(ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 5) #3
  %6 = extractvalue { ptr, i32 } %5, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #3
  ret i32 %6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN10fast_float6detail12parse_infnanIdcEENS_19from_chars_result_tIT0_EEPKS3_S6_RT_NS_12chars_formatE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
  %5 = load i8, ptr %0, align 1
  %6 = icmp eq i8 %5, 45
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = and i64 %3, 128
  %9 = icmp ne i64 %8, 0
  %10 = icmp eq i8 %5, 43
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %7, %4
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi ptr [ %13, %12 ], [ %0, %7 ]
  %16 = ptrtoint ptr %1 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = icmp sgt i64 %18, 2
  br i1 %19, label %20, label %77

20:                                               ; preds = %14
  %21 = load i24, ptr %15, align 1
  %22 = and i24 %21, -2105377
  %23 = icmp eq i24 %22, 5128526
  br i1 %23, label %24, label %61

24:                                               ; preds = %20
  %25 = getelementptr inbounds nuw i8, ptr %15, i64 3
  %26 = select i1 %6, double 0xFFF8000000000000, double 0x7FF8000000000000
  store double %26, ptr %2, align 8
  %27 = icmp eq ptr %25, %1
  br i1 %27, label %77, label %28

28:                                               ; preds = %24
  %29 = load i8, ptr %25, align 1
  %30 = icmp ne i8 %29, 40
  %31 = getelementptr inbounds nuw i8, ptr %15, i64 4
  %32 = icmp eq ptr %31, %1
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %77, label %34

34:                                               ; preds = %28
  %35 = load i8, ptr %31, align 1
  %36 = icmp eq i8 %35, 41
  br i1 %36, label %37, label %40

37:                                               ; preds = %57, %34
  %38 = phi ptr [ %31, %34 ], [ %58, %57 ]
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 1
  br label %77

40:                                               ; preds = %34, %57
  %41 = phi i8 [ %59, %57 ], [ %35, %34 ]
  %42 = phi ptr [ %58, %57 ], [ %31, %34 ]
  %43 = and i8 %41, -33
  %44 = add i8 %43, -65
  %45 = icmp ult i8 %44, 26
  br i1 %45, label %54, label %46

46:                                               ; preds = %40
  %47 = add i8 %41, -58
  %48 = icmp ult i8 %47, -10
  %49 = icmp ne i8 %41, 95
  %50 = and i1 %49, %48
  %51 = getelementptr inbounds nuw i8, ptr %42, i64 1
  %52 = icmp eq ptr %51, %1
  %53 = select i1 %50, i1 true, i1 %52
  br i1 %53, label %77, label %57

54:                                               ; preds = %40
  %55 = getelementptr inbounds nuw i8, ptr %42, i64 1
  %56 = icmp eq ptr %55, %1
  br i1 %56, label %77, label %57

57:                                               ; preds = %54, %46
  %58 = phi ptr [ %55, %54 ], [ %51, %46 ]
  %59 = load i8, ptr %58, align 1
  %60 = icmp eq i8 %59, 41
  br i1 %60, label %37, label %40

61:                                               ; preds = %20
  %62 = load i24, ptr %15, align 1
  %63 = and i24 %62, -2105377
  %64 = icmp eq i24 %63, 4607561
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = icmp samesign ugt i64 %18, 7
  br i1 %66, label %67, label %72

67:                                               ; preds = %65
  %68 = getelementptr inbounds nuw i8, ptr %15, i64 3
  %69 = load i40, ptr %68, align 1
  %70 = and i40 %69, -137977929761
  %71 = icmp eq i40 %70, 383666179657
  br i1 %71, label %73, label %72

72:                                               ; preds = %67, %65
  br label %73

73:                                               ; preds = %67, %72
  %74 = phi i64 [ 3, %72 ], [ 8, %67 ]
  %75 = getelementptr inbounds nuw i8, ptr %15, i64 %74
  %76 = select i1 %6, double 0xFFF0000000000000, double 0x7FF0000000000000
  store double %76, ptr %2, align 8
  br label %77

77:                                               ; preds = %54, %46, %61, %14, %24, %28, %37, %73
  %78 = phi i32 [ 0, %73 ], [ 0, %37 ], [ 0, %28 ], [ 0, %24 ], [ 22, %14 ], [ 22, %61 ], [ 0, %46 ], [ 0, %54 ]
  %79 = phi ptr [ %75, %73 ], [ %39, %37 ], [ %25, %28 ], [ %25, %24 ], [ %0, %14 ], [ %0, %61 ], [ %25, %46 ], [ %25, %54 ]
  %80 = insertvalue { ptr, i32 } poison, ptr %79, 0
  %81 = insertvalue { ptr, i32 } %80, i32 %78, 1
  ret { ptr, i32 } %81
}

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
