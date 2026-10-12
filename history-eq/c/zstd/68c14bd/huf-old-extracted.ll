; ModuleID = 'history-eq/c/zstd/68c14bd/huf-old.ll'
source_filename = "history-eq/wt/zstd-68c14bd-old/lib/compress/huf_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.HUF_CElt_s = type { i16, i8 }

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #0

; Function Attrs: nounwind uwtable
define dso_local i64 @HUF_readCTable(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2, i64 noundef %3, ptr nocapture noundef %4) local_unnamed_addr #1 {
  %6 = alloca [256 x i8], align 16
  %7 = alloca [16 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [14 x i16], align 16
  %11 = alloca [14 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #4
  store i32 0, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #4
  store i32 0, ptr %9, align 4
  %12 = call i64 @HUF_readStats(ptr noundef nonnull %6, i64 noundef 256, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef %2, i64 noundef %3) #4
  %13 = icmp ult i64 %12, -119
  br i1 %13, label %14, label %107

14:                                               ; preds = %5
  %15 = load i32, ptr %8, align 4
  %16 = icmp ugt i32 %15, 12
  br i1 %16, label %107, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %9, align 4
  %19 = load i32, ptr %1, align 4
  %20 = add i32 %19, 1
  %21 = icmp ugt i32 %18, %20
  br i1 %21, label %107, label %22

22:                                               ; preds = %17
  %23 = icmp eq i32 %15, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %22
  %25 = add nuw nsw i32 %15, 1
  %26 = zext nneg i32 %25 to i64
  br label %27

27:                                               ; preds = %27, %24
  %28 = phi i64 [ 1, %24 ], [ %36, %27 ]
  %29 = phi i32 [ 0, %24 ], [ %35, %27 ]
  %30 = getelementptr inbounds nuw [16 x i32], ptr %7, i64 0, i64 %28
  %31 = load i32, ptr %30, align 4
  %32 = trunc i64 %28 to i32
  %33 = add i32 %32, -1
  %34 = shl i32 %31, %33
  %35 = add i32 %34, %29
  store i32 %29, ptr %30, align 4
  %36 = add nuw nsw i64 %28, 1
  %37 = icmp eq i64 %36, %26
  br i1 %37, label %38, label %27, !llvm.loop !5

38:                                               ; preds = %27, %22
  store i32 0, ptr %4, align 4
  %39 = icmp eq i32 %18, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %38
  %41 = trunc nuw i32 %15 to i8
  %42 = add nuw nsw i8 %41, 1
  %43 = zext i32 %18 to i64
  br label %44

44:                                               ; preds = %44, %40
  %45 = phi i64 [ 0, %40 ], [ %55, %44 ]
  %46 = getelementptr inbounds nuw [256 x i8], ptr %6, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1
  %48 = icmp eq i8 %47, 0
  %49 = zext i1 %48 to i32
  %50 = load i32, ptr %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, ptr %4, align 4
  %52 = sub i8 %42, %47
  %53 = select i1 %48, i8 0, i8 %52
  %54 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %0, i64 %45, i32 1
  store i8 %53, ptr %54, align 2
  %55 = add nuw nsw i64 %45, 1
  %56 = icmp eq i64 %55, %43
  br i1 %56, label %57, label %44, !llvm.loop !8

57:                                               ; preds = %44, %38
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %11) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  %58 = icmp eq i32 %18, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %57
  %60 = zext i32 %18 to i64
  br label %61

61:                                               ; preds = %61, %59
  %62 = phi i64 [ 0, %59 ], [ %69, %61 ]
  %63 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %0, i64 %62, i32 1
  %64 = load i8, ptr %63, align 2
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds nuw [14 x i16], ptr %10, i64 0, i64 %65
  %67 = load i16, ptr %66, align 2
  %68 = add i16 %67, 1
  store i16 %68, ptr %66, align 2
  %69 = add nuw nsw i64 %62, 1
  %70 = icmp eq i64 %69, %60
  br i1 %70, label %71, label %61, !llvm.loop !9

71:                                               ; preds = %61, %57
  %72 = add nuw nsw i32 %15, 1
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds nuw [14 x i16], ptr %11, i64 0, i64 %73
  store i16 0, ptr %74, align 2
  %75 = icmp eq i32 %15, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = zext nneg i32 %15 to i64
  br label %82

78:                                               ; preds = %82, %71
  %79 = icmp eq i32 %18, 0
  br i1 %79, label %105, label %80

80:                                               ; preds = %78
  %81 = zext i32 %18 to i64
  br label %94

82:                                               ; preds = %82, %76
  %83 = phi i64 [ %77, %76 ], [ %93, %82 ]
  %84 = phi i32 [ %15, %76 ], [ %91, %82 ]
  %85 = phi i16 [ 0, %76 ], [ %90, %82 ]
  %86 = getelementptr inbounds nuw [14 x i16], ptr %11, i64 0, i64 %83
  store i16 %85, ptr %86, align 2
  %87 = getelementptr inbounds nuw [14 x i16], ptr %10, i64 0, i64 %83
  %88 = load i16, ptr %87, align 2
  %89 = add i16 %88, %85
  %90 = lshr i16 %89, 1
  %91 = add i32 %84, -1
  %92 = icmp eq i32 %91, 0
  %93 = add nsw i64 %83, -1
  br i1 %92, label %78, label %82, !llvm.loop !10

94:                                               ; preds = %94, %80
  %95 = phi i64 [ 0, %80 ], [ %103, %94 ]
  %96 = getelementptr inbounds nuw %struct.HUF_CElt_s, ptr %0, i64 %95
  %97 = getelementptr inbounds nuw i8, ptr %96, i64 2
  %98 = load i8, ptr %97, align 2
  %99 = zext i8 %98 to i64
  %100 = getelementptr inbounds nuw [14 x i16], ptr %11, i64 0, i64 %99
  %101 = load i16, ptr %100, align 2
  %102 = add i16 %101, 1
  store i16 %102, ptr %100, align 2
  store i16 %101, ptr %96, align 2
  %103 = add nuw nsw i64 %95, 1
  %104 = icmp eq i64 %103, %81
  br i1 %104, label %105, label %94, !llvm.loop !11

105:                                              ; preds = %94, %78
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #4
  %106 = add i32 %18, -1
  store i32 %106, ptr %1, align 4
  br label %107

107:                                              ; preds = %105, %17, %14, %5
  %108 = phi i64 [ %12, %105 ], [ %12, %5 ], [ -44, %14 ], [ -48, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #4
  ret i64 %108
}

declare i64 @HUF_readStats(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !6, !7}
!9 = distinct !{!9, !6, !7}
!10 = distinct !{!10, !6, !7}
!11 = distinct !{!11, !6, !7}
