; ModuleID = 'history-eq/c/zstd/107c5755/wildcopy.c'
source_filename = "history-eq/c/zstd/107c5755/wildcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @zstd_old_wildcopy(ptr noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %51, label %6

6:                                                ; preds = %3
  %7 = ptrtoint ptr %0 to i64
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = add i64 %2, %9
  %11 = add i64 %9, 8
  %12 = tail call i64 @llvm.umax.i64(i64 %10, i64 %11)
  %13 = xor i64 %9, -1
  %14 = add i64 %12, %13
  %15 = lshr i64 %14, 3
  %16 = add nuw nsw i64 %15, 1
  %17 = icmp ult i64 %14, 56
  %18 = sub i64 %7, %8
  %19 = icmp ult i64 %18, 32
  %20 = or i1 %17, %19
  br i1 %20, label %41, label %21

21:                                               ; preds = %6
  %22 = and i64 %16, 4611686018427387900
  %23 = shl i64 %22, 3
  %24 = getelementptr i8, ptr %1, i64 %23
  %25 = shl i64 %22, 3
  %26 = getelementptr i8, ptr %0, i64 %25
  br label %27

27:                                               ; preds = %27, %21
  %28 = phi i64 [ 0, %21 ], [ %37, %27 ]
  %29 = shl i64 %28, 3
  %30 = getelementptr i8, ptr %1, i64 %29
  %31 = shl i64 %28, 3
  %32 = getelementptr i8, ptr %0, i64 %31
  %33 = getelementptr i8, ptr %30, i64 16
  %34 = load <2 x i64>, ptr %30, align 1
  %35 = load <2 x i64>, ptr %33, align 1
  %36 = getelementptr i8, ptr %32, i64 16
  store <2 x i64> %34, ptr %32, align 1
  store <2 x i64> %35, ptr %36, align 1
  %37 = add nuw i64 %28, 4
  %38 = icmp eq i64 %37, %22
  br i1 %38, label %39, label %27, !llvm.loop !5

39:                                               ; preds = %27
  %40 = icmp eq i64 %16, %22
  br i1 %40, label %51, label %41

41:                                               ; preds = %6, %39
  %42 = phi ptr [ %1, %6 ], [ %24, %39 ]
  %43 = phi ptr [ %0, %6 ], [ %26, %39 ]
  br label %44

44:                                               ; preds = %41, %44
  %45 = phi ptr [ %49, %44 ], [ %42, %41 ]
  %46 = phi ptr [ %48, %44 ], [ %43, %41 ]
  %47 = load i64, ptr %45, align 1
  store i64 %47, ptr %46, align 1
  %48 = getelementptr inbounds nuw i8, ptr %46, i64 8
  %49 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %50 = icmp ult ptr %48, %4
  br i1 %50, label %44, label %51, !llvm.loop !9

51:                                               ; preds = %44, %39, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @zstd_new_wildcopy(ptr noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %5 = tail call i64 @llvm.umax.i64(i64 %2, i64 8)
  %6 = add i64 %5, -1
  %7 = lshr i64 %6, 3
  %8 = add nuw nsw i64 %7, 1
  %9 = icmp ult i64 %2, 57
  %10 = ptrtoint ptr %0 to i64
  %11 = ptrtoint ptr %1 to i64
  %12 = sub i64 %10, %11
  %13 = icmp ult i64 %12, 32
  %14 = or i1 %9, %13
  br i1 %14, label %35, label %15

15:                                               ; preds = %3
  %16 = and i64 %8, 4611686018427387900
  %17 = shl i64 %16, 3
  %18 = getelementptr i8, ptr %0, i64 %17
  %19 = shl i64 %16, 3
  %20 = getelementptr i8, ptr %1, i64 %19
  br label %21

21:                                               ; preds = %21, %15
  %22 = phi i64 [ 0, %15 ], [ %31, %21 ]
  %23 = shl i64 %22, 3
  %24 = getelementptr i8, ptr %0, i64 %23
  %25 = shl i64 %22, 3
  %26 = getelementptr i8, ptr %1, i64 %25
  %27 = getelementptr i8, ptr %26, i64 16
  %28 = load <2 x i64>, ptr %26, align 1
  %29 = load <2 x i64>, ptr %27, align 1
  %30 = getelementptr i8, ptr %24, i64 16
  store <2 x i64> %28, ptr %24, align 1
  store <2 x i64> %29, ptr %30, align 1
  %31 = add nuw i64 %22, 4
  %32 = icmp eq i64 %31, %16
  br i1 %32, label %33, label %21, !llvm.loop !10

33:                                               ; preds = %21
  %34 = icmp eq i64 %8, %16
  br i1 %34, label %45, label %35

35:                                               ; preds = %3, %33
  %36 = phi ptr [ %0, %3 ], [ %18, %33 ]
  %37 = phi ptr [ %1, %3 ], [ %20, %33 ]
  br label %38

38:                                               ; preds = %35, %38
  %39 = phi ptr [ %42, %38 ], [ %36, %35 ]
  %40 = phi ptr [ %43, %38 ], [ %37, %35 ]
  %41 = load i64, ptr %40, align 1
  store i64 %41, ptr %39, align 1
  %42 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 8
  %44 = icmp ult ptr %42, %4
  br i1 %44, label %38, label %45, !llvm.loop !11

45:                                               ; preds = %38, %33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 256) i32 @zstd_old_probe() local_unnamed_addr #1 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 256) i32 @zstd_new_probe() local_unnamed_addr #1 {
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6, !7, !8}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = !{!"llvm.loop.unroll.runtime.disable"}
!9 = distinct !{!9, !6, !7}
!10 = distinct !{!10, !6, !7, !8}
!11 = distinct !{!11, !6, !7}
