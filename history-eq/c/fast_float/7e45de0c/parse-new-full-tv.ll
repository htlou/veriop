; ModuleID = 'history-eq/c/fast_float/7e45de0c/parse.cpp'
source_filename = "history-eq/c/fast_float/7e45de0c/parse.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @target_value(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #2
  store i64 %0, ptr %2, align 8
  %3 = and i64 %0, 255
  %4 = icmp eq i64 %3, 45
  %5 = zext i1 %4 to i64
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 %5
  %7 = load i8, ptr %6, align 1
  %8 = or i8 %7, 32
  switch i8 %8, label %33 [
    i8 110, label %9
    i8 105, label %21
  ]

9:                                                ; preds = %1
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 1
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, -33
  %13 = icmp eq i8 %12, 65
  br i1 %13, label %14, label %33

14:                                               ; preds = %9
  %15 = getelementptr inbounds nuw i8, ptr %6, i64 2
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, -33
  %18 = icmp eq i8 %17, 78
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = select i1 %4, double 0xFFF8000000000000, double 0x7FF8000000000000
  br label %33

21:                                               ; preds = %1
  %22 = getelementptr inbounds nuw i8, ptr %6, i64 1
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, -33
  %25 = icmp eq i8 %24, 78
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = getelementptr inbounds nuw i8, ptr %6, i64 2
  %28 = load i8, ptr %27, align 1
  %29 = and i8 %28, -33
  %30 = icmp eq i8 %29, 70
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = select i1 %4, double 0xFFF0000000000000, double 0x7FF0000000000000
  br label %33

