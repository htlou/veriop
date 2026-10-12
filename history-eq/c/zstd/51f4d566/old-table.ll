; ModuleID = 'history-eq/c/zstd/51f4d566/old-table.c'
source_filename = "history-eq/c/zstd/51f4d566/old-table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@LL_reference = internal unnamed_addr constant [64 x i32] [i32 67108864, i32 67108880, i32 83951648, i32 84082688, i32 84148224, i32 84279296, i32 84344832, i32 84475904, i32 84541440, i32 84672512, i32 101580800, i32 84934656, i32 85065728, i32 85131264, i32 85262336, i32 85327872, i32 85458944, i32 85524512, i32 85590016, i32 102432768, i32 102563840, i32 102694912, i32 67108896, i32 67174400, i32 84017152, i32 84148256, i32 84213760, i32 84344864, i32 84410368, i32 84541472, i32 84606976, i32 101515264, i32 84934688, i32 85000192, i32 85131296, i32 85196800, i32 85327904, i32 85393408, i32 68747264, i32 68747280, i32 85590048, i32 102498304, i32 102629376, i32 67108912, i32 67174416, i32 84017184, i32 84082720, i32 84213792, i32 84279328, i32 84410400, i32 84475936, i32 84607008, i32 84672544, i32 101646336, i32 85000224, i32 85065760, i32 85196832, i32 85262368, i32 85393440, i32 85458976, i32 102957056, i32 102891520, i32 102825984, i32 102760448], align 16
@ML_reference = internal unnamed_addr constant [64 x i32] [i32 100663296, i32 67174400, i32 84017184, i32 84082688, i32 84213760, i32 84279296, i32 84410368, i32 101318656, i32 101515264, i32 101711872, i32 101908480, i32 102105088, i32 102301696, i32 102498304, i32 102694912, i32 102825984, i32 102957056, i32 103088128, i32 103219200, i32 103350272, i32 103481344, i32 103612416, i32 67174416, i32 67239936, i32 84082720, i32 84148224, i32 84279328, i32 84344832, i32 101253120, i32 101449728, i32 101646336, i32 101842944, i32 102039552, i32 102236160, i32 102432768, i32 102629376, i32 102760448, i32 102891520, i32 103022592, i32 103153664, i32 103284736, i32 103415808, i32 103546880, i32 67174432, i32 67174448, i32 67239952, i32 84148256, i32 84213792, i32 84344864, i32 84410400, i32 101384192, i32 101580800, i32 101777408, i32 101974016, i32 102170624, i32 102367232, i32 102563840, i32 104071168, i32 104005632, i32 103940096, i32 103874560, i32 103809024, i32 103743488, i32 103677952], align 16
@OF_reference = internal unnamed_addr constant [32 x i32] [i32 83886080, i32 67502080, i32 84475904, i32 84869120, i32 85262336, i32 84082688, i32 67567616, i32 84672512, i32 85065728, i32 85393408, i32 84213760, i32 67633152, i32 84803584, i32 85196800, i32 84017152, i32 67567632, i32 84606976, i32 85000192, i32 85327872, i32 84148224, i32 67633168, i32 84738048, i32 85131264, i32 83951616, i32 67502096, i32 84541440, i32 84934656, i32 85721088, i32 85655552, i32 85590016, i32 85524480, i32 85458944], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @lookup_LL(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult i32 %0, 64
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds nuw [64 x i32], ptr @LL_reference, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -1, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @lookup_ML(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult i32 %0, 64
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds nuw [64 x i32], ptr @ML_reference, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -1, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @lookup_OF(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult i32 %0, 32
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds nuw [32 x i32], ptr @OF_reference, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -1, %1 ]
  ret i32 %8
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
