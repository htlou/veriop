; ModuleID = 'history-eq/c/zstd/5d39357b/old.c'
source_filename = "history-eq/c/zstd/5d39357b/old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ZSTD_seqToCodes.LL_Code = internal unnamed_addr constant [64 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\10\11\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18", align 16
@ZSTD_seqToCodes.ML_Code = internal unnamed_addr constant [128 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F  !!\22\22##$$$$%%%%&&&&&&&&''''''''(((((((((((((((())))))))))))))))********************************", align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define dso_local range(i64 0, 281474976710656) i64 @target_one_sequence(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %0 to i64
  %4 = zext i32 %1 to i64
  %5 = add nuw nsw i64 %4, %3
  %6 = icmp samesign ult i64 %5, 131070
  tail call void @llvm.assume(i1 %6)
  %7 = icmp ugt i32 %0, 65534
  %8 = trunc nuw i32 %0 to i16
  %9 = select i1 %7, i16 -1, i16 %8
  %10 = select i1 %7, i32 %0, i32 0
  %11 = icmp ugt i32 %1, 65534
  %12 = trunc nuw i32 %1 to i16
  %13 = select i1 %11, i16 -1, i16 %12
  %14 = select i1 %11, i32 %1, i32 %10
  %15 = zext i16 %9 to i32
  %16 = icmp eq i16 %9, -1
  %17 = select i1 %16, i32 %14, i32 %15
  %18 = icmp ugt i32 %17, 63
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %17, i1 true)
  %21 = trunc nuw nsw i32 %20 to i8
  %22 = sub nuw nsw i8 50, %21
  br label %27

23:                                               ; preds = %2
  %24 = zext nneg i32 %17 to i64
  %25 = getelementptr inbounds nuw [64 x i8], ptr @ZSTD_seqToCodes.LL_Code, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i8 [ %22, %19 ], [ %26, %23 ]
  %29 = zext i16 %13 to i32
  %30 = icmp eq i16 %13, -1
  %31 = select i1 %30, i32 %14, i32 %29
  %32 = icmp ugt i32 %31, 127
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %31, i1 true)
  %35 = trunc nuw nsw i32 %34 to i8
  %36 = sub nuw nsw i8 67, %35
  br label %41

37:                                               ; preds = %27
  %38 = zext nneg i32 %31 to i64
  %39 = getelementptr inbounds nuw [128 x i8], ptr @ZSTD_seqToCodes.ML_Code, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1
  br label %41

41:                                               ; preds = %33, %37
  %42 = phi i8 [ %36, %33 ], [ %40, %37 ]
  %43 = trunc i32 %14 to i16
  %44 = select i1 %30, i16 %43, i16 %13
  %45 = select i1 %16, i16 %43, i16 %9
  %46 = zext i8 %28 to i64
  %47 = shl nuw nsw i64 %46, 40
  %48 = zext i8 %42 to i64
  %49 = shl nuw nsw i64 %48, 32
  %50 = or disjoint i64 %49, %47
  %51 = zext i16 %45 to i64
  %52 = shl nuw nsw i64 %51, 16
  %53 = or disjoint i64 %50, %52
  %54 = zext i16 %44 to i64
  %55 = or disjoint i64 %53, %54
  ret i64 %55
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
