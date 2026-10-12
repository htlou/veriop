; ModuleID = 'history-eq/c/fast_float/9a424bde/wrap.cpp'
source_filename = "history-eq/c/fast_float/9a424bde/wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_wrap.cpp, ptr null }]

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @target_is_integer(i8 noundef zeroext %0) local_unnamed_addr #3 {
  %2 = add i8 %0, -48
  %3 = icmp ult i8 %2, 10
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @target_parser_valid(i8 noundef zeroext %0) local_unnamed_addr #3 {
  switch i8 %0, label %2 [
    i8 45, label %6
    i8 43, label %6
  ]

2:                                                ; preds = %1
  %3 = add i8 %0, -48
  %4 = icmp ult i8 %3, 10
  %5 = zext i1 %4 to i32
  br label %6

6:                                                ; preds = %2, %1, %1
  %7 = phi i32 [ 0, %1 ], [ 0, %1 ], [ %5, %2 ]
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 -48, 208) i64 @target_parser_mantissa(i8 noundef zeroext %0) local_unnamed_addr #3 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  switch i8 %0, label %3 [
    i8 45, label %29
    i8 43, label %29
  ]

3:                                                ; preds = %1
  %4 = add i8 %0, -48
  %5 = icmp ult i8 %4, 10
  br i1 %5, label %6, label %29

6:                                                ; preds = %3
  %7 = zext nneg i8 %0 to i64
  %8 = add nsw i64 %7, -48
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %2 to i64
  %12 = xor i64 %11, -1
  %13 = add i64 %10, %12
  %14 = trunc i64 %13 to i32
  %15 = icmp sgt i32 %14, 18
  br i1 %15, label %16, label %28

16:                                               ; preds = %6, %19
  %17 = phi i8 [ %21, %19 ], [ %0, %6 ]
  %18 = phi ptr [ %20, %19 ], [ %2, %6 ]
  switch i8 %17, label %22 [
    i8 48, label %19
    i8 46, label %19
  ]

19:                                               ; preds = %16, %16
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !5, !noalias !8
  br label %16, !llvm.loop !11

22:                                               ; preds = %16
  %23 = ptrtoint ptr %18 to i64
  %24 = sub i64 %11, %23
  %25 = trunc i64 %24 to i32
  %26 = add i32 %25, %14
  %27 = icmp slt i32 %26, 19
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %6
  br label %29

29:                                               ; preds = %3, %22, %1, %1, %28
  %30 = phi i64 [ %8, %28 ], [ -1, %1 ], [ -1, %1 ], [ -1, %22 ], [ -1, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  ret i64 %30
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_wrap.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #6
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_12chars_formatE: argument 0"}
!10 = distinct !{!10, !"_ZN10fast_float19parse_number_stringEPKcS1_NS_12chars_formatE"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
