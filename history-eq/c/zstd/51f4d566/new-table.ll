; ModuleID = 'history-eq/c/zstd/51f4d566/new-table.c'
source_filename = "history-eq/c/zstd/51f4d566/new-table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FSE_decode_t = type { i16, i8, i8 }
%union.FSE_decode_t4 = type { i32 }

@LL_defaultDTable = internal unnamed_addr constant [65 x { %struct.FSE_decode_t }] [{ %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 6, i8 1, i8 1 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 0, i8 4 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 16, i8 0, i8 4 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 1, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 3, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 4, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 6, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 7, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 9, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 10, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 12, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 14, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 16, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 18, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 19, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 21, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 22, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 24, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 25, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 26, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 27, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 29, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 31, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 0, i8 4 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 1, i8 4 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 2, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 4, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 5, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 7, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 8, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 10, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 11, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 13, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 16, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 17, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 19, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 20, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 22, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 23, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 25, i8 4 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 16, i8 25, i8 4 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 26, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 28, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 30, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 48, i8 0, i8 4 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 16, i8 1, i8 4 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 2, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 3, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 5, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 6, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 8, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 9, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 11, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 12, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 15, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 17, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 18, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 20, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 21, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 23, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 24, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 35, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 34, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 33, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 32, i8 6 } }], align 16
@ML_defaultDTable = internal unnamed_addr constant [65 x { %struct.FSE_decode_t }] [{ %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 6, i8 1, i8 1 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 0, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 1, i8 4 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 2, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 3, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 5, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 6, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 8, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 10, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 13, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 16, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 19, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 22, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 25, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 28, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 31, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 33, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 35, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 37, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 39, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 41, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 43, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 45, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 16, i8 1, i8 4 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 2, i8 4 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 3, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 4, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 6, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 7, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 9, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 12, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 15, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 18, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 21, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 24, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 27, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 30, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 32, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 34, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 36, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 38, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 40, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 42, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 44, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 1, i8 4 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 48, i8 1, i8 4 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 16, i8 2, i8 4 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 4, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 5, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 7, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 32, i8 8, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 11, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 14, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 17, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 20, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 23, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 26, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 29, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 52, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 51, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 50, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 49, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 48, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 47, i8 6 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 46, i8 6 } }], align 16
@OF_defaultDTable = internal unnamed_addr constant [33 x { %struct.FSE_decode_t }] [{ %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 5, i8 1, i8 1 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 0, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 6, i8 4 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 9, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 15, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 21, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 3, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 7, i8 4 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 12, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 18, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 23, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 5, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 8, i8 4 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 14, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 20, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 2, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 16, i8 7, i8 4 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 11, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 17, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 22, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 4, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 16, i8 8, i8 4 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 13, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 19, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 1, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 16, i8 6, i8 4 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 10, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 16, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 28, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 27, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 26, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 25, i8 5 } }, { %struct.FSE_decode_t } { %struct.FSE_decode_t { i16 0, i8 24, i8 5 } }], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @lookup_LL(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i32 %0, 63
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = add nuw nsw i32 %0, 1
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds nuw [65 x %union.FSE_decode_t4], ptr @LL_defaultDTable, i64 0, i64 %5
  %7 = load i16, ptr %6, align 4
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 2
  %9 = load i8, ptr %8, align 2
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 3
  %11 = load i8, ptr %10, align 1
  %12 = zext i16 %7 to i32
  %13 = zext i8 %9 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or disjoint i32 %14, %12
  %16 = zext i8 %11 to i32
  %17 = shl nuw i32 %16, 24
  %18 = or disjoint i32 %15, %17
  br label %19

19:                                               ; preds = %1, %3
  %20 = phi i32 [ %18, %3 ], [ -1, %1 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @lookup_ML(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i32 %0, 63
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = add nuw nsw i32 %0, 1
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds nuw [65 x %union.FSE_decode_t4], ptr @ML_defaultDTable, i64 0, i64 %5
  %7 = load i16, ptr %6, align 4
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 2
  %9 = load i8, ptr %8, align 2
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 3
  %11 = load i8, ptr %10, align 1
  %12 = zext i16 %7 to i32
  %13 = zext i8 %9 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or disjoint i32 %14, %12
  %16 = zext i8 %11 to i32
  %17 = shl nuw i32 %16, 24
  %18 = or disjoint i32 %15, %17
  br label %19

19:                                               ; preds = %1, %3
  %20 = phi i32 [ %18, %3 ], [ -1, %1 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @lookup_OF(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i32 %0, 31
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = add nuw nsw i32 %0, 1
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds nuw [33 x %union.FSE_decode_t4], ptr @OF_defaultDTable, i64 0, i64 %5
  %7 = load i16, ptr %6, align 4
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 2
  %9 = load i8, ptr %8, align 2
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 3
  %11 = load i8, ptr %10, align 1
  %12 = zext i16 %7 to i32
  %13 = zext i8 %9 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or disjoint i32 %14, %12
  %16 = zext i8 %11 to i32
  %17 = shl nuw i32 %16, 24
  %18 = or disjoint i32 %15, %17
  br label %19

19:                                               ; preds = %1, %3
  %20 = phi i32 [ %18, %3 ], [ -1, %1 ]
  ret i32 %20
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
