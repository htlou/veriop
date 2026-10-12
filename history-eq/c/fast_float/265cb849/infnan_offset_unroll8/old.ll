; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/fast_float/265cb849/wrap.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/fast_float/265cb849/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN10fast_float6detail12parse_infnanIdcEENS_19from_chars_result_tIT0_EEPKS3_S6_RT_NS_12chars_formatE = comdat any

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @target_infnan_offset(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [8 x i8], align 8
  %3 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #2
  store i64 %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #2
  store double 0.000000e+00, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %5 = call { ptr, i32 } @_ZN10fast_float6detail12parse_infnanIdcEENS_19from_chars_result_tIT0_EEPKS3_S6_RT_NS_12chars_formatE(ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 5) #2
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %2 to i64
  %9 = sub i64 %7, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  %10 = trunc i64 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN10fast_float6detail12parse_infnanIdcEENS_19from_chars_result_tIT0_EEPKS3_S6_RT_NS_12chars_formatE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
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
  br i1 %19, label %20, label %112

20:                                               ; preds = %14
  %21 = load i8, ptr %15, align 1
  %22 = or i8 %21, 32
  switch i8 %22, label %112 [
    i8 110, label %23
    i8 105, label %70
  ]

23:                                               ; preds = %20
  %24 = getelementptr inbounds nuw i8, ptr %15, i64 1
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, -33
  %27 = icmp eq i8 %26, 65
  br i1 %27, label %28, label %112

28:                                               ; preds = %23
  %29 = getelementptr inbounds nuw i8, ptr %15, i64 2
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, -33
  %32 = icmp eq i8 %31, 78
  br i1 %32, label %33, label %112

33:                                               ; preds = %28
  %34 = getelementptr inbounds nuw i8, ptr %15, i64 3
  %35 = select i1 %6, double 0xFFF8000000000000, double 0x7FF8000000000000
  store double %35, ptr %2, align 8
  %36 = icmp eq ptr %34, %1
  br i1 %36, label %112, label %37

37:                                               ; preds = %33
  %38 = load i8, ptr %34, align 1
  %39 = icmp ne i8 %38, 40
  %40 = getelementptr inbounds nuw i8, ptr %15, i64 4
  %41 = icmp eq ptr %40, %1
  %42 = select i1 %39, i1 true, i1 %41
  br i1 %42, label %112, label %43

43:                                               ; preds = %37
  %44 = load i8, ptr %40, align 1
  %45 = icmp eq i8 %44, 41
  br i1 %45, label %46, label %49

46:                                               ; preds = %66, %43
  %47 = phi ptr [ %40, %43 ], [ %67, %66 ]
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 1
  br label %112

49:                                               ; preds = %43, %66
  %50 = phi i8 [ %68, %66 ], [ %44, %43 ]
  %51 = phi ptr [ %67, %66 ], [ %40, %43 ]
  %52 = and i8 %50, -33
  %53 = add i8 %52, -65
  %54 = icmp ult i8 %53, 26
  br i1 %54, label %63, label %55

55:                                               ; preds = %49
  %56 = add i8 %50, -58
  %57 = icmp ult i8 %56, -10
  %58 = icmp ne i8 %50, 95
  %59 = and i1 %58, %57
  %60 = getelementptr inbounds nuw i8, ptr %51, i64 1
  %61 = icmp eq ptr %60, %1
  %62 = select i1 %59, i1 true, i1 %61
  br i1 %62, label %112, label %66

63:                                               ; preds = %49
  %64 = getelementptr inbounds nuw i8, ptr %51, i64 1
  %65 = icmp eq ptr %64, %1
  br i1 %65, label %112, label %66

66:                                               ; preds = %63, %55
  %67 = phi ptr [ %64, %63 ], [ %60, %55 ]
  %68 = load i8, ptr %67, align 1
  %69 = icmp eq i8 %68, 41
  br i1 %69, label %46, label %49

70:                                               ; preds = %20
  %71 = getelementptr inbounds nuw i8, ptr %15, i64 1
  %72 = load i8, ptr %71, align 1
  %73 = and i8 %72, -33
  %74 = icmp eq i8 %73, 78
  br i1 %74, label %75, label %112

75:                                               ; preds = %70
  %76 = getelementptr inbounds nuw i8, ptr %15, i64 2
  %77 = load i8, ptr %76, align 1
  %78 = and i8 %77, -33
  %79 = icmp eq i8 %78, 70
  br i1 %79, label %80, label %112

80:                                               ; preds = %75
  %81 = icmp samesign ugt i64 %18, 7
  br i1 %81, label %82, label %107

82:                                               ; preds = %80
  %83 = getelementptr inbounds nuw i8, ptr %15, i64 3
  %84 = load i8, ptr %83, align 1
  %85 = and i8 %84, -33
  %86 = icmp eq i8 %85, 73
  br i1 %86, label %87, label %107

87:                                               ; preds = %82
  %88 = getelementptr inbounds nuw i8, ptr %15, i64 4
  %89 = load i8, ptr %88, align 1
  %90 = and i8 %89, -33
  %91 = icmp eq i8 %90, 78
  br i1 %91, label %92, label %107

92:                                               ; preds = %87
  %93 = getelementptr inbounds nuw i8, ptr %15, i64 5
  %94 = load i8, ptr %93, align 1
  %95 = and i8 %94, -33
  %96 = icmp eq i8 %95, 73
  br i1 %96, label %97, label %107

97:                                               ; preds = %92
  %98 = getelementptr inbounds nuw i8, ptr %15, i64 6
  %99 = load i8, ptr %98, align 1
  %100 = and i8 %99, -33
  %101 = icmp eq i8 %100, 84
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = getelementptr inbounds nuw i8, ptr %15, i64 7
  %104 = load i8, ptr %103, align 1
  %105 = and i8 %104, -33
  %106 = icmp eq i8 %105, 89
  br i1 %106, label %108, label %107

107:                                              ; preds = %82, %87, %92, %97, %102, %80
  br label %108

108:                                              ; preds = %102, %107
  %109 = phi i64 [ 3, %107 ], [ 8, %102 ]
  %110 = getelementptr inbounds nuw i8, ptr %15, i64 %109
  %111 = select i1 %6, double 0xFFF0000000000000, double 0x7FF0000000000000
  store double %111, ptr %2, align 8
  br label %112

112:                                              ; preds = %63, %55, %20, %23, %28, %70, %75, %14, %33, %37, %46, %108
  %113 = phi i32 [ 0, %108 ], [ 0, %46 ], [ 0, %37 ], [ 0, %33 ], [ 22, %14 ], [ 22, %75 ], [ 22, %70 ], [ 22, %28 ], [ 22, %23 ], [ 22, %20 ], [ 0, %55 ], [ 0, %63 ]
  %114 = phi ptr [ %110, %108 ], [ %48, %46 ], [ %34, %37 ], [ %34, %33 ], [ %0, %14 ], [ %0, %75 ], [ %0, %70 ], [ %0, %28 ], [ %0, %23 ], [ %0, %20 ], [ %34, %55 ], [ %34, %63 ]
  %115 = insertvalue { ptr, i32 } poison, ptr %114, 0
  %116 = insertvalue { ptr, i32 } %115, i32 %113, 1
  ret { ptr, i32 } %116
}

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
