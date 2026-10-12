; ModuleID = 'history-eq/c/zstd/f36da5b4/reduce_model.c'
source_filename = "history-eq/c/zstd/f36da5b4/reduce_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @old16(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i64 [ 0, %2 ], [ %8, %3 ]
  %5 = getelementptr inbounds nuw i32, ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @llvm.usub.sat.i32(i32 %6, i32 %1)
  store i32 %7, ptr %5, align 4
  %8 = add nuw nsw i64 %4, 1
  %9 = icmp eq i64 %8, 16
  br i1 %9, label %10, label %3

10:                                               ; preds = %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @new16(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  br label %4

3:                                                ; preds = %4
  ret void

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %9, %4 ]
  %6 = getelementptr inbounds nuw i32, ptr %0, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.usub.sat.i32(i32 %7, i32 %1)
  store i32 %8, ptr %6, align 4
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 16
  br i1 %10, label %3, label %4
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @old32(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i64 [ 0, %2 ], [ %8, %3 ]
  %5 = getelementptr inbounds nuw i32, ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @llvm.usub.sat.i32(i32 %6, i32 %1)
  store i32 %7, ptr %5, align 4
  %8 = add nuw nsw i64 %4, 1
  %9 = icmp eq i64 %8, 32
  br i1 %9, label %10, label %3

10:                                               ; preds = %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @new32(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %2, %16
  %4 = phi i32 [ 0, %2 ], [ %18, %16 ]
  %5 = phi i32 [ 0, %2 ], [ %17, %16 ]
  %6 = sext i32 %5 to i64
  %7 = add i32 %5, 16
  br label %8

8:                                                ; preds = %3, %8
  %9 = phi i64 [ %6, %3 ], [ %13, %8 ]
  %10 = getelementptr inbounds i32, ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.usub.sat.i32(i32 %11, i32 %1)
  store i32 %12, ptr %10, align 4
  %13 = add nsw i64 %9, 1
  %14 = trunc i64 %13 to i32
  %15 = icmp eq i32 %7, %14
  br i1 %15, label %16, label %8

16:                                               ; preds = %8
  %17 = trunc nsw i64 %13 to i32
  %18 = add nuw nsw i32 %4, 1
  %19 = icmp eq i32 %4, 0
  br i1 %19, label %3, label %20

20:                                               ; preds = %16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

