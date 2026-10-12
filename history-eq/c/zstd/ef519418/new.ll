; ModuleID = 'history-eq/c/zstd/ef519418/new.c'
source_filename = "history-eq/c/zstd/ef519418/new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ZSTD_getLiteralPrice.LL_Code = internal unnamed_addr constant [64 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\10\11\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18", align 16
@LL_bits = external local_unnamed_addr constant [64 x i8], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @target(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @ZSTD_highbit(i32 noundef %9) #2
  %11 = sub i32 %6, %10
  br label %97

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %16, label %47

16:                                               ; preds = %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %18 = load i32, ptr %17, align 8
  %19 = sub i32 %1, %18
  %20 = zext i32 %18 to i64
  %21 = getelementptr inbounds nuw i8, ptr %14, i64 %20
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %25 = load i32, ptr %24, align 8
  %26 = mul i32 %25, %19
  %27 = add i32 %26, %23
  %28 = icmp eq i32 %1, %18
  br i1 %28, label %45, label %29

29:                                               ; preds = %16
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 284
  %31 = zext i32 %19 to i64
  br label %32

32:                                               ; preds = %32, %29
  %33 = phi i64 [ 0, %29 ], [ %43, %32 ]
  %34 = phi i32 [ %27, %29 ], [ %42, %32 ]
  %35 = getelementptr inbounds nuw i8, ptr %21, i64 %33
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds nuw [256 x i32], ptr %30, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 1
  %41 = tail call i32 @ZSTD_highbit(i32 noundef %40) #2
  %42 = sub i32 %34, %41
  %43 = add nuw nsw i64 %33, 1
  %44 = icmp eq i64 %43, %31
  br i1 %44, label %45, label %32, !llvm.loop !5

45:                                               ; preds = %32, %16
  %46 = phi i32 [ %27, %16 ], [ %42, %32 ]
  store i32 %46, ptr %22, align 4
  store i32 %1, ptr %17, align 8
  br label %71

47:                                               ; preds = %12
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %49 = load i32, ptr %48, align 8
  %50 = mul i32 %49, %1
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 284
  %52 = zext i32 %1 to i64
  br label %53

53:                                               ; preds = %53, %47
  %54 = phi i64 [ 0, %47 ], [ %64, %53 ]
  %55 = phi i32 [ %50, %47 ], [ %63, %53 ]
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 %54
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds nuw [256 x i32], ptr %51, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, 1
  %62 = tail call i32 @ZSTD_highbit(i32 noundef %61) #2
  %63 = sub i32 %55, %62
  %64 = add nuw nsw i64 %54, 1
  %65 = icmp eq i64 %64, %52
  br i1 %65, label %66, label %53, !llvm.loop !8

66:                                               ; preds = %53
  %67 = icmp ugt i32 %1, 11
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  store ptr %2, ptr %13, align 8
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i32 %63, ptr %69, align 4
  %70 = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %1, ptr %70, align 8
  br label %71

71:                                               ; preds = %68, %66, %45
  %72 = phi i32 [ %46, %45 ], [ %63, %68 ], [ %63, %66 ]
  %73 = icmp ugt i32 %1, 63
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = tail call i32 @ZSTD_highbit(i32 noundef %1) #2
  %76 = trunc i32 %75 to i8
  %77 = add i8 %76, 19
  br label %82

78:                                               ; preds = %71
  %79 = zext nneg i32 %1 to i64
  %80 = getelementptr inbounds nuw [64 x i8], ptr @ZSTD_getLiteralPrice.LL_Code, i64 0, i64 %79
  %81 = load i8, ptr %80, align 1
  br label %82

82:                                               ; preds = %78, %74
  %83 = phi i8 [ %77, %74 ], [ %81, %78 ]
  %84 = zext i8 %83 to i64
  %85 = getelementptr inbounds nuw [64 x i8], ptr @LL_bits, i64 0, i64 %84
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = load i32, ptr %0, align 8
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %90 = getelementptr inbounds nuw [64 x i32], ptr %89, i64 0, i64 %84
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, 1
  %93 = tail call i32 @ZSTD_highbit(i32 noundef %92) #2
  %94 = add i32 %72, %87
  %95 = add i32 %94, %88
  %96 = sub i32 %95, %93
  br label %97

97:                                               ; preds = %5, %82
  %98 = phi i32 [ %11, %5 ], [ %96, %82 ]
  ret i32 %98
}

declare i32 @ZSTD_highbit(i32 noundef) local_unnamed_addr #1

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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !6, !7}
