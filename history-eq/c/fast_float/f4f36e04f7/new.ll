; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/fast_float/f4f36e04f7/new.cpp'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/fast_float/f4f36e04f7/new.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i32 } @parse4(i64 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = zext i8 %1 to i32
  %10 = zext i8 %2 to i32
  %11 = shl nuw nsw i32 %10, 8
  %12 = or disjoint i32 %11, %9
  %13 = zext i8 %3 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = zext i8 %4 to i32
  %16 = shl nuw i32 %15, 24
  %17 = or disjoint i32 %16, %12
  %18 = or disjoint i32 %17, %14
  %19 = add i32 %18, 1179010630
  %20 = add i32 %18, -808464432
  %21 = or i32 %19, %20
  %22 = and i32 %21, -2139062144
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %8
  %25 = mul i64 %0, 10000
  %26 = mul i32 %20, 10
  %27 = lshr i32 %20, 8
  %28 = add i32 %26, %27
  %29 = and i32 %28, 16711935
  %30 = mul i32 %29, 6553601
  %31 = lshr i32 %30, 16
  %32 = zext nneg i32 %31 to i64
  %33 = add i64 %25, %32
  br label %67

34:                                               ; preds = %8
  %35 = sext i8 %1 to i32
  %36 = add nsw i32 %35, -48
  %37 = icmp ult i32 %36, 10
  br i1 %37, label %38, label %67

38:                                               ; preds = %34
  %39 = add i8 %1, -48
  %40 = mul i64 %0, 10
  %41 = zext i8 %39 to i64
  %42 = add i64 %40, %41
  %43 = sext i8 %2 to i32
  %44 = add nsw i32 %43, -48
  %45 = icmp ult i32 %44, 10
  br i1 %45, label %46, label %67

46:                                               ; preds = %38
  %47 = add i8 %2, -48
  %48 = mul i64 %42, 10
  %49 = zext i8 %47 to i64
  %50 = add i64 %48, %49
  %51 = sext i8 %3 to i32
  %52 = add nsw i32 %51, -48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %54, label %67

54:                                               ; preds = %46
  %55 = add i8 %3, -48
  %56 = mul i64 %50, 10
  %57 = zext i8 %55 to i64
  %58 = add i64 %56, %57
  %59 = sext i8 %4 to i32
  %60 = add nsw i32 %59, -48
  %61 = icmp ult i32 %60, 10
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = add i8 %4, -48
  %64 = mul i64 %58, 10
  %65 = zext i8 %63 to i64
  %66 = add i64 %64, %65
  br label %67

67:                                               ; preds = %34, %38, %46, %54, %62, %24
  %68 = phi i64 [ %33, %24 ], [ %0, %34 ], [ %42, %38 ], [ %50, %46 ], [ %58, %54 ], [ %66, %62 ]
  %69 = phi i32 [ 4, %24 ], [ 0, %34 ], [ 1, %38 ], [ 2, %46 ], [ 3, %54 ], [ 4, %62 ]
  %70 = insertvalue { i64, i32 } poison, i64 %68, 0
  %71 = insertvalue { i64, i32 } %70, i32 %69, 1
  ret { i64, i32 } %71
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i32 } @parse5(i64 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = alloca [7 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %9) #2
  store i8 %1, ptr %9, align 4, !tbaa !5
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 1
  store i8 %2, ptr %10, align 1, !tbaa !5
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 2
  store i8 %3, ptr %11, align 2, !tbaa !5
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 3
  store i8 %4, ptr %12, align 1, !tbaa !5
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i8 %5, ptr %13, align 4, !tbaa !5
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 5
  store i8 %6, ptr %14, align 1, !tbaa !5
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 6
  store i8 %7, ptr %15, align 2, !tbaa !5
  %16 = load i32, ptr %9, align 4
  %17 = add i32 %16, 1179010630
  %18 = add i32 %16, -808464432
  %19 = or i32 %17, %18
  %20 = and i32 %19, -2139062144
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %8
  %23 = mul i64 %0, 10000
  %24 = mul i32 %18, 10
  %25 = lshr i32 %18, 8
  %26 = add i32 %24, %25
  %27 = and i32 %26, 16711935
  %28 = mul i32 %27, 6553601
  %29 = lshr i32 %28, 16
  %30 = zext nneg i32 %29 to i64
  %31 = add i64 %23, %30
  br label %32

32:                                               ; preds = %8, %22
  %33 = phi i64 [ 0, %8 ], [ 4, %22 ]
  %34 = phi i64 [ %0, %8 ], [ %31, %22 ]
  br label %35

35:                                               ; preds = %32, %43
  %36 = phi i64 [ %45, %43 ], [ %33, %32 ]
  %37 = phi i64 [ %48, %43 ], [ %34, %32 ]
  %38 = getelementptr inbounds nuw i8, ptr %9, i64 %36
  %39 = load i8, ptr %38, align 1, !tbaa !5
  %40 = sext i8 %39 to i32
  %41 = add nsw i32 %40, -48
  %42 = icmp ult i32 %41, 10
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = add i8 %39, -48
  %45 = add nuw nsw i64 %36, 1
  %46 = mul i64 %37, 10
  %47 = zext i8 %44 to i64
  %48 = add i64 %46, %47
  %49 = icmp eq i64 %45, 5
  br i1 %49, label %50, label %35, !llvm.loop !8

50:                                               ; preds = %43, %35
  %51 = phi i64 [ %48, %43 ], [ %37, %35 ]
  %52 = phi i64 [ 5, %43 ], [ %36, %35 ]
  %53 = trunc i64 %52 to i32
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %9) #2
  %54 = insertvalue { i64, i32 } poison, i64 %51, 0
  %55 = insertvalue { i64, i32 } %54, i32 %53, 1
  ret { i64, i32 } %55
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

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
