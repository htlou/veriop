; ModuleID = 'history-eq/c/fast_float/b14e6a4/wrap_bridge.cpp'
source_filename = "history-eq/c/fast_float/b14e6a4/wrap_bridge.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const._ZN10fast_float16parse_int_stringItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.divs = private unnamed_addr constant [4 x i32] [i32 0, i32 1000, i32 100, i32 10], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_public5(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
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
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 5
  switch i8 %7, label %25 [
    i8 45, label %112
    i8 48, label %17
  ]

17:                                               ; preds = %1
  %18 = icmp eq i8 %9, 48
  br i1 %18, label %19, label %25

19:                                               ; preds = %17
  %20 = icmp eq i8 %11, 48
  br i1 %20, label %21, label %33

21:                                               ; preds = %19
  %22 = icmp eq i8 %13, 48
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = icmp eq i8 %15, 48
  br i1 %24, label %112, label %40

25:                                               ; preds = %17, %1
  %26 = phi i1 [ true, %1 ], [ false, %17 ]
  %27 = phi ptr [ %2, %1 ], [ %3, %17 ]
  %28 = load i32, ptr %27, align 1
  br label %50

29:                                               ; preds = %21
  %30 = trunc nuw i64 %14 to i32
  %31 = shl i32 %30, 8
  %32 = and i32 %31, 65280
  br label %40

33:                                               ; preds = %19
  %34 = trunc i64 %12 to i32
  %35 = shl i32 %34, 8
  %36 = and i32 %35, 65280
  %37 = trunc nuw i64 %14 to i32
  %38 = shl i32 %37, 16
  %39 = and i32 %38, 16711680
  br label %40

40:                                               ; preds = %23, %33, %29
  %41 = phi i64 [ %10, %33 ], [ %12, %29 ], [ %14, %23 ]
  %42 = phi ptr [ %4, %33 ], [ %5, %29 ], [ %6, %23 ]
  %43 = phi i32 [ %36, %33 ], [ %32, %29 ], [ 65280, %23 ]
  %44 = phi i32 [ %39, %33 ], [ 16711680, %29 ], [ 16711680, %23 ]
  %45 = trunc i64 %41 to i32
  %46 = and i32 %45, 255
  %47 = or disjoint i32 %46, %43
  %48 = or disjoint i32 %47, %44
  %49 = or disjoint i32 %48, -16777216
  br label %50

50:                                               ; preds = %40, %25
  %51 = phi i1 [ %26, %25 ], [ false, %40 ]
  %52 = phi ptr [ %27, %25 ], [ %42, %40 ]
  %53 = phi i32 [ %28, %25 ], [ %49, %40 ]
  %54 = add i32 %53, 1179010630
  %55 = add i32 %53, -808464432
  %56 = or i32 %54, %55
  %57 = and i32 %56, -2139062144
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %85, label %59

59:                                               ; preds = %50
  %60 = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %57, i1 true)
  %61 = icmp samesign ult i32 %60, 8
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  br i1 %51, label %112, label %63

63:                                               ; preds = %62
  br label %112

64:                                               ; preds = %59
  %65 = lshr i32 %60, 3
  %66 = and i32 %60, 24
  %67 = sub nuw nsw i32 32, %66
  %68 = lshr i32 -1, %67
  %69 = and i32 %68, %53
  %70 = and i32 %68, 808464384
  %71 = xor i32 %70, 808464384
  %72 = or i32 %71, %69
  %73 = add nsw i32 %72, -808464432
  %74 = mul nsw i32 %73, 10
  %75 = lshr i32 %73, 8
  %76 = add nsw i32 %74, %75
  %77 = and i32 %76, 16711935
  %78 = mul i32 %77, 6553601
  %79 = lshr i32 %78, 16
  %80 = zext nneg i32 %65 to i64
  %81 = getelementptr inbounds nuw [4 x i32], ptr @__const._ZN10fast_float16parse_int_stringItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.divs, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4
  %83 = udiv i32 %79, %82
  %84 = getelementptr inbounds nuw i8, ptr %52, i64 %80
  br label %112

85:                                               ; preds = %50
  %86 = mul i32 %55, 10
  %87 = lshr i32 %55, 8
  %88 = add i32 %86, %87
  %89 = and i32 %88, 16711935
  %90 = mul i32 %89, 6553601
  %91 = lshr i32 %90, 16
  br i1 %51, label %92, label %98

