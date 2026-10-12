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
  %7 = load i24, ptr %6, align 1
  %8 = and i24 %7, -2105377
  switch i24 %8, label %13 [
    i24 5128526, label %9
    i24 4607561, label %11
  ]

9:                                                ; preds = %1
  %10 = select i1 %4, double 0xFFF8000000000000, double 0x7FF8000000000000
  br label %13

11:                                               ; preds = %1
  %12 = select i1 %4, double 0xFFF0000000000000, double 0x7FF0000000000000
  br label %13

13:                                               ; preds = %1, %9, %11
  %14 = phi double [ 0.000000e+00, %1 ], [ %12, %11 ], [ %10, %9 ]
  %15 = bitcast double %14 to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %15
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
  %7 = load i24, ptr %6, align 1
  %8 = and i24 %7, -2105377
  switch i24 %8, label %56 [
    i24 5128526, label %9
    i24 4607561, label %46
  ]

9:                                                ; preds = %1
  %10 = select i1 %4, i64 4, i64 3
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 40
  br i1 %13, label %14, label %56

14:                                               ; preds = %9
  %15 = select i1 %4, i64 5, i64 4
  %16 = select i1 %4, i64 40, i64 32
  %17 = lshr i64 %0, %16
  %18 = trunc i64 %17 to i8
  %19 = icmp eq i8 %18, 41
  br i1 %19, label %20, label %24

20:                                               ; preds = %41, %14
  %21 = phi i64 [ %15, %14 ], [ %42, %41 ]
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 1
  br label %56

24:                                               ; preds = %14, %41
  %25 = phi i8 [ %44, %41 ], [ %18, %14 ]
  %26 = phi i64 [ %42, %41 ], [ %15, %14 ]
  %27 = and i8 %25, -33
  %28 = add i8 %27, -65
  %29 = icmp ult i8 %28, 26
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = add i8 %25, -58
  %32 = icmp ult i8 %31, -10
  %33 = icmp ne i8 %25, 95
  %34 = and i1 %33, %32
  %35 = add nuw nsw i64 %26, 1
  %36 = icmp eq i64 %35, 8
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %56, label %41

38:                                               ; preds = %24
  %39 = add nuw nsw i64 %26, 1
  %40 = icmp samesign eq i64 %39, 8
  br i1 %40, label %56, label %41

41:                                               ; preds = %38, %30
  %42 = phi i64 [ %39, %38 ], [ %35, %30 ]
  %43 = getelementptr inbounds nuw i8, ptr %2, i64 %42
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 41
  br i1 %45, label %20, label %24

46:                                               ; preds = %1
  br i1 %4, label %52, label %47

47:                                               ; preds = %46
  %48 = getelementptr inbounds nuw i8, ptr %6, i64 3
  %49 = load i40, ptr %48, align 1
  %50 = and i40 %49, -137977929761
  %51 = icmp eq i40 %50, 383666179657
  br i1 %51, label %53, label %52

52:                                               ; preds = %47, %46
  br label %53

53:                                               ; preds = %52, %47
  %54 = phi i64 [ 3, %52 ], [ 8, %47 ]
  %55 = getelementptr inbounds nuw i8, ptr %6, i64 %54
  br label %56

56:                                               ; preds = %30, %38, %1, %9, %20, %53
  %57 = phi ptr [ %55, %53 ], [ %23, %20 ], [ %11, %9 ], [ %2, %1 ], [ %11, %38 ], [ %11, %30 ]
  %58 = ptrtoint ptr %57 to i64
  %59 = ptrtoint ptr %2 to i64
  %60 = sub i64 %58, %59
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %60
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
  %7 = load i24, ptr %6, align 1
  %8 = and i24 %7, -2105377
  %9 = icmp eq i24 %8, 5128526
  %10 = icmp eq i24 %8, 4607561
  %11 = or i1 %9, %10
  %12 = select i1 %11, i64 0, i64 22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret i64 %12
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
