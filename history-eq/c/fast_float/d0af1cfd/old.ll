; ModuleID = 'history-eq/c/fast_float/d0af1cfd/checker_wrap.cpp'
source_filename = "history-eq/c/fast_float/d0af1cfd/checker_wrap.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN10fast_float8int_lutsIvE7chdigitE = comdat any

@_ZN10fast_float8int_lutsIvE7chdigitE = linkonce_odr dso_local local_unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", comdat, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 35) i64 @target_error(i16 noundef zeroext %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  switch i16 %0, label %2 [
    i16 45, label %9
    i16 48, label %8
  ]

2:                                                ; preds = %1
  %3 = tail call i16 @llvm.umin.i16(i16 %0, i16 256)
  %4 = and i16 %3, 254
  %5 = add nsw i16 %4, -58
  %6 = icmp ult i16 %5, -10
  %7 = select i1 %6, i64 22, i64 0
  br label %9

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %2, %1, %8
  %10 = phi i64 [ 22, %1 ], [ 0, %8 ], [ %7, %2 ]
  ret i64 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 -4611686018427387904, 4611686018427387904) i64 @target_consumed(i16 noundef zeroext %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca [1 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #3
  store i16 %0, ptr %2, align 2, !tbaa !5
  switch i16 %0, label %5 [
    i16 45, label %13
    i16 48, label %3
  ]

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 2
  br label %13

5:                                                ; preds = %1
  %6 = load i16, ptr %2, align 2, !tbaa !5
  %7 = tail call i16 @llvm.umin.i16(i16 %6, i16 256)
  %8 = and i16 %7, 254
  %9 = add nsw i16 %8, -58
  %10 = icmp ult i16 %9, -10
  %11 = select i1 %10, i64 0, i64 2
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 %11
  br label %13

13:                                               ; preds = %3, %5, %1
  %14 = phi ptr [ %2, %1 ], [ %4, %3 ], [ %12, %5 ]
  %15 = ptrtoint ptr %14 to i64
  %16 = ptrtoint ptr %2 to i64
  %17 = sub i64 %15, %16
  %18 = ashr exact i64 %17, 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #3
  ret i64 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 65536) i64 @target_value(i16 noundef zeroext %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  switch i16 %0, label %2 [
    i16 45, label %13
    i16 48, label %12
  ]

2:                                                ; preds = %1
  %3 = tail call i16 @llvm.umin.i16(i16 %0, i16 256)
  %4 = and i16 %3, 255
  %5 = add nsw i16 %4, -58
  %6 = icmp ult i16 %5, -10
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = zext nneg i16 %4 to i64
  %9 = getelementptr inbounds nuw [256 x i8], ptr @_ZN10fast_float8int_lutsIvE7chdigitE, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !9
  %11 = zext i8 %10 to i64
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %2, %7, %1, %12
  %14 = phi i64 [ 123, %1 ], [ 0, %12 ], [ %11, %7 ], [ 123, %2 ]
  ret i64 %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!6 = !{!"char16_t", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!7, !7, i64 0}