92:                                               ; preds = %85
  %93 = getelementptr inbounds nuw i8, ptr %52, i64 4
  %94 = load i8, ptr %93, align 1
  %95 = sext i8 %94 to i32
  %96 = add nsw i32 %95, -48
  %97 = icmp ugt i32 %96, 9
  br i1 %97, label %98, label %100

98:                                               ; preds = %92, %85
  %99 = getelementptr inbounds nuw i8, ptr %52, i64 4
  br label %112

100:                                              ; preds = %92
  %101 = icmp ugt i32 %90, 429522943
  br i1 %101, label %106, label %102

102:                                              ; preds = %100
  %103 = icmp eq i32 %91, 6553
  %104 = icmp samesign ugt i32 %96, 5
  %105 = and i1 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102, %100
  %107 = getelementptr inbounds nuw i8, ptr %52, i64 5
  br label %112

108:                                              ; preds = %102
  %109 = mul nuw nsw i32 %91, 10
  %110 = add nuw nsw i32 %96, %109
  %111 = getelementptr inbounds nuw i8, ptr %52, i64 5
  br label %112

112:                                              ; preds = %1, %23, %62, %63, %64, %98, %106, %108
  %113 = phi i32 [ 123, %1 ], [ %91, %98 ], [ 123, %106 ], [ %110, %108 ], [ 0, %63 ], [ 123, %62 ], [ %83, %64 ], [ 0, %23 ]
  %114 = phi ptr [ %2, %1 ], [ %99, %98 ], [ %107, %106 ], [ %111, %108 ], [ %52, %63 ], [ %2, %62 ], [ %84, %64 ], [ %16, %23 ]
  %115 = phi i64 [ 22, %1 ], [ 0, %98 ], [ 34, %106 ], [ 0, %108 ], [ 0, %63 ], [ 22, %62 ], [ 0, %64 ], [ 0, %23 ]
  %116 = and i32 %113, 65535
  %117 = zext nneg i32 %116 to i64
  %118 = shl nuw nsw i64 %117, 32
  %119 = ptrtoint ptr %114 to i64
  %120 = ptrtoint ptr %2 to i64
  %121 = sub i64 %119, %120
  %122 = shl i64 %121, 16
  %123 = or disjoint i64 %118, %115
  %124 = or i64 %123, %122
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #3
  ret i64 %124
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_direct5(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
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
  br i1 %16, label %112, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %19 = icmp eq i8 %7, 48
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = icmp eq i8 %9, 48
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = icmp eq i8 %11, 48
  br i1 %23, label %24, label %35

24:                                               ; preds = %22
  %25 = icmp eq i8 %13, 48
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  %27 = icmp eq i8 %15, 48
  br i1 %27, label %112, label %42

28:                                               ; preds = %20, %17
  %29 = phi ptr [ %2, %17 ], [ %3, %20 ]
  %30 = load i32, ptr %29, align 1
  br label %51

31:                                               ; preds = %24
  %32 = trunc nuw i64 %14 to i32
  %33 = shl i32 %32, 8
  %34 = and i32 %33, 65280
  br label %42

35:                                               ; preds = %22
  %36 = trunc i64 %12 to i32
  %37 = shl i32 %36, 8
  %38 = and i32 %37, 65280
  %39 = trunc nuw i64 %14 to i32
  %40 = shl i32 %39, 16
  %41 = and i32 %40, 16711680
  br label %42

42:                                               ; preds = %26, %35, %31
  %43 = phi i8 [ %11, %35 ], [ %13, %31 ], [ %15, %26 ]
  %44 = phi ptr [ %4, %35 ], [ %5, %31 ], [ %6, %26 ]
  %45 = phi i32 [ %38, %35 ], [ %34, %31 ], [ 65280, %26 ]
  %46 = phi i32 [ %41, %35 ], [ 16711680, %31 ], [ 16711680, %26 ]
  %47 = zext i8 %43 to i32
  %48 = or disjoint i32 %45, %47
  %49 = or disjoint i32 %48, %46
  %50 = or disjoint i32 %49, -16777216
  br label %51

51:                                               ; preds = %42, %28
  %52 = phi ptr [ %29, %28 ], [ %44, %42 ]
  %53 = phi i32 [ %30, %28 ], [ %50, %42 ]
  %54 = add i32 %53, 1179010630
  %55 = add i32 %53, -808464432
  %56 = or i32 %54, %55
  %57 = and i32 %56, -2139062144
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %85, label %59

59:                                               ; preds = %51
  %60 = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %57, i1 true)
  %61 = icmp samesign ult i32 %60, 8
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  br i1 %19, label %63, label %112