33:                                               ; preds = %1, %9, %14, %19, %21, %26, %31
  %34 = phi double [ 0.000000e+00, %1 ], [ %32, %31 ], [ 0.000000e+00, %26 ], [ 0.000000e+00, %21 ], [ 0.000000e+00, %14 ], [ 0.000000e+00, %9 ], [ %20, %19 ]
  %35 = bitcast double %34 to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_offset(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #2
  store i64 %0, ptr %2, align 8
  %3 = and i64 %0, 255
  %4 = icmp eq i64 %3, 45
  %5 = zext i1 %4 to i64
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 %5
  %7 = load i8, ptr %6, align 1
  %8 = or i8 %7, 32
  switch i8 %8, label %96 [
    i8 110, label %9
    i8 105, label %56
  ]

9:                                                ; preds = %1
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 1
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, -33
  %13 = icmp eq i8 %12, 65
  br i1 %13, label %14, label %96

14:                                               ; preds = %9
  %15 = getelementptr inbounds nuw i8, ptr %6, i64 2
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, -33
  %18 = icmp eq i8 %17, 78
  br i1 %18, label %19, label %96

19:                                               ; preds = %14
  %20 = select i1 %4, i64 4, i64 3
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 %20
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 40
  br i1 %23, label %24, label %96

24:                                               ; preds = %19
  %25 = select i1 %4, i64 5, i64 4
  %26 = select i1 %4, i64 40, i64 32
  %27 = lshr i64 %0, %26
  %28 = trunc i64 %27 to i8
  %29 = icmp eq i8 %28, 41
  br i1 %29, label %30, label %34

30:                                               ; preds = %51, %24
  %31 = phi i64 [ %25, %24 ], [ %52, %51 ]
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 %31
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 1
  br label %96

34:                                               ; preds = %24, %51
  %35 = phi i8 [ %54, %51 ], [ %28, %24 ]
  %36 = phi i64 [ %52, %51 ], [ %25, %24 ]
  %37 = and i8 %35, -33
  %38 = add i8 %37, -65
  %39 = icmp ult i8 %38, 26
  br i1 %39, label %48, label %40

40:                                               ; preds = %34
  %41 = add i8 %35, -58
  %42 = icmp ult i8 %41, -10
  %43 = icmp ne i8 %35, 95
  %44 = and i1 %43, %42
  %45 = add nuw nsw i64 %36, 1
  %46 = icmp eq i64 %45, 8
  %47 = select i1 %44, i1 true, i1 %46
  br i1 %47, label %96, label %51

48:                                               ; preds = %34
  %49 = add nuw nsw i64 %36, 1
  %50 = icmp samesign eq i64 %49, 8
  br i1 %50, label %96, label %51

51:                                               ; preds = %48, %40
  %52 = phi i64 [ %49, %48 ], [ %45, %40 ]
  %53 = getelementptr inbounds nuw i8, ptr %2, i64 %52
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, 41
  br i1 %55, label %30, label %34

56:                                               ; preds = %1
  %57 = getelementptr inbounds nuw i8, ptr %6, i64 1
  %58 = load i8, ptr %57, align 1
  %59 = and i8 %58, -33
  %60 = icmp eq i8 %59, 78
  br i1 %60, label %61, label %96

61:                                               ; preds = %56
  %62 = getelementptr inbounds nuw i8, ptr %6, i64 2
  %63 = load i8, ptr %62, align 1
  %64 = and i8 %63, -33
  %65 = icmp eq i8 %64, 70
  br i1 %65, label %66, label %96

66:                                               ; preds = %61
  br i1 %4, label %92, label %67

67:                                               ; preds = %66
  %68 = getelementptr inbounds nuw i8, ptr %6, i64 3
  %69 = load i8, ptr %68, align 1
  %70 = and i8 %69, -33
  %71 = icmp eq i8 %70, 73
  br i1 %71, label %72, label %92

72:                                               ; preds = %67
  %73 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %74 = load i8, ptr %73, align 1
  %75 = and i8 %74, -33
  %76 = icmp eq i8 %75, 78
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = getelementptr inbounds nuw i8, ptr %6, i64 5
  %79 = load i8, ptr %78, align 1
  %80 = and i8 %79, -33
  %81 = icmp eq i8 %80, 73
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = getelementptr inbounds nuw i8, ptr %6, i64 6
  %84 = load i8, ptr %83, align 1
  %85 = and i8 %84, -33
  %86 = icmp eq i8 %85, 84
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = getelementptr inbounds nuw i8, ptr %6, i64 7
  %89 = load i8, ptr %88, align 1
  %90 = and i8 %89, -33
  %91 = icmp eq i8 %90, 89
  br i1 %91, label %93, label %92

92:                                               ; preds = %87, %82, %77, %72, %67, %66
  br label %93

93:                                               ; preds = %92, %87
  %94 = phi i64 [ 3, %92 ], [ 8, %87 ]
  %95 = getelementptr inbounds nuw i8, ptr %6, i64 %94
  br label %96

96:                                               ; preds = %40, %48, %1, %9, %14, %19, %30, %56, %61, %93
  %97 = phi ptr [ %95, %93 ], [ %33, %30 ], [ %21, %19 ], [ %2, %61 ], [ %2, %56 ], [ %2, %14 ], [ %2, %9 ], [ %2, %1 ], [ %21, %48 ], [ %21, %40 ]
  %98 = ptrtoint ptr %97 to i64
  %99 = ptrtoint ptr %2 to i64
  %100 = sub i64 %98, %99
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %100
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 23) i64 @target_error(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #2
  store i64 %0, ptr %2, align 8
  %3 = and i64 %0, 255
  %4 = icmp eq i64 %3, 45
  %5 = zext i1 %4 to i64
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 %5
  %7 = load i8, ptr %6, align 1
  %8 = or i8 %7, 32
  switch i8 %8, label %26 [
    i8 110, label %9
    i8 105, label %14
  ]

9:                                                ; preds = %1
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 1
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, -33
  %13 = icmp eq i8 %12, 65
  br i1 %13, label %19, label %26

14:                                               ; preds = %1
  %15 = getelementptr inbounds nuw i8, ptr %6, i64 1
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, -33
  %18 = icmp eq i8 %17, 78
  br i1 %18, label %19, label %26

19:                                               ; preds = %14, %9
  %20 = phi i8 [ 78, %9 ], [ 70, %14 ]
  %21 = getelementptr inbounds nuw i8, ptr %6, i64 2
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, -33
  %24 = icmp eq i8 %23, %20
  %25 = select i1 %24, i64 0, i64 22
  br label %26

26:                                               ; preds = %1, %9, %14, %19
  %27 = phi i64 [ 22, %14 ], [ 22, %9 ], [ 22, %1 ], [ %25, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %27
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
