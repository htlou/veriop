; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/73ab7599/old.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/73ab7599/old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Scales = type { [6 x i16] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_q4_0(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.Scales, align 2
  %4 = alloca { i64, i32 }, align 2
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca [2 x i16], align 2
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 0
  store i64 %0, ptr %9, align 2
  %10 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 1
  store i32 %1, ptr %10, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %3, ptr align 2 %4, i64 12, i1 false)
  store i32 0, ptr %5, align 4
  %11 = getelementptr inbounds nuw %struct.Scales, ptr %3, i32 0, i32 0
  %12 = getelementptr inbounds [6 x i16], ptr %11, i64 0, i64 0
  store ptr %12, ptr %6, align 8
  store i32 0, ptr %8, align 4
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds i16, ptr %13, i64 0
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 16191
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 0
  store i16 %18, ptr %19, align 2
  %20 = load ptr, ptr %6, align 8
  %21 = getelementptr inbounds i16, ptr %20, i64 2
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 16191
  %25 = trunc i32 %24 to i16
  %26 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1
  store i16 %25, ptr %26, align 2
  %27 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 0
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = shl i32 %32, 16
  %34 = or i32 %29, %33
  ret i32 %34
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_q4_1(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.Scales, align 2
  %4 = alloca { i64, i32 }, align 2
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca [2 x i16], align 2
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 0
  store i64 %0, ptr %9, align 2
  %10 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 1
  store i32 %1, ptr %10, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %3, ptr align 2 %4, i64 12, i1 false)
  store i32 2, ptr %5, align 4
  %11 = getelementptr inbounds nuw %struct.Scales, ptr %3, i32 0, i32 0
  %12 = getelementptr inbounds [6 x i16], ptr %11, i64 0, i64 0
  store ptr %12, ptr %6, align 8
  store i32 1, ptr %8, align 4
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds i16, ptr %13, i64 1
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 16191
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 0
  store i16 %18, ptr %19, align 2
  %20 = load ptr, ptr %6, align 8
  %21 = getelementptr inbounds i16, ptr %20, i64 3
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 16191
  %25 = trunc i32 %24 to i16
  %26 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1
  store i16 %25, ptr %26, align 2
  %27 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 0
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = shl i32 %32, 16
  %34 = or i32 %29, %33
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_q4_2(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.Scales, align 2
  %4 = alloca { i64, i32 }, align 2
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca [2 x i16], align 2
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 0
  store i64 %0, ptr %9, align 2
  %10 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 1
  store i32 %1, ptr %10, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %3, ptr align 2 %4, i64 12, i1 false)
  store i32 4, ptr %5, align 4
  %11 = getelementptr inbounds nuw %struct.Scales, ptr %3, i32 0, i32 0
  %12 = getelementptr inbounds [6 x i16], ptr %11, i64 0, i64 0
  store ptr %12, ptr %6, align 8
  store i32 2, ptr %8, align 4
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds i16, ptr %13, i64 4
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = ashr i32 %16, 0
  %18 = and i32 %17, 3855
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds i16, ptr %19, i64 0
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 49344
  %24 = ashr i32 %23, 2
  %25 = or i32 %18, %24
  %26 = trunc i32 %25 to i16
  %27 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 0
  store i16 %26, ptr %27, align 2
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr inbounds i16, ptr %28, i64 4
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = ashr i32 %31, 4
  %33 = and i32 %32, 3855
  %34 = load ptr, ptr %6, align 8
  %35 = getelementptr inbounds i16, ptr %34, i64 2
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 49344
  %39 = ashr i32 %38, 2
  %40 = or i32 %33, %39
  %41 = trunc i32 %40 to i16
  %42 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1
  store i16 %41, ptr %42, align 2
  %43 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 0
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  %46 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1
  %47 = load i16, ptr %46, align 2
  %48 = zext i16 %47 to i32
  %49 = shl i32 %48, 16
  %50 = or i32 %45, %49
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_q4_3(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.Scales, align 2
  %4 = alloca { i64, i32 }, align 2
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca [2 x i16], align 2
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 0
  store i64 %0, ptr %9, align 2
  %10 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 1
  store i32 %1, ptr %10, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %3, ptr align 2 %4, i64 12, i1 false)
  store i32 6, ptr %5, align 4
  %11 = getelementptr inbounds nuw %struct.Scales, ptr %3, i32 0, i32 0
  %12 = getelementptr inbounds [6 x i16], ptr %11, i64 0, i64 0
  store ptr %12, ptr %6, align 8
  store i32 3, ptr %8, align 4
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds i16, ptr %13, i64 5
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = ashr i32 %16, 0
  %18 = and i32 %17, 3855
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds i16, ptr %19, i64 1
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 49344
  %24 = ashr i32 %23, 2
  %25 = or i32 %18, %24
  %26 = trunc i32 %25 to i16
  %27 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 0
  store i16 %26, ptr %27, align 2
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr inbounds i16, ptr %28, i64 5
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = ashr i32 %31, 4
  %33 = and i32 %32, 3855
  %34 = load ptr, ptr %6, align 8
  %35 = getelementptr inbounds i16, ptr %34, i64 3
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 49344
  %39 = ashr i32 %38, 2
  %40 = or i32 %33, %39
  %41 = trunc i32 %40 to i16
  %42 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1
  store i16 %41, ptr %42, align 2
  %43 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 0
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  %46 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1
  %47 = load i16, ptr %46, align 2
  %48 = zext i16 %47 to i32
  %49 = shl i32 %48, 16
  %50 = or i32 %45, %49
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_q5_0(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.Scales, align 2
  %4 = alloca { i64, i32 }, align 2
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca [2 x i16], align 2
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 0
  store i64 %0, ptr %9, align 2
  %10 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 1
  store i32 %1, ptr %10, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %3, ptr align 2 %4, i64 12, i1 false)
  store i32 0, ptr %5, align 4
  %11 = getelementptr inbounds nuw %struct.Scales, ptr %3, i32 0, i32 0
  %12 = getelementptr inbounds [6 x i16], ptr %11, i64 0, i64 0
  store ptr %12, ptr %6, align 8
  store i32 0, ptr %8, align 4
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds i16, ptr %13, i64 0
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 16191
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 0
  store i16 %18, ptr %19, align 2
  %20 = load ptr, ptr %6, align 8
  %21 = getelementptr inbounds i16, ptr %20, i64 2
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 16191
  %25 = trunc i32 %24 to i16
  %26 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1
  store i16 %25, ptr %26, align 2
  %27 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 0
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = shl i32 %32, 16
  %34 = or i32 %29, %33
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_q5_1(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.Scales, align 2
  %4 = alloca { i64, i32 }, align 2
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca [2 x i16], align 2
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 0
  store i64 %0, ptr %9, align 2
  %10 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 1
  store i32 %1, ptr %10, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %3, ptr align 2 %4, i64 12, i1 false)
  store i32 2, ptr %5, align 4
  %11 = getelementptr inbounds nuw %struct.Scales, ptr %3, i32 0, i32 0
  %12 = getelementptr inbounds [6 x i16], ptr %11, i64 0, i64 0
  store ptr %12, ptr %6, align 8
  store i32 1, ptr %8, align 4
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds i16, ptr %13, i64 1
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 16191
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 0
  store i16 %18, ptr %19, align 2
  %20 = load ptr, ptr %6, align 8
  %21 = getelementptr inbounds i16, ptr %20, i64 3
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 16191
  %25 = trunc i32 %24 to i16
  %26 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1
  store i16 %25, ptr %26, align 2
  %27 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 0
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = shl i32 %32, 16
  %34 = or i32 %29, %33
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_q5_2(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.Scales, align 2
  %4 = alloca { i64, i32 }, align 2
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca [2 x i16], align 2
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 0
  store i64 %0, ptr %9, align 2
  %10 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 1
  store i32 %1, ptr %10, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %3, ptr align 2 %4, i64 12, i1 false)
  store i32 4, ptr %5, align 4
  %11 = getelementptr inbounds nuw %struct.Scales, ptr %3, i32 0, i32 0
  %12 = getelementptr inbounds [6 x i16], ptr %11, i64 0, i64 0
  store ptr %12, ptr %6, align 8
  store i32 2, ptr %8, align 4
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds i16, ptr %13, i64 4
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = ashr i32 %16, 0
  %18 = and i32 %17, 3855
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds i16, ptr %19, i64 0
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 49344
  %24 = ashr i32 %23, 2
  %25 = or i32 %18, %24
  %26 = trunc i32 %25 to i16
  %27 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 0
  store i16 %26, ptr %27, align 2
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr inbounds i16, ptr %28, i64 4
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = ashr i32 %31, 4
  %33 = and i32 %32, 3855
  %34 = load ptr, ptr %6, align 8
  %35 = getelementptr inbounds i16, ptr %34, i64 2
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 49344
  %39 = ashr i32 %38, 2
  %40 = or i32 %33, %39
  %41 = trunc i32 %40 to i16
  %42 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1
  store i16 %41, ptr %42, align 2
  %43 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 0
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  %46 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1
  %47 = load i16, ptr %46, align 2
  %48 = zext i16 %47 to i32
  %49 = shl i32 %48, 16
  %50 = or i32 %45, %49
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_q5_3(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.Scales, align 2
  %4 = alloca { i64, i32 }, align 2
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca [2 x i16], align 2
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 0
  store i64 %0, ptr %9, align 2
  %10 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 1
  store i32 %1, ptr %10, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %3, ptr align 2 %4, i64 12, i1 false)
  store i32 6, ptr %5, align 4
  %11 = getelementptr inbounds nuw %struct.Scales, ptr %3, i32 0, i32 0
  %12 = getelementptr inbounds [6 x i16], ptr %11, i64 0, i64 0
  store ptr %12, ptr %6, align 8
  store i32 3, ptr %8, align 4
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds i16, ptr %13, i64 5
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = ashr i32 %16, 0
  %18 = and i32 %17, 3855
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds i16, ptr %19, i64 1
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 49344
  %24 = ashr i32 %23, 2
  %25 = or i32 %18, %24
  %26 = trunc i32 %25 to i16
  %27 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 0
  store i16 %26, ptr %27, align 2
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr inbounds i16, ptr %28, i64 5
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = ashr i32 %31, 4
  %33 = and i32 %32, 3855
  %34 = load ptr, ptr %6, align 8
  %35 = getelementptr inbounds i16, ptr %34, i64 3
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 49344
  %39 = ashr i32 %38, 2
  %40 = or i32 %33, %39
  %41 = trunc i32 %40 to i16
  %42 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1
  store i16 %41, ptr %42, align 2
  %43 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 0
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  %46 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1
  %47 = load i16, ptr %46, align 2
  %48 = zext i16 %47 to i32
  %49 = shl i32 %48, 16
  %50 = or i32 %45, %49
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
