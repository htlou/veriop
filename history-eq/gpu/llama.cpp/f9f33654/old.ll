; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/f9f33654/old.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/f9f33654/old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 16192) i32 @target(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, i8 noundef zeroext %9, i8 noundef zeroext %10, i8 noundef zeroext %11, i32 noundef %12) local_unnamed_addr #0 {
  %14 = alloca [12 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #2
  store i8 %0, ptr %14, align 1
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 1
  store i8 %1, ptr %15, align 1
  %16 = getelementptr inbounds nuw i8, ptr %14, i64 2
  store i8 %2, ptr %16, align 1
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 3
  store i8 %3, ptr %17, align 1
  %18 = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i8 %4, ptr %18, align 1
  %19 = getelementptr inbounds nuw i8, ptr %14, i64 5
  store i8 %5, ptr %19, align 1
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 6
  store i8 %6, ptr %20, align 1
  %21 = getelementptr inbounds nuw i8, ptr %14, i64 7
  store i8 %7, ptr %21, align 1
  %22 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i8 %8, ptr %22, align 1
  %23 = getelementptr inbounds nuw i8, ptr %14, i64 9
  store i8 %9, ptr %23, align 1
  %24 = getelementptr inbounds nuw i8, ptr %14, i64 10
  store i8 %10, ptr %24, align 1
  %25 = getelementptr inbounds nuw i8, ptr %14, i64 11
  store i8 %11, ptr %25, align 1
  %26 = icmp ugt i32 %12, 7
  br i1 %26, label %69, label %27

27:                                               ; preds = %13
  %28 = icmp ult i32 %12, 4
  br i1 %28, label %29, label %41

29:                                               ; preds = %27
  %30 = zext nneg i32 %12 to i64
  %31 = getelementptr inbounds nuw [12 x i8], ptr %14, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1
  %33 = and i8 %32, 63
  %34 = zext nneg i8 %33 to i32
  %35 = or disjoint i32 %12, 4
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds nuw [12 x i8], ptr %14, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, 63
  %40 = zext nneg i8 %39 to i32
  br label %64

41:                                               ; preds = %27
  %42 = add nuw nsw i32 %12, 4
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds nuw [12 x i8], ptr %14, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 15
  %48 = add nsw i32 %12, -4
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds nuw [12 x i8], ptr %14, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1
  %52 = lshr i8 %51, 2
  %53 = and i8 %52, 48
  %54 = zext nneg i8 %53 to i32
  %55 = or disjoint i32 %47, %54
  %56 = lshr i32 %46, 4
  %57 = zext nneg i32 %12 to i64
  %58 = getelementptr inbounds nuw [12 x i8], ptr %14, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1
  %60 = lshr i8 %59, 2
  %61 = and i8 %60, 48
  %62 = zext nneg i8 %61 to i32
  %63 = or disjoint i32 %56, %62
  br label %64

64:                                               ; preds = %41, %29
  %65 = phi i32 [ %34, %29 ], [ %55, %41 ]
  %66 = phi i32 [ %40, %29 ], [ %63, %41 ]
  %67 = shl nuw nsw i32 %66, 8
  %68 = or i32 %67, %65
  br label %69

69:                                               ; preds = %13, %64
  %70 = phi i32 [ %68, %64 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #2
  ret i32 %70
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
