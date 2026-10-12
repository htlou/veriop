; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/73ab7599/new.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/gpu/llama.cpp/73ab7599/new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Scales = type { [6 x i16] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_q4_0(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.Scales, align 2
  %4 = alloca { i64, i32 }, align 2
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i16], align 2
  %14 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 0
  store i64 %0, ptr %14, align 2
  %15 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 1
  store i32 %1, ptr %15, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %3, ptr align 2 %4, i64 12, i1 false)
  store i32 0, ptr %5, align 4
  %16 = getelementptr inbounds nuw %struct.Scales, ptr %3, i32 0, i32 0
  %17 = getelementptr inbounds [6 x i16], ptr %16, i64 0, i64 0
  store ptr %17, ptr %6, align 8
  store i32 0, ptr %7, align 4
  store i32 0, ptr %8, align 4
  %18 = load ptr, ptr %6, align 8
  %19 = getelementptr inbounds i16, ptr %18, i64 0
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  store i32 %21, ptr %9, align 4
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds i16, ptr %22, i64 2
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  store i32 %25, ptr %10, align 4
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds i16, ptr %26, i64 4
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  store i32 %29, ptr %11, align 4
  store i32 0, ptr %12, align 4
  %30 = load i32, ptr %9, align 4
  %31 = and i32 %30, 16191
  %32 = and i32 %31, -1
  %33 = load i32, ptr %11, align 4
  %34 = lshr i32 %33, 0
  %35 = and i32 %34, 3855
  %36 = load i32, ptr %9, align 4
  %37 = and i32 %36, 49344
  %38 = lshr i32 %37, 2
  %39 = or i32 %35, %38
  %40 = and i32 %39, 0
  %41 = or i32 %32, %40
  %42 = trunc i32 %41 to i16
  %43 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 0
  store i16 %42, ptr %43, align 2
  %44 = load i32, ptr %10, align 4
  %45 = and i32 %44, 16191
  %46 = and i32 %45, -1
  %47 = load i32, ptr %11, align 4
  %48 = lshr i32 %47, 4
  %49 = and i32 %48, 3855
  %50 = load i32, ptr %10, align 4
  %51 = and i32 %50, 49344
  %52 = lshr i32 %51, 2
  %53 = or i32 %49, %52
  %54 = and i32 %53, 0
  %55 = or i32 %46, %54
  %56 = trunc i32 %55 to i16
  %57 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 1
  store i16 %56, ptr %57, align 2
  %58 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 0
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 1
  %62 = load i16, ptr %61, align 2
  %63 = zext i16 %62 to i32
  %64 = shl i32 %63, 16
  %65 = or i32 %60, %64
  ret i32 %65
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_q4_1(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.Scales, align 2
  %4 = alloca { i64, i32 }, align 2
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i16], align 2
  %14 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 0
  store i64 %0, ptr %14, align 2
  %15 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 1
  store i32 %1, ptr %15, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %3, ptr align 2 %4, i64 12, i1 false)
  store i32 2, ptr %5, align 4
  %16 = getelementptr inbounds nuw %struct.Scales, ptr %3, i32 0, i32 0
  %17 = getelementptr inbounds [6 x i16], ptr %16, i64 0, i64 0
  store ptr %17, ptr %6, align 8
  store i32 1, ptr %7, align 4
  store i32 1, ptr %8, align 4
  %18 = load ptr, ptr %6, align 8
  %19 = getelementptr inbounds i16, ptr %18, i64 1
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  store i32 %21, ptr %9, align 4
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds i16, ptr %22, i64 3
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  store i32 %25, ptr %10, align 4
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds i16, ptr %26, i64 5
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  store i32 %29, ptr %11, align 4
  store i32 0, ptr %12, align 4
  %30 = load i32, ptr %9, align 4
  %31 = and i32 %30, 16191
  %32 = and i32 %31, -1
  %33 = load i32, ptr %11, align 4
  %34 = lshr i32 %33, 0
  %35 = and i32 %34, 3855
  %36 = load i32, ptr %9, align 4
  %37 = and i32 %36, 49344
  %38 = lshr i32 %37, 2
  %39 = or i32 %35, %38
  %40 = and i32 %39, 0
  %41 = or i32 %32, %40
  %42 = trunc i32 %41 to i16
  %43 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 0
  store i16 %42, ptr %43, align 2
  %44 = load i32, ptr %10, align 4
  %45 = and i32 %44, 16191
  %46 = and i32 %45, -1
  %47 = load i32, ptr %11, align 4
  %48 = lshr i32 %47, 4
  %49 = and i32 %48, 3855
  %50 = load i32, ptr %10, align 4
  %51 = and i32 %50, 49344
  %52 = lshr i32 %51, 2
  %53 = or i32 %49, %52
  %54 = and i32 %53, 0
  %55 = or i32 %46, %54
  %56 = trunc i32 %55 to i16
  %57 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 1
  store i16 %56, ptr %57, align 2
  %58 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 0
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 1
  %62 = load i16, ptr %61, align 2
  %63 = zext i16 %62 to i32
  %64 = shl i32 %63, 16
  %65 = or i32 %60, %64
  ret i32 %65
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_q4_2(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.Scales, align 2
  %4 = alloca { i64, i32 }, align 2
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i16], align 2
  %14 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 0
  store i64 %0, ptr %14, align 2
  %15 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 1
  store i32 %1, ptr %15, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %3, ptr align 2 %4, i64 12, i1 false)
  store i32 4, ptr %5, align 4
  %16 = getelementptr inbounds nuw %struct.Scales, ptr %3, i32 0, i32 0
  %17 = getelementptr inbounds [6 x i16], ptr %16, i64 0, i64 0
  store ptr %17, ptr %6, align 8
  store i32 2, ptr %7, align 4
  store i32 0, ptr %8, align 4
  %18 = load ptr, ptr %6, align 8
  %19 = getelementptr inbounds i16, ptr %18, i64 0
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  store i32 %21, ptr %9, align 4
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds i16, ptr %22, i64 2
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  store i32 %25, ptr %10, align 4
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds i16, ptr %26, i64 4
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  store i32 %29, ptr %11, align 4
  store i32 -1, ptr %12, align 4
  %30 = load i32, ptr %9, align 4
  %31 = and i32 %30, 16191
  %32 = and i32 %31, 0
  %33 = load i32, ptr %11, align 4
  %34 = lshr i32 %33, 0
  %35 = and i32 %34, 3855
  %36 = load i32, ptr %9, align 4
  %37 = and i32 %36, 49344
  %38 = lshr i32 %37, 2
  %39 = or i32 %35, %38
  %40 = and i32 %39, -1
  %41 = or i32 %32, %40
  %42 = trunc i32 %41 to i16
  %43 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 0
  store i16 %42, ptr %43, align 2
  %44 = load i32, ptr %10, align 4
  %45 = and i32 %44, 16191
  %46 = and i32 %45, 0
  %47 = load i32, ptr %11, align 4
  %48 = lshr i32 %47, 4
  %49 = and i32 %48, 3855
  %50 = load i32, ptr %10, align 4
  %51 = and i32 %50, 49344
  %52 = lshr i32 %51, 2
  %53 = or i32 %49, %52
  %54 = and i32 %53, -1
  %55 = or i32 %46, %54
  %56 = trunc i32 %55 to i16
  %57 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 1
  store i16 %56, ptr %57, align 2
  %58 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 0
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 1
  %62 = load i16, ptr %61, align 2
  %63 = zext i16 %62 to i32
  %64 = shl i32 %63, 16
  %65 = or i32 %60, %64
  ret i32 %65
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_q4_3(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.Scales, align 2
  %4 = alloca { i64, i32 }, align 2
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i16], align 2
  %14 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 0
  store i64 %0, ptr %14, align 2
  %15 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 1
  store i32 %1, ptr %15, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %3, ptr align 2 %4, i64 12, i1 false)
  store i32 6, ptr %5, align 4
  %16 = getelementptr inbounds nuw %struct.Scales, ptr %3, i32 0, i32 0
  %17 = getelementptr inbounds [6 x i16], ptr %16, i64 0, i64 0
  store ptr %17, ptr %6, align 8
  store i32 3, ptr %7, align 4
  store i32 1, ptr %8, align 4
  %18 = load ptr, ptr %6, align 8
  %19 = getelementptr inbounds i16, ptr %18, i64 1
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  store i32 %21, ptr %9, align 4
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds i16, ptr %22, i64 3
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  store i32 %25, ptr %10, align 4
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds i16, ptr %26, i64 5
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  store i32 %29, ptr %11, align 4
  store i32 -1, ptr %12, align 4
  %30 = load i32, ptr %9, align 4
  %31 = and i32 %30, 16191
  %32 = and i32 %31, 0
  %33 = load i32, ptr %11, align 4
  %34 = lshr i32 %33, 0
  %35 = and i32 %34, 3855
  %36 = load i32, ptr %9, align 4
  %37 = and i32 %36, 49344
  %38 = lshr i32 %37, 2
  %39 = or i32 %35, %38
  %40 = and i32 %39, -1
  %41 = or i32 %32, %40
  %42 = trunc i32 %41 to i16
  %43 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 0
  store i16 %42, ptr %43, align 2
  %44 = load i32, ptr %10, align 4
  %45 = and i32 %44, 16191
  %46 = and i32 %45, 0
  %47 = load i32, ptr %11, align 4
  %48 = lshr i32 %47, 4
  %49 = and i32 %48, 3855
  %50 = load i32, ptr %10, align 4
  %51 = and i32 %50, 49344
  %52 = lshr i32 %51, 2
  %53 = or i32 %49, %52
  %54 = and i32 %53, -1
  %55 = or i32 %46, %54
  %56 = trunc i32 %55 to i16
  %57 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 1
  store i16 %56, ptr %57, align 2
  %58 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 0
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 1
  %62 = load i16, ptr %61, align 2
  %63 = zext i16 %62 to i32
  %64 = shl i32 %63, 16
  %65 = or i32 %60, %64
  ret i32 %65
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_q5_0(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.Scales, align 2
  %4 = alloca { i64, i32 }, align 2
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i16], align 2
  %14 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 0
  store i64 %0, ptr %14, align 2
  %15 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 1
  store i32 %1, ptr %15, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %3, ptr align 2 %4, i64 12, i1 false)
  store i32 0, ptr %5, align 4
  %16 = getelementptr inbounds nuw %struct.Scales, ptr %3, i32 0, i32 0
  %17 = getelementptr inbounds [6 x i16], ptr %16, i64 0, i64 0
  store ptr %17, ptr %6, align 8
  store i32 0, ptr %7, align 4
  store i32 0, ptr %8, align 4
  %18 = load ptr, ptr %6, align 8
  %19 = getelementptr inbounds i16, ptr %18, i64 0
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  store i32 %21, ptr %9, align 4
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds i16, ptr %22, i64 2
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  store i32 %25, ptr %10, align 4
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds i16, ptr %26, i64 4
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  store i32 %29, ptr %11, align 4
  store i32 0, ptr %12, align 4
  %30 = load i32, ptr %9, align 4
  %31 = and i32 %30, 16191
  %32 = and i32 %31, -1
  %33 = load i32, ptr %11, align 4
  %34 = lshr i32 %33, 0
  %35 = and i32 %34, 3855
  %36 = load i32, ptr %9, align 4
  %37 = and i32 %36, 49344
  %38 = lshr i32 %37, 2
  %39 = or i32 %35, %38
  %40 = and i32 %39, 0
  %41 = or i32 %32, %40
  %42 = trunc i32 %41 to i16
  %43 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 0
  store i16 %42, ptr %43, align 2
  %44 = load i32, ptr %10, align 4
  %45 = and i32 %44, 16191
  %46 = and i32 %45, -1
  %47 = load i32, ptr %11, align 4
  %48 = lshr i32 %47, 4
  %49 = and i32 %48, 3855
  %50 = load i32, ptr %10, align 4
  %51 = and i32 %50, 49344
  %52 = lshr i32 %51, 2
  %53 = or i32 %49, %52
  %54 = and i32 %53, 0
  %55 = or i32 %46, %54
  %56 = trunc i32 %55 to i16
  %57 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 1
  store i16 %56, ptr %57, align 2
  %58 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 0
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 1
  %62 = load i16, ptr %61, align 2
  %63 = zext i16 %62 to i32
  %64 = shl i32 %63, 16
  %65 = or i32 %60, %64
  ret i32 %65
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_q5_1(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.Scales, align 2
  %4 = alloca { i64, i32 }, align 2
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i16], align 2
  %14 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 0
  store i64 %0, ptr %14, align 2
  %15 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 1
  store i32 %1, ptr %15, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %3, ptr align 2 %4, i64 12, i1 false)
  store i32 2, ptr %5, align 4
  %16 = getelementptr inbounds nuw %struct.Scales, ptr %3, i32 0, i32 0
  %17 = getelementptr inbounds [6 x i16], ptr %16, i64 0, i64 0
  store ptr %17, ptr %6, align 8
  store i32 1, ptr %7, align 4
  store i32 1, ptr %8, align 4
  %18 = load ptr, ptr %6, align 8
  %19 = getelementptr inbounds i16, ptr %18, i64 1
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  store i32 %21, ptr %9, align 4
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds i16, ptr %22, i64 3
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  store i32 %25, ptr %10, align 4
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds i16, ptr %26, i64 5
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  store i32 %29, ptr %11, align 4
  store i32 0, ptr %12, align 4
  %30 = load i32, ptr %9, align 4
  %31 = and i32 %30, 16191
  %32 = and i32 %31, -1
  %33 = load i32, ptr %11, align 4
  %34 = lshr i32 %33, 0
  %35 = and i32 %34, 3855
  %36 = load i32, ptr %9, align 4
  %37 = and i32 %36, 49344
  %38 = lshr i32 %37, 2
  %39 = or i32 %35, %38
  %40 = and i32 %39, 0
  %41 = or i32 %32, %40
  %42 = trunc i32 %41 to i16
  %43 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 0
  store i16 %42, ptr %43, align 2
  %44 = load i32, ptr %10, align 4
  %45 = and i32 %44, 16191
  %46 = and i32 %45, -1
  %47 = load i32, ptr %11, align 4
  %48 = lshr i32 %47, 4
  %49 = and i32 %48, 3855
  %50 = load i32, ptr %10, align 4
  %51 = and i32 %50, 49344
  %52 = lshr i32 %51, 2
  %53 = or i32 %49, %52
  %54 = and i32 %53, 0
  %55 = or i32 %46, %54
  %56 = trunc i32 %55 to i16
  %57 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 1
  store i16 %56, ptr %57, align 2
  %58 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 0
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 1
  %62 = load i16, ptr %61, align 2
  %63 = zext i16 %62 to i32
  %64 = shl i32 %63, 16
  %65 = or i32 %60, %64
  ret i32 %65
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_q5_2(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.Scales, align 2
  %4 = alloca { i64, i32 }, align 2
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i16], align 2
  %14 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 0
  store i64 %0, ptr %14, align 2
  %15 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 1
  store i32 %1, ptr %15, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %3, ptr align 2 %4, i64 12, i1 false)
  store i32 4, ptr %5, align 4
  %16 = getelementptr inbounds nuw %struct.Scales, ptr %3, i32 0, i32 0
  %17 = getelementptr inbounds [6 x i16], ptr %16, i64 0, i64 0
  store ptr %17, ptr %6, align 8
  store i32 2, ptr %7, align 4
  store i32 0, ptr %8, align 4
  %18 = load ptr, ptr %6, align 8
  %19 = getelementptr inbounds i16, ptr %18, i64 0
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  store i32 %21, ptr %9, align 4
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds i16, ptr %22, i64 2
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  store i32 %25, ptr %10, align 4
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds i16, ptr %26, i64 4
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  store i32 %29, ptr %11, align 4
  store i32 -1, ptr %12, align 4
  %30 = load i32, ptr %9, align 4
  %31 = and i32 %30, 16191
  %32 = and i32 %31, 0
  %33 = load i32, ptr %11, align 4
  %34 = lshr i32 %33, 0
  %35 = and i32 %34, 3855
  %36 = load i32, ptr %9, align 4
  %37 = and i32 %36, 49344
  %38 = lshr i32 %37, 2
  %39 = or i32 %35, %38
  %40 = and i32 %39, -1
  %41 = or i32 %32, %40
  %42 = trunc i32 %41 to i16
  %43 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 0
  store i16 %42, ptr %43, align 2
  %44 = load i32, ptr %10, align 4
  %45 = and i32 %44, 16191
  %46 = and i32 %45, 0
  %47 = load i32, ptr %11, align 4
  %48 = lshr i32 %47, 4
  %49 = and i32 %48, 3855
  %50 = load i32, ptr %10, align 4
  %51 = and i32 %50, 49344
  %52 = lshr i32 %51, 2
  %53 = or i32 %49, %52
  %54 = and i32 %53, -1
  %55 = or i32 %46, %54
  %56 = trunc i32 %55 to i16
  %57 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 1
  store i16 %56, ptr %57, align 2
  %58 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 0
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 1
  %62 = load i16, ptr %61, align 2
  %63 = zext i16 %62 to i32
  %64 = shl i32 %63, 16
  %65 = or i32 %60, %64
  ret i32 %65
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_q5_3(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.Scales, align 2
  %4 = alloca { i64, i32 }, align 2
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i16], align 2
  %14 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 0
  store i64 %0, ptr %14, align 2
  %15 = getelementptr inbounds nuw { i64, i32 }, ptr %4, i32 0, i32 1
  store i32 %1, ptr %15, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %3, ptr align 2 %4, i64 12, i1 false)
  store i32 6, ptr %5, align 4
  %16 = getelementptr inbounds nuw %struct.Scales, ptr %3, i32 0, i32 0
  %17 = getelementptr inbounds [6 x i16], ptr %16, i64 0, i64 0
  store ptr %17, ptr %6, align 8
  store i32 3, ptr %7, align 4
  store i32 1, ptr %8, align 4
  %18 = load ptr, ptr %6, align 8
  %19 = getelementptr inbounds i16, ptr %18, i64 1
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  store i32 %21, ptr %9, align 4
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds i16, ptr %22, i64 3
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  store i32 %25, ptr %10, align 4
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds i16, ptr %26, i64 5
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  store i32 %29, ptr %11, align 4
  store i32 -1, ptr %12, align 4
  %30 = load i32, ptr %9, align 4
  %31 = and i32 %30, 16191
  %32 = and i32 %31, 0
  %33 = load i32, ptr %11, align 4
  %34 = lshr i32 %33, 0
  %35 = and i32 %34, 3855
  %36 = load i32, ptr %9, align 4
  %37 = and i32 %36, 49344
  %38 = lshr i32 %37, 2
  %39 = or i32 %35, %38
  %40 = and i32 %39, -1
  %41 = or i32 %32, %40
  %42 = trunc i32 %41 to i16
  %43 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 0
  store i16 %42, ptr %43, align 2
  %44 = load i32, ptr %10, align 4
  %45 = and i32 %44, 16191
  %46 = and i32 %45, 0
  %47 = load i32, ptr %11, align 4
  %48 = lshr i32 %47, 4
  %49 = and i32 %48, 3855
  %50 = load i32, ptr %10, align 4
  %51 = and i32 %50, 49344
  %52 = lshr i32 %51, 2
  %53 = or i32 %49, %52
  %54 = and i32 %53, -1
  %55 = or i32 %46, %54
  %56 = trunc i32 %55 to i16
  %57 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 1
  store i16 %56, ptr %57, align 2
  %58 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 0
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 1
  %62 = load i16, ptr %61, align 2
  %63 = zext i16 %62 to i32
  %64 = shl i32 %63, 16
  %65 = or i32 %60, %64
  ret i32 %65
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
