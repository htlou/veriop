; ModuleID = 'history-eq/c/zstd/5d39357b/new.c'
source_filename = "history-eq/c/zstd/5d39357b/new.c"
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
  %7 = and i32 %0, 65472
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = and i32 %0, 65535
  %11 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %10, i1 true)
  %12 = trunc nuw nsw i32 %11 to i8
  %13 = sub nuw nsw i8 50, %12
  br label %19

14:                                               ; preds = %2
  %15 = and i32 %0, 63
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds nuw [64 x i8], ptr @ZSTD_seqToCodes.LL_Code, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i8 [ %13, %9 ], [ %18, %14 ]
  %21 = and i32 %1, 65408
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = and i32 %1, 65535
  %25 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %24, i1 true)
  %26 = trunc nuw nsw i32 %25 to i8
  %27 = sub nuw nsw i8 67, %26
  br label %34

28:                                               ; preds = %19
  %29 = and i32 %1, 127
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds nuw [128 x i8], ptr @ZSTD_seqToCodes.ML_Code, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1
  %33 = and i32 %1, 127
  br label %34

34:                                               ; preds = %28, %23
  %35 = phi i32 [ %33, %28 ], [ %24, %23 ]
  %36 = phi i8 [ %32, %28 ], [ %27, %23 ]
  %37 = icmp ugt i32 %0, 65535
  %38 = icmp ult i32 %1, 65536
  %39 = zext i8 %20 to i64
  %40 = shl nuw nsw i64 %39, 40
  %41 = select i1 %37, i64 38482906972160, i64 %40
  %42 = zext i8 %36 to i64
  %43 = shl nuw nsw i64 %42, 32
  %44 = select i1 %38, i64 %43, i64 223338299392
  %45 = or disjoint i64 %41, %44
  %46 = shl i32 %0, 16
  %47 = zext i32 %46 to i64
  %48 = or disjoint i64 %45, %47
  %49 = zext nneg i32 %35 to i64
  %50 = or disjoint i64 %48, %49
  ret i64 %50
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