63:                                               ; preds = %62
  br label %112

64:                                               ; preds = %59
  %65 = lshr i32 %60, 3
  %66 = and i32 %60, 24
  %67 = sub nuw nsw i32 32, %66
  %68 = lshr i32 -1, %67
  %69 = and i32 %68, %53
  %70 = and i32 %68, 808464384
  %71 = xor i32 %70, 808464384
  %72 = or i32 %71, %69
  %73 = add nsw i32 %72, -808464432
  %74 = mul nsw i32 %73, 10
  %75 = lshr i32 %73, 8
  %76 = add nsw i32 %74, %75
  %77 = and i32 %76, 16711935
  %78 = mul i32 %77, 6553601
  %79 = lshr i32 %78, 16
  %80 = zext nneg i32 %65 to i64
  %81 = getelementptr inbounds nuw [4 x i32], ptr @__const._ZN10fast_float16parse_int_stringItcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.divs, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4
  %83 = udiv i32 %79, %82
  %84 = getelementptr inbounds nuw i8, ptr %52, i64 %80
  br label %112

85:                                               ; preds = %51
  %86 = mul i32 %55, 10
  %87 = lshr i32 %55, 8
  %88 = add i32 %86, %87
  %89 = and i32 %88, 16711935
  %90 = mul i32 %89, 6553601
  %91 = lshr i32 %90, 16
  br i1 %19, label %98, label %92

92:                                               ; preds = %85
  %93 = getelementptr inbounds nuw i8, ptr %52, i64 4
  %94 = load i8, ptr %93, align 1
  %95 = sext i8 %94 to i32
  %96 = add nsw i32 %95, -48
  %97 = icmp ugt i32 %96, 9
  br i1 %97, label %98, label %100

98:                                               ; preds = %92, %85
  %99 = getelementptr inbounds nuw i8, ptr %52, i64 4
  br label %112

100:                                              ; preds = %92
  %101 = icmp ugt i32 %90, 429522943
  br i1 %101, label %106, label %102

102:                                              ; preds = %100
  %103 = icmp eq i32 %91, 6553
  %104 = icmp samesign ugt i32 %96, 5
  %105 = and i1 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102, %100
  %107 = getelementptr inbounds nuw i8, ptr %52, i64 5
  br label %112

108:                                              ; preds = %102
  %109 = mul nuw nsw i32 %91, 10
  %110 = add nuw nsw i32 %96, %109
  %111 = getelementptr inbounds nuw i8, ptr %52, i64 5
  br label %112

112:                                              ; preds = %1, %26, %62, %63, %64, %98, %106, %108
  %113 = phi i32 [ 123, %1 ], [ 0, %63 ], [ 123, %62 ], [ %83, %64 ], [ %91, %98 ], [ 123, %106 ], [ %110, %108 ], [ 0, %26 ]
  %114 = phi ptr [ %2, %1 ], [ %52, %63 ], [ %2, %62 ], [ %84, %64 ], [ %99, %98 ], [ %107, %106 ], [ %111, %108 ], [ %18, %26 ]
  %115 = phi i64 [ 22, %1 ], [ 0, %63 ], [ 22, %62 ], [ 0, %64 ], [ 0, %98 ], [ 34, %106 ], [ 0, %108 ], [ 0, %26 ]
  %116 = and i32 %113, 65535
  %117 = zext nneg i32 %116 to i64
  %118 = shl nuw nsw i64 %117, 32
  %119 = ptrtoint ptr %114 to i64
  %120 = ptrtoint ptr %2 to i64
  %121 = sub i64 %119, %120
  %122 = shl i64 %121, 16
  %123 = or disjoint i64 %118, %115
  %124 = or i64 %123, %122
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #3
  ret i64 %124
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

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
