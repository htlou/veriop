; ModuleID = 'history-eq/c/fast_float/b14e6a4/wrap_int5.cpp'
source_filename = "history-eq/c/fast_float/b14e6a4/wrap_int5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const._ZN10fast_float16parse_int_stringItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.divs = private unnamed_addr constant [4 x i32] [i32 0, i32 1000, i32 100, i32 10], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_int5(i64 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #3
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %7 = trunc i64 %0 to i8
  store i8 %7, ptr %2, align 1
  %8 = lshr i64 %0, 8
  %9 = trunc i64 %8 to i8
  store i8 %9, ptr %3, align 1
  %10 = lshr i64 %0, 16
  %11 = trunc i64 %10 to i8
  store i8 %11, ptr %4, align 1
  %12 = lshr i64 %0, 24
  %13 = trunc i64 %12 to i8
  store i8 %13, ptr %5, align 1
  %14 = lshr i64 %0, 32
  %15 = trunc i64 %14 to i8
  store i8 %15, ptr %6, align 1
  %16 = icmp eq i8 %7, 45
  br i1 %16, label %119, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %19 = icmp eq i8 %7, 48
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = icmp eq i8 %9, 48
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = icmp eq i8 %11, 48
  br i1 %23, label %24, label %39

24:                                               ; preds = %22
  %25 = icmp eq i8 %13, 48
  br i1 %25, label %26, label %33

26:                                               ; preds = %24
  %27 = icmp eq i8 %15, 48
  br i1 %27, label %119, label %31

28:                                               ; preds = %17, %20
  %29 = phi ptr [ %2, %17 ], [ %3, %20 ]
  %30 = load i32, ptr %29, align 1
  br label %58

31:                                               ; preds = %26
  %32 = load i8, ptr %6, align 1
  br label %49

33:                                               ; preds = %24
  %34 = load i8, ptr %5, align 1
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 8
  br label %49

39:                                               ; preds = %22
  %40 = load i8, ptr %4, align 1
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 8
  %45 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 16
  br label %49

49:                                               ; preds = %33, %31, %39
  %50 = phi i8 [ %40, %39 ], [ %34, %33 ], [ %32, %31 ]
  %51 = phi ptr [ %4, %39 ], [ %5, %33 ], [ %6, %31 ]
  %52 = phi i32 [ %44, %39 ], [ %38, %33 ], [ 65280, %31 ]
  %53 = phi i32 [ %48, %39 ], [ 16711680, %33 ], [ 16711680, %31 ]
  %54 = zext i8 %50 to i32
  %55 = or disjoint i32 %52, %54
  %56 = or i32 %55, %53
  %57 = or i32 %56, -16777216
  br label %58

58:                                               ; preds = %49, %28
  %59 = phi ptr [ %29, %28 ], [ %51, %49 ]
  %60 = phi i32 [ %30, %28 ], [ %57, %49 ]
  %61 = add i32 %60, 1179010630
  %62 = add i32 %60, -808464432
  %63 = or i32 %61, %62
  %64 = and i32 %63, -2139062144
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %92, label %66

66:                                               ; preds = %58
  %67 = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %64, i1 true)
  %68 = icmp samesign ult i32 %67, 8
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  br i1 %19, label %70, label %119

70:                                               ; preds = %69
  br label %119

71:                                               ; preds = %66
  %72 = lshr i32 %67, 3
  %73 = and i32 %67, 24
  %74 = sub nuw nsw i32 32, %73
  %75 = lshr i32 -1, %74
  %76 = and i32 %75, %60
  %77 = and i32 %75, 808464384
  %78 = xor i32 %77, 808464384
  %79 = or i32 %78, %76
  %80 = add nsw i32 %79, -808464432
  %81 = mul nsw i32 %80, 10
  %82 = lshr i32 %80, 8
  %83 = add nsw i32 %81, %82
  %84 = and i32 %83, 16711935
  %85 = mul i32 %84, 6553601
  %86 = lshr i32 %85, 16
  %87 = zext nneg i32 %72 to i64
  %88 = getelementptr inbounds nuw [4 x i32], ptr @__const._ZN10fast_float16parse_int_stringItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.divs, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4
  %90 = udiv i32 %86, %89
  %91 = getelementptr inbounds nuw i8, ptr %59, i64 %87
  br label %119

92:                                               ; preds = %58
  %93 = mul i32 %62, 10
  %94 = lshr i32 %62, 8
  %95 = add i32 %93, %94
  %96 = and i32 %95, 16711935
  %97 = mul i32 %96, 6553601
  %98 = lshr i32 %97, 16
  br i1 %19, label %105, label %99

99:                                               ; preds = %92
  %100 = getelementptr inbounds nuw i8, ptr %59, i64 4
  %101 = load i8, ptr %100, align 1
  %102 = sext i8 %101 to i32
  %103 = add nsw i32 %102, -48
  %104 = icmp ugt i32 %103, 9
  br i1 %104, label %105, label %107

105:                                              ; preds = %92, %99
  %106 = getelementptr inbounds nuw i8, ptr %59, i64 4
  br label %119

107:                                              ; preds = %99
  %108 = icmp ugt i32 %97, 429522943
  br i1 %108, label %113, label %109

109:                                              ; preds = %107
  %110 = icmp eq i32 %98, 6553
  %111 = icmp samesign ugt i32 %103, 5
  %112 = and i1 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109, %107
  %114 = getelementptr inbounds nuw i8, ptr %59, i64 5
  br label %119

115:                                              ; preds = %109
  %116 = mul nuw nsw i32 %98, 10
  %117 = add nuw nsw i32 %103, %116
  %118 = getelementptr inbounds nuw i8, ptr %59, i64 5
  br label %119

119:                                              ; preds = %26, %1, %69, %70, %71, %105, %113, %115
  %120 = phi i32 [ 123, %1 ], [ 0, %70 ], [ 123, %69 ], [ %90, %71 ], [ %98, %105 ], [ 123, %113 ], [ %117, %115 ], [ 0, %26 ]
  %121 = phi ptr [ %2, %1 ], [ %59, %70 ], [ %2, %69 ], [ %91, %71 ], [ %106, %105 ], [ %114, %113 ], [ %118, %115 ], [ %18, %26 ]
  %122 = phi i64 [ 22, %1 ], [ 0, %70 ], [ 22, %69 ], [ 0, %71 ], [ 0, %105 ], [ 34, %113 ], [ 0, %115 ], [ 0, %26 ]
  %123 = and i32 %120, 65535
  %124 = zext nneg i32 %123 to i64
  %125 = shl nuw nsw i64 %124, 32
  %126 = ptrtoint ptr %121 to i64
  %127 = ptrtoint ptr %2 to i64
  %128 = sub i64 %126, %127
  %129 = shl i64 %128, 16
  %130 = or disjoint i64 %125, %122
  %131 = or i64 %130, %129
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #3
  ret i64 %131
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
