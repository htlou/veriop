; ModuleID = 'history-eq/c/zstd/5dc0a1d6/new.c'
source_filename = "history-eq/c/zstd/5dc0a1d6/new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @target(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds i8, ptr %3, i64 -32
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %9 = icmp ugt ptr %8, %7
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = load ptr, ptr %10, align 8
  br i1 %9, label %19, label %12

12:                                               ; preds = %6
  tail call void @ZSTD_copy16(ptr noundef %11, ptr noundef %2) #2
  %13 = icmp ugt i64 %1, 16
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = load ptr, ptr %10, align 8
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %18 = add nsw i64 %1, -16
  tail call void @ZSTD_wildcopy(ptr noundef nonnull %16, ptr noundef nonnull %17, i64 noundef %18, i32 noundef 0) #2
  br label %20

19:                                               ; preds = %6
  tail call void @ZSTD_safecopyLiterals(ptr noundef %11, ptr noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %7) #2
  br label %20

20:                                               ; preds = %19, %14, %12
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 %1
  store ptr %23, ptr %21, align 8
  %24 = icmp ugt i64 %1, 65535
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %26, align 8
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %29 = load ptr, ptr %28, align 8
  %30 = ptrtoint ptr %27 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 12
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %34, ptr %35, align 4
  br label %36

36:                                               ; preds = %25, %20
  %37 = trunc i64 %1 to i16
  %38 = load ptr, ptr %0, align 8
  store i16 %37, ptr %38, align 4
  %39 = add i32 %4, 1
  %40 = load ptr, ptr %0, align 8
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 4
  store i32 %39, ptr %41, align 4
  %42 = icmp ugt i64 %5, 65535
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %44, align 8
  %45 = load ptr, ptr %0, align 8
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %47 = load ptr, ptr %46, align 8
  %48 = ptrtoint ptr %45 to i64
  %49 = ptrtoint ptr %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 12
  %52 = trunc i64 %51 to i32
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %52, ptr %53, align 4
  br label %54

54:                                               ; preds = %36, %43
  %55 = trunc i64 %5 to i16
  %56 = load ptr, ptr %0, align 8
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 8
  store i16 %55, ptr %57, align 4
  %58 = load ptr, ptr %0, align 8
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 12
  store ptr %59, ptr %0, align 8
  ret void
}

declare void @ZSTD_copy16(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ZSTD_wildcopy(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @ZSTD_safecopyLiterals(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
