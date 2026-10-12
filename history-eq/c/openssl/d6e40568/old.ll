; ModuleID = 'history-eq/c/openssl/d6e40568/hex.old.c'
source_filename = "history-eq/c/openssl/d6e40568/hex.old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02X:\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @BIO_hex_string(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp slt i32 %4, 1
  br i1 %6, label %51, label %7

7:                                                ; preds = %5
  %8 = add nsw i32 %4, -1
  %9 = icmp eq i32 %4, 1
  br i1 %9, label %45, label %10

10:                                               ; preds = %7
  %11 = zext nneg i32 %8 to i64
  %12 = load i8, ptr %3, align 1, !tbaa !5
  %13 = zext i8 %12 to i32
  %14 = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %13) #2
  %15 = srem i32 1, %2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.3) #2
  br label %19

19:                                               ; preds = %17, %10
  %20 = icmp eq i32 %8, 1
  br i1 %20, label %40, label %21

21:                                               ; preds = %19, %37
  %22 = phi i64 [ %38, %37 ], [ 1, %19 ]
  %23 = phi i32 [ %33, %37 ], [ %15, %19 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %1, ptr noundef nonnull @.str.1) #2
  br label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 %22
  %29 = load i8, ptr %28, align 1, !tbaa !5
  %30 = zext i8 %29 to i32
  %31 = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %30) #2
  %32 = add nsw i32 %23, 1
  %33 = srem i32 %32, %2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.3) #2
  br label %37

37:                                               ; preds = %27, %35
  %38 = add nuw nsw i64 %22, 1
  %39 = icmp eq i64 %38, %11
  br i1 %39, label %40, label %21, !llvm.loop !8

40:                                               ; preds = %37, %19
  %41 = phi i32 [ %15, %19 ], [ %33, %37 ]
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %1, ptr noundef nonnull @.str.1) #2
  br label %45

45:                                               ; preds = %7, %43, %40
  %46 = zext nneg i32 %8 to i64
  %47 = getelementptr inbounds nuw i8, ptr %3, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !5
  %49 = zext i8 %48 to i32
  %50 = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %49) #2
  br label %51

51:                                               ; preds = %5, %45
  ret i32 1
}

declare i32 @BIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.peeled.count", i32 1}
