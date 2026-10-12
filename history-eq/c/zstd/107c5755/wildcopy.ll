; ModuleID = 'wildcopy.c'
source_filename = "wildcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.zstd_old_probe.src = private unnamed_addr constant [8 x i8] c"\01\00\00\00\00\00\00\00", align 1
@__const.zstd_new_probe.src = private unnamed_addr constant [8 x i8] c"\01\00\00\00\00\00\00\00", align 1

; Function Attrs: noinline nounwind
define dso_local void @zstd_old_wildcopy(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %10 = load ptr, ptr %5, align 8
  store ptr %10, ptr %7, align 8
  %11 = load ptr, ptr %4, align 8
  store ptr %11, ptr %8, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = load i64, ptr %6, align 8
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 %13
  store ptr %14, ptr %9, align 8
  br label %15

15:                                               ; preds = %19, %3
  %16 = load ptr, ptr %8, align 8
  %17 = load ptr, ptr %9, align 8
  %18 = icmp ult ptr %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load ptr, ptr %8, align 8
  %21 = load ptr, ptr %7, align 8
  call void @ZSTD_copy8(ptr noundef %20, ptr noundef %21) #4
  %22 = load ptr, ptr %8, align 8
  %23 = getelementptr inbounds i8, ptr %22, i64 8
  store ptr %23, ptr %8, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = getelementptr inbounds i8, ptr %24, i64 8
  store ptr %25, ptr %7, align 8
  br label %15, !llvm.loop !5

26:                                               ; preds = %15
  ret void
}

; Function Attrs: noinline nounwind
define internal void @ZSTD_copy8(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @memcpy(ptr noundef %5, ptr noundef %6, i64 noundef 8) #5
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @zstd_new_wildcopy(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %10 = load ptr, ptr %5, align 8
  store ptr %10, ptr %7, align 8
  %11 = load ptr, ptr %4, align 8
  store ptr %11, ptr %8, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = load i64, ptr %6, align 8
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 %13
  store ptr %14, ptr %9, align 8
  br label %15

15:                                               ; preds = %22, %3
  %16 = load ptr, ptr %8, align 8
  %17 = load ptr, ptr %7, align 8
  call void @ZSTD_copy8(ptr noundef %16, ptr noundef %17) #4
  %18 = load ptr, ptr %8, align 8
  %19 = getelementptr inbounds i8, ptr %18, i64 8
  store ptr %19, ptr %8, align 8
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr inbounds i8, ptr %20, i64 8
  store ptr %21, ptr %7, align 8
  br label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %8, align 8
  %24 = load ptr, ptr %9, align 8
  %25 = icmp ult ptr %23, %24
  br i1 %25, label %15, label %26, !llvm.loop !7

26:                                               ; preds = %22
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @zstd_old_probe() #0 {
  %1 = alloca [8 x i8], align 1
  %2 = alloca [8 x i8], align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 @__const.zstd_old_probe.src, i64 8, i1 false)
  call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 8, i1 false)
  %3 = getelementptr inbounds [8 x i8], ptr %2, i64 0, i64 0
  %4 = getelementptr inbounds [8 x i8], ptr %1, i64 0, i64 0
  call void @zstd_old_wildcopy(ptr noundef %3, ptr noundef %4, i64 noundef 0) #4
  %5 = getelementptr inbounds [8 x i8], ptr %2, i64 0, i64 0
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  ret i32 %7
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind
define dso_local i32 @zstd_new_probe() #0 {
  %1 = alloca [8 x i8], align 1
  %2 = alloca [8 x i8], align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 @__const.zstd_new_probe.src, i64 8, i1 false)
  call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 8, i1 false)
  %3 = getelementptr inbounds [8 x i8], ptr %2, i64 0, i64 0
  %4 = getelementptr inbounds [8 x i8], ptr %1, i64 0, i64 0
  call void @zstd_new_wildcopy(ptr noundef %3, ptr noundef %4, i64 noundef 0) #4
  %5 = getelementptr inbounds [8 x i8], ptr %2, i64 0, i64 0
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind
declare ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #3

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
