; ModuleID = 'history-eq/cpp/simdjson/96462aec/prefix.cpp'
source_filename = "history-eq/cpp/simdjson/96462aec/prefix.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.State = type { i64, i8, i8 }

; Function Attrs: mustprogress noinline uwtable
define dso_local i64 @target_value(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.State, align 8
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = call { i64, i64 } @_ZL6prefixh(i8 noundef zeroext %4)
  %6 = bitcast %struct.State* %3 to { i64, i64 }*
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  %8 = extractvalue { i64, i64 } %5, 0
  store i64 %8, i64* %7, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  %10 = extractvalue { i64, i64 } %5, 1
  store i64 %10, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %3, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  ret i64 %12
}

; Function Attrs: mustprogress noinline uwtable
define internal { i64, i64 } @_ZL6prefixh(i8 noundef zeroext %0) #0 {
  %2 = alloca %struct.State, align 8
  %3 = alloca i8, align 1
  %4 = alloca [2 x i8], align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %8 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %9 = load i8, i8* %3, align 1
  store i8 %9, i8* %8, align 1
  %10 = getelementptr inbounds i8, i8* %8, i64 1
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  store i8* %11, i8** %5, align 8
  store i64 0, i64* %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = call noundef zeroext i1 @_ZL11parse_digithRm(i8 noundef zeroext %13, i64* noundef nonnull align 8 dereferenceable(8) %6)
  %15 = zext i1 %14 to i32
  %16 = load i8*, i8** %5, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %7, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %2, i32 0, i32 0
  %23 = load i64, i64* %6, align 8
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds %struct.State, %struct.State* %2, i32 0, i32 1
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %24, align 8
  %31 = getelementptr inbounds %struct.State, %struct.State* %2, i32 0, i32 2
  %32 = load i8, i8* %7, align 1
  %33 = trunc i8 %32 to i1
  %34 = zext i1 %33 to i8
  store i8 %34, i8* %31, align 1
  %35 = bitcast %struct.State* %2 to { i64, i64 }*
  %36 = load { i64, i64 }, { i64, i64 }* %35, align 8
  ret { i64, i64 } %36
}

; Function Attrs: mustprogress noinline uwtable
define dso_local zeroext i8 @target_consumed(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.State, align 8
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = call { i64, i64 } @_ZL6prefixh(i8 noundef zeroext %4)
  %6 = bitcast %struct.State* %3 to { i64, i64 }*
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  %8 = extractvalue { i64, i64 } %5, 0
  store i64 %8, i64* %7, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  %10 = extractvalue { i64, i64 } %5, 1
  store i64 %10, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %3, i32 0, i32 1
  %12 = load i8, i8* %11, align 8
  ret i8 %12
}

; Function Attrs: mustprogress noinline uwtable
define dso_local zeroext i1 @target_leading_zero(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.State, align 8
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = call { i64, i64 } @_ZL6prefixh(i8 noundef zeroext %4)
  %6 = bitcast %struct.State* %3 to { i64, i64 }*
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  %8 = extractvalue { i64, i64 } %5, 0
  store i64 %8, i64* %7, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  %10 = extractvalue { i64, i64 } %5, 1
  store i64 %10, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %3, i32 0, i32 2
  %12 = load i8, i8* %11, align 1
  %13 = trunc i8 %12 to i1
  ret i1 %13
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef zeroext i1 @_ZL11parse_digithRm(i8 noundef zeroext %0, i64* noundef nonnull align 8 dereferenceable(8) %1) #1 {
  %3 = alloca i1, align 1
  %4 = alloca i8, align 1
  %5 = alloca i64*, align 8
  %6 = alloca i8, align 1
  store i8 %0, i8* %4, align 1
  store i64* %1, i64** %5, align 8
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i32
  %9 = sub nsw i32 %8, 48
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %6, align 1
  %11 = load i8, i8* %6, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp sgt i32 %12, 9
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i1 false, i1* %3, align 1
  br label %23

15:                                               ; preds = %2
  %16 = load i64*, i64** %5, align 8
  %17 = load i64, i64* %16, align 8
  %18 = mul i64 10, %17
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i64
  %21 = add i64 %18, %20
  %22 = load i64*, i64** %5, align 8
  store i64 %21, i64* %22, align 8
  store i1 true, i1* %3, align 1
  br label %23

23:                                               ; preds = %15, %14
  %24 = load i1, i1* %3, align 1
  ret i1 %24
}

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
