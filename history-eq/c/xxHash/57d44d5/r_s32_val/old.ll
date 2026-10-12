; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/57d44d5/wrapv_s32.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/57d44d5/wrapv_s32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH32_state_s = type { i32, i32, [4 x i32], [4 x i32], i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_0_0(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = add i32 %16, 374761393
  %19 = lshr i32 %18, 15
  %20 = xor i32 %19, %18
  %21 = mul i32 %20, -2048144777
  %22 = lshr i32 %21, 13
  %23 = xor i32 %22, %21
  %24 = mul i32 %23, -1028477379
  %25 = lshr i32 %24, 16
  %26 = xor i32 %25, %24
  ret i32 %26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_1_0(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = trunc i64 %0 to i32
  %19 = and i32 %18, 255
  %20 = mul i32 %19, 374761393
  %21 = add i32 %16, 374761394
  %22 = add i32 %20, %21
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 11)
  %24 = mul i32 %23, -1640531535
  %25 = lshr i32 %24, 15
  %26 = xor i32 %25, %24
  %27 = mul i32 %26, -2048144777
  %28 = lshr i32 %27, 13
  %29 = xor i32 %28, %27
  %30 = mul i32 %29, -1028477379
  %31 = lshr i32 %30, 16
  %32 = xor i32 %31, %30
  ret i32 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @target_s32_7_8(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
  %18 = alloca [16 x i8], align 16
  %19 = alloca [11 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18)
  store i64 %0, ptr %18, align 16
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %19)
  %21 = load i32, ptr %18, align 16
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %19, ptr noundef nonnull align 4 dereferenceable(3) %22, i64 3, i1 false)
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 7
  %24 = load i64, ptr %23, align 1
  %25 = getelementptr inbounds nuw i8, ptr %19, i64 3
  store i64 %24, ptr %25, align 1
  %26 = getelementptr inbounds nuw i8, ptr %19, i64 10
  %27 = load i8, ptr %26, align 2
  %28 = zext i8 %27 to i32
  %29 = mul i32 %28, 374761393
  %30 = getelementptr inbounds nuw i8, ptr %19, i64 9
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = mul i32 %32, 374761393
  %34 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %35 = load i8, ptr %34, align 4
  %36 = zext i8 %35 to i32
  %37 = mul i32 %36, 374761393
  %38 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %39 = load i32, ptr %38, align 4
  %40 = mul i32 %39, -1028477379
  %41 = load i32, ptr %19, align 4
  %42 = mul i32 %41, -1028477379
  %43 = mul i32 %21, -1028477379
  %44 = add i32 %16, 374761408
  %45 = add i32 %43, %44
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 17)
  %47 = mul i32 %46, 668265263
  %48 = add i32 %42, %47
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 17)
  %50 = mul i32 %49, 668265263
  %51 = add i32 %40, %50
  %52 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 17)
  %53 = mul i32 %52, 668265263
  %54 = add i32 %37, %53
  %55 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 11)
  %56 = mul i32 %55, -1640531535
  %57 = add i32 %33, %56
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 11)
  %59 = mul i32 %58, -1640531535
  %60 = add i32 %29, %59
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 11)
  %62 = mul i32 %61, -1640531535
  %63 = lshr i32 %62, 15
  %64 = xor i32 %63, %62
  %65 = mul i32 %64, -2048144777
  %66 = lshr i32 %65, 13
  %67 = xor i32 %66, %65
  %68 = mul i32 %67, -1028477379
  %69 = lshr i32 %68, 16
  %70 = xor i32 %69, %68
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %19)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18)
  ret i32 %70
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @target_s32_5_10(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
  %18 = trunc i64 %0 to i32
  %19 = lshr i64 %0, 32
  %20 = trunc nuw i64 %19 to i32
  %21 = and i32 %20, 255
  %22 = lshr i64 %0, 32
  %23 = trunc nuw i64 %22 to i32
  %24 = and i32 %23, -256
  %25 = or disjoint i32 %21, %24
  %26 = trunc i64 %1 to i32
  %27 = lshr i64 %1, 32
  %28 = trunc nuw i64 %27 to i32
  %29 = lshr i64 %1, 40
  %30 = trunc nuw nsw i64 %29 to i32
  %31 = lshr i64 %1, 48
  %32 = trunc nuw nsw i64 %31 to i32
  %33 = and i32 %32, 255
  %34 = mul i32 %33, 374761393
  %35 = and i32 %30, 255
  %36 = mul i32 %35, 374761393
  %37 = and i32 %28, 255
  %38 = mul i32 %37, 374761393
  %39 = mul i32 %26, -1028477379
  %40 = mul i32 %25, -1028477379
  %41 = mul i32 %18, -1028477379
  %42 = add i32 %16, 374761408
  %43 = add i32 %41, %42
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 17)
  %45 = mul i32 %44, 668265263
  %46 = add i32 %40, %45
  %47 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 17)
  %48 = mul i32 %47, 668265263
  %49 = add i32 %39, %48
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 17)
  %51 = mul i32 %50, 668265263
  %52 = add i32 %38, %51
  %53 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 11)
  %54 = mul i32 %53, -1640531535
  %55 = add i32 %36, %54
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 11)
  %57 = mul i32 %56, -1640531535
  %58 = add i32 %34, %57
  %59 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 11)
  %60 = mul i32 %59, -1640531535
  %61 = lshr i32 %60, 15
  %62 = xor i32 %61, %60
  %63 = mul i32 %62, -2048144777
  %64 = lshr i32 %63, 13
  %65 = xor i32 %64, %63
  %66 = mul i32 %65, -1028477379
  %67 = lshr i32 %66, 16
  %68 = xor i32 %67, %66
  ret i32 %68
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_15_0(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = trunc i64 %0 to i32
  %19 = lshr i64 %0, 32
  %20 = trunc nuw i64 %19 to i32
  %21 = trunc i64 %1 to i32
  %22 = lshr i64 %1, 32
  %23 = trunc nuw i64 %22 to i32
  %24 = lshr i64 %1, 40
  %25 = trunc nuw nsw i64 %24 to i32
  %26 = lshr i64 %1, 48
  %27 = trunc nuw nsw i64 %26 to i32
  %28 = and i32 %27, 255
  %29 = mul i32 %28, 374761393
  %30 = and i32 %25, 255
  %31 = mul i32 %30, 374761393
  %32 = and i32 %23, 255
  %33 = mul i32 %32, 374761393
  %34 = mul i32 %21, -1028477379
  %35 = mul i32 %20, -1028477379
  %36 = mul i32 %18, -1028477379
  %37 = add i32 %16, 374761408
  %38 = add i32 %36, %37
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 17)
  %40 = mul i32 %39, 668265263
  %41 = add i32 %35, %40
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 17)
  %43 = mul i32 %42, 668265263
  %44 = add i32 %34, %43
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 17)
  %46 = mul i32 %45, 668265263
  %47 = add i32 %33, %46
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 11)
  %49 = mul i32 %48, -1640531535
  %50 = add i32 %31, %49
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 11)
  %52 = mul i32 %51, -1640531535
  %53 = add i32 %29, %52
  %54 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 11)
  %55 = mul i32 %54, -1640531535
  %56 = lshr i32 %55, 15
  %57 = xor i32 %56, %55
  %58 = mul i32 %57, -2048144777
  %59 = lshr i32 %58, 13
  %60 = xor i32 %59, %58
  %61 = mul i32 %60, -1028477379
  %62 = lshr i32 %61, 16
  %63 = xor i32 %62, %61
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_10_10(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #4 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #7
  store i64 %0, ptr %18, align 16
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %21, align 16
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %3, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %4, ptr %23, align 16
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %5, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %6, ptr %25, align 16
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %7, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i64 %8, ptr %27, align 16
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 %9, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 80
  store i64 %10, ptr %29, align 16
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 %11, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 96
  store i64 %12, ptr %31, align 16
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 104
  store i64 %13, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 112
  store i64 %14, ptr %33, align 16
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 120
  store i64 %15, ptr %34, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #7
  %35 = add i32 %16, 606290984
  %36 = add i32 %16, -2048144777
  %37 = add i32 %16, 1640531535
  store i64 4294967316, ptr %19, align 8
  %38 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %35, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 %36, ptr %39, align 4
  %40 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 %16, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i32 %37, ptr %41, align 4
  %42 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %43 = getelementptr inbounds nuw i8, ptr %18, i64 10
  %44 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %42, ptr noundef nonnull readonly align 16 dereferenceable(10) %18, i64 10, i1 false)
  store i32 10, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %19, i64 34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %46, ptr noundef nonnull readonly align 2 dereferenceable(6) %43, i64 6, i1 false)
  %47 = load i32, ptr %42, align 8
  %48 = mul i32 %47, -2048144777
  %49 = add i32 %48, %35
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 13)
  %51 = mul i32 %50, -1640531535
  %52 = freeze i32 %51
  store i32 %52, ptr %38, align 8
  %53 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %54 = load i32, ptr %39, align 4
  %55 = load i32, ptr %53, align 4
  %56 = mul i32 %55, -2048144777
  %57 = add i32 %56, %54
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  %60 = freeze i32 %59
  store i32 %60, ptr %39, align 4
  %61 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %62 = load i32, ptr %40, align 8
  %63 = load i32, ptr %61, align 8
  %64 = mul i32 %63, -2048144777
  %65 = add i32 %64, %62
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 13)
  %67 = mul i32 %66, -1640531535
  %68 = freeze i32 %67
  store i32 %68, ptr %40, align 8
  %69 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %70 = load i32, ptr %41, align 4
  %71 = load i32, ptr %69, align 4
  %72 = mul i32 %71, -2048144777
  %73 = add i32 %72, %70
  %74 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 13)
  %75 = mul i32 %74, -1640531535
  %76 = freeze i32 %75
  store i32 %76, ptr %41, align 4
  %77 = load i32, ptr %45, align 8
  %78 = sub i32 16, %77
  store i32 0, ptr %45, align 8
  %79 = icmp ult i32 %78, 10
  br i1 %79, label %80, label %90

80:                                               ; preds = %17
  %81 = getelementptr inbounds nuw i8, ptr %18, i64 20
  %82 = zext nneg i32 %78 to i64
  %83 = getelementptr inbounds nuw i8, ptr %18, i64 %82
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 10
  %85 = ptrtoint ptr %81 to i64
  %86 = ptrtoint ptr %84 to i64
  %87 = sub i64 %85, %86
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %84, i64 %87, i1 false)
  %88 = trunc i64 %87 to i32
  store i32 %88, ptr %45, align 8
  %89 = and i32 %88, 15
  br label %90

90:                                               ; preds = %17, %80
  %91 = phi i32 [ 0, %17 ], [ %89, %80 ]
  %92 = load i32, ptr %44, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %90
  %95 = load i32, ptr %38, align 8
  %96 = call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 1)
  %97 = load i32, ptr %39, align 4
  %98 = call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 7)
  %99 = add i32 %98, %96
  %100 = load i32, ptr %40, align 8
  %101 = call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 12)
  %102 = add i32 %99, %101
  %103 = call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 18)
  %104 = add i32 %102, %103
  br label %108

105:                                              ; preds = %90
  %106 = load i32, ptr %40, align 8
  %107 = add i32 %106, 374761393
  br label %108

108:                                              ; preds = %105, %94
  %109 = phi i32 [ %104, %94 ], [ %107, %105 ]
  %110 = load i32, ptr %19, align 8
  %111 = add i32 %110, %109
  switch i32 %91, label %259 [
    i32 12, label %112
    i32 8, label %119
    i32 4, label %128
    i32 13, label %136
    i32 9, label %143
    i32 5, label %152
    i32 14, label %167
    i32 10, label %174
    i32 6, label %183
    i32 15, label %205
    i32 11, label %212
    i32 7, label %221
    i32 3, label %230
    i32 2, label %240
    i32 1, label %250
    i32 0, label %260
  ]

112:                                              ; preds = %108
  %113 = load i32, ptr %42, align 8
  %114 = mul i32 %113, -1028477379
  %115 = add i32 %114, %111
  %116 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %117 = call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 17)
  %118 = mul i32 %117, 668265263
  br label %119

119:                                              ; preds = %112, %108
  %120 = phi ptr [ %42, %108 ], [ %116, %112 ]
  %121 = phi i32 [ %111, %108 ], [ %118, %112 ]
  %122 = load i32, ptr %120, align 4
  %123 = mul i32 %122, -1028477379
  %124 = add i32 %123, %121
  %125 = getelementptr inbounds nuw i8, ptr %120, i64 4
  %126 = call i32 @llvm.fshl.i32(i32 %124, i32 %124, i32 17)
  %127 = mul i32 %126, 668265263
  br label %128

128:                                              ; preds = %119, %108
  %129 = phi ptr [ %42, %108 ], [ %125, %119 ]
  %130 = phi i32 [ %111, %108 ], [ %127, %119 ]
  %131 = load i32, ptr %129, align 4
  %132 = mul i32 %131, -1028477379
  %133 = add i32 %132, %130
  %134 = call i32 @llvm.fshl.i32(i32 %133, i32 %133, i32 17)
  %135 = mul i32 %134, 668265263
  br label %260

136:                                              ; preds = %108
  %137 = load i32, ptr %42, align 8
  %138 = mul i32 %137, -1028477379
  %139 = add i32 %138, %111
  %140 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %141 = call i32 @llvm.fshl.i32(i32 %139, i32 %139, i32 17)
  %142 = mul i32 %141, 668265263
  br label %143

143:                                              ; preds = %136, %108
  %144 = phi ptr [ %42, %108 ], [ %140, %136 ]
  %145 = phi i32 [ %111, %108 ], [ %142, %136 ]
  %146 = load i32, ptr %144, align 4
  %147 = mul i32 %146, -1028477379
  %148 = add i32 %147, %145
  %149 = getelementptr inbounds nuw i8, ptr %144, i64 4
  %150 = call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 17)
  %151 = mul i32 %150, 668265263
  br label %152

152:                                              ; preds = %143, %108
  %153 = phi ptr [ %42, %108 ], [ %149, %143 ]
  %154 = phi i32 [ %111, %108 ], [ %151, %143 ]
  %155 = load i32, ptr %153, align 4
  %156 = mul i32 %155, -1028477379
  %157 = add i32 %156, %154
  %158 = getelementptr inbounds nuw i8, ptr %153, i64 4
  %159 = call i32 @llvm.fshl.i32(i32 %157, i32 %157, i32 17)
  %160 = mul i32 %159, 668265263
  %161 = load i8, ptr %158, align 1
  %162 = zext i8 %161 to i32
  %163 = mul i32 %162, 374761393
  %164 = add i32 %160, %163
  %165 = call i32 @llvm.fshl.i32(i32 %164, i32 %164, i32 11)
  %166 = mul i32 %165, -1640531535
  br label %260

167:                                              ; preds = %108
  %168 = load i32, ptr %42, align 8
  %169 = mul i32 %168, -1028477379
  %170 = add i32 %169, %111
  %171 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %172 = call i32 @llvm.fshl.i32(i32 %170, i32 %170, i32 17)
  %173 = mul i32 %172, 668265263
  br label %174

174:                                              ; preds = %167, %108
  %175 = phi ptr [ %42, %108 ], [ %171, %167 ]
  %176 = phi i32 [ %111, %108 ], [ %173, %167 ]
  %177 = load i32, ptr %175, align 4
  %178 = mul i32 %177, -1028477379
  %179 = add i32 %178, %176
  %180 = getelementptr inbounds nuw i8, ptr %175, i64 4
  %181 = call i32 @llvm.fshl.i32(i32 %179, i32 %179, i32 17)
  %182 = mul i32 %181, 668265263
  br label %183

183:                                              ; preds = %174, %108
  %184 = phi ptr [ %42, %108 ], [ %180, %174 ]
  %185 = phi i32 [ %111, %108 ], [ %182, %174 ]
  %186 = load i32, ptr %184, align 4
  %187 = mul i32 %186, -1028477379
  %188 = add i32 %187, %185
  %189 = getelementptr inbounds nuw i8, ptr %184, i64 4
  %190 = call i32 @llvm.fshl.i32(i32 %188, i32 %188, i32 17)
  %191 = mul i32 %190, 668265263
  %192 = getelementptr inbounds nuw i8, ptr %184, i64 5
  %193 = load i8, ptr %189, align 1
  %194 = zext i8 %193 to i32
  %195 = mul i32 %194, 374761393
  %196 = add i32 %191, %195
  %197 = call i32 @llvm.fshl.i32(i32 %196, i32 %196, i32 11)
  %198 = mul i32 %197, -1640531535
  %199 = load i8, ptr %192, align 1
  %200 = zext i8 %199 to i32
  %201 = mul i32 %200, 374761393
  %202 = add i32 %198, %201
  %203 = call i32 @llvm.fshl.i32(i32 %202, i32 %202, i32 11)
  %204 = mul i32 %203, -1640531535
  br label %260

205:                                              ; preds = %108
  %206 = load i32, ptr %42, align 8
  %207 = mul i32 %206, -1028477379
  %208 = add i32 %207, %111
  %209 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %210 = call i32 @llvm.fshl.i32(i32 %208, i32 %208, i32 17)
  %211 = mul i32 %210, 668265263
  br label %212

212:                                              ; preds = %205, %108
  %213 = phi ptr [ %42, %108 ], [ %209, %205 ]
  %214 = phi i32 [ %111, %108 ], [ %211, %205 ]
  %215 = load i32, ptr %213, align 4
  %216 = mul i32 %215, -1028477379
  %217 = add i32 %216, %214
  %218 = getelementptr inbounds nuw i8, ptr %213, i64 4
  %219 = call i32 @llvm.fshl.i32(i32 %217, i32 %217, i32 17)
  %220 = mul i32 %219, 668265263
  br label %221

221:                                              ; preds = %212, %108
  %222 = phi ptr [ %42, %108 ], [ %218, %212 ]
  %223 = phi i32 [ %111, %108 ], [ %220, %212 ]
  %224 = load i32, ptr %222, align 4
  %225 = mul i32 %224, -1028477379
  %226 = add i32 %225, %223
  %227 = getelementptr inbounds nuw i8, ptr %222, i64 4
  %228 = call i32 @llvm.fshl.i32(i32 %226, i32 %226, i32 17)
  %229 = mul i32 %228, 668265263
  br label %230

230:                                              ; preds = %221, %108
  %231 = phi ptr [ %42, %108 ], [ %227, %221 ]
  %232 = phi i32 [ %111, %108 ], [ %229, %221 ]
  %233 = getelementptr inbounds nuw i8, ptr %231, i64 1
  %234 = load i8, ptr %231, align 1
  %235 = zext i8 %234 to i32
  %236 = mul i32 %235, 374761393
  %237 = add i32 %236, %232
  %238 = call i32 @llvm.fshl.i32(i32 %237, i32 %237, i32 11)
  %239 = mul i32 %238, -1640531535
  br label %240

240:                                              ; preds = %230, %108
  %241 = phi ptr [ %42, %108 ], [ %233, %230 ]
  %242 = phi i32 [ %111, %108 ], [ %239, %230 ]
  %243 = getelementptr inbounds nuw i8, ptr %241, i64 1
  %244 = load i8, ptr %241, align 1
  %245 = zext i8 %244 to i32
  %246 = mul i32 %245, 374761393
  %247 = add i32 %246, %242
  %248 = call i32 @llvm.fshl.i32(i32 %247, i32 %247, i32 11)
  %249 = mul i32 %248, -1640531535
  br label %250

250:                                              ; preds = %240, %108
  %251 = phi ptr [ %42, %108 ], [ %243, %240 ]
  %252 = phi i32 [ %111, %108 ], [ %249, %240 ]
  %253 = load i8, ptr %251, align 1
  %254 = zext i8 %253 to i32
  %255 = mul i32 %254, 374761393
  %256 = add i32 %255, %252
  %257 = call i32 @llvm.fshl.i32(i32 %256, i32 %256, i32 11)
  %258 = mul i32 %257, -1640531535
  br label %260

259:                                              ; preds = %108
  unreachable

260:                                              ; preds = %108, %128, %152, %183, %250
  %261 = phi i32 [ %204, %183 ], [ %166, %152 ], [ %135, %128 ], [ %111, %108 ], [ %258, %250 ]
  %262 = lshr i32 %261, 15
  %263 = xor i32 %262, %261
  %264 = mul i32 %263, -2048144777
  %265 = lshr i32 %264, 13
  %266 = xor i32 %265, %264
  %267 = mul i32 %266, -1028477379
  %268 = lshr i32 %267, 16
  %269 = xor i32 %268, %267
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #7
  ret i32 %269
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_3_20(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #4 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #7
  store i64 %0, ptr %18, align 16
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %21, align 16
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %3, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %4, ptr %23, align 16
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %5, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %6, ptr %25, align 16
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %7, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i64 %8, ptr %27, align 16
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 %9, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 80
  store i64 %10, ptr %29, align 16
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 %11, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 96
  store i64 %12, ptr %31, align 16
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 104
  store i64 %13, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 112
  store i64 %14, ptr %33, align 16
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 120
  store i64 %15, ptr %34, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #7
  %35 = add i32 %16, 606290984
  %36 = add i32 %16, -2048144777
  %37 = add i32 %16, 1640531535
  store i64 4294967319, ptr %19, align 8
  %38 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %35, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 %36, ptr %39, align 4
  %40 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 %16, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i32 %37, ptr %41, align 4
  %42 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %43 = getelementptr inbounds nuw i8, ptr %18, i64 3
  %44 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %42, ptr noundef nonnull readonly align 16 dereferenceable(3) %18, i64 3, i1 false)
  store i32 3, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %19, i64 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %46, ptr noundef nonnull readonly align 1 dereferenceable(13) %43, i64 13, i1 false)
  %47 = load i32, ptr %42, align 8
  %48 = mul i32 %47, -2048144777
  %49 = add i32 %48, %35
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 13)
  %51 = mul i32 %50, -1640531535
  %52 = freeze i32 %51
  store i32 %52, ptr %38, align 8
  %53 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %54 = load i32, ptr %39, align 4
  %55 = load i32, ptr %53, align 4
  %56 = mul i32 %55, -2048144777
  %57 = add i32 %56, %54
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  %60 = freeze i32 %59
  store i32 %60, ptr %39, align 4
  %61 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %62 = load i32, ptr %40, align 8
  %63 = load i32, ptr %61, align 8
  %64 = mul i32 %63, -2048144777
  %65 = add i32 %64, %62
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 13)
  %67 = mul i32 %66, -1640531535
  %68 = freeze i32 %67
  store i32 %68, ptr %40, align 8
  %69 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %70 = load i32, ptr %41, align 4
  %71 = load i32, ptr %69, align 4
  %72 = mul i32 %71, -2048144777
  %73 = add i32 %72, %70
  %74 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 13)
  %75 = mul i32 %74, -1640531535
  %76 = freeze i32 %75
  store i32 %76, ptr %41, align 4
  %77 = load i32, ptr %45, align 8
  %78 = sub i32 16, %77
  %79 = zext i32 %78 to i64
  %80 = add nuw nsw i64 %79, 3
  store i32 0, ptr %45, align 8
  %81 = icmp ugt i32 %78, 4
  br i1 %81, label %116, label %82

82:                                               ; preds = %17
  %83 = getelementptr inbounds nuw i8, ptr %18, i64 %80
  %84 = load i32, ptr %38, align 8
  %85 = load i32, ptr %83, align 1
  %86 = mul i32 %85, -2048144777
  %87 = add i32 %86, %84
  %88 = tail call i32 @llvm.fshl.i32(i32 %87, i32 %87, i32 13)
  %89 = mul i32 %88, -1640531535
  %90 = freeze i32 %89
  store i32 %90, ptr %38, align 8
  %91 = getelementptr inbounds nuw i8, ptr %83, i64 4
  %92 = load i32, ptr %39, align 4
  %93 = load i32, ptr %91, align 1
  %94 = mul i32 %93, -2048144777
  %95 = add i32 %94, %92
  %96 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 13)
  %97 = mul i32 %96, -1640531535
  %98 = freeze i32 %97
  store i32 %98, ptr %39, align 4
  %99 = getelementptr inbounds nuw i8, ptr %83, i64 8
  %100 = load i32, ptr %40, align 8
  %101 = load i32, ptr %99, align 1
  %102 = mul i32 %101, -2048144777
  %103 = add i32 %102, %100
  %104 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 13)
  %105 = mul i32 %104, -1640531535
  %106 = freeze i32 %105
  store i32 %106, ptr %40, align 8
  %107 = getelementptr inbounds nuw i8, ptr %83, i64 12
  %108 = load i32, ptr %41, align 4
  %109 = load i32, ptr %107, align 1
  %110 = mul i32 %109, -2048144777
  %111 = add i32 %110, %108
  %112 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 13)
  %113 = mul i32 %112, -1640531535
  %114 = freeze i32 %113
  store i32 %114, ptr %41, align 4
  %115 = add nuw nsw i64 %79, 19
  br label %116

116:                                              ; preds = %82, %17
  %117 = phi i32 [ %76, %17 ], [ %114, %82 ]
  %118 = phi i64 [ %80, %17 ], [ %115, %82 ]
  %119 = icmp samesign ult i64 %118, 23
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = getelementptr inbounds nuw i8, ptr %18, i64 %118
  %122 = sub nuw nsw i64 23, %118
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %121, i64 %122, i1 false)
  %123 = trunc nuw i64 %122 to i32
  store i32 %123, ptr %45, align 8
  br label %124

124:                                              ; preds = %116, %120
  %125 = load i32, ptr %44, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %138, label %127

127:                                              ; preds = %124
  %128 = load i32, ptr %38, align 8
  %129 = tail call i32 @llvm.fshl.i32(i32 %128, i32 %128, i32 1)
  %130 = load i32, ptr %39, align 4
  %131 = tail call i32 @llvm.fshl.i32(i32 %130, i32 %130, i32 7)
  %132 = add i32 %131, %129
  %133 = load i32, ptr %40, align 8
  %134 = tail call i32 @llvm.fshl.i32(i32 %133, i32 %133, i32 12)
  %135 = add i32 %132, %134
  %136 = tail call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 18)
  %137 = add i32 %135, %136
  br label %141

138:                                              ; preds = %124
  %139 = load i32, ptr %40, align 8
  %140 = add i32 %139, 374761393
  br label %141

141:                                              ; preds = %138, %127
  %142 = phi i32 [ %137, %127 ], [ %140, %138 ]
  %143 = load i32, ptr %19, align 8
  %144 = add i32 %143, %142
  %145 = load i32, ptr %45, align 8
  %146 = and i32 %145, 15
  switch i32 %146, label %294 [
    i32 12, label %147
    i32 8, label %154
    i32 4, label %163
    i32 13, label %171
    i32 9, label %178
    i32 5, label %187
    i32 14, label %202
    i32 10, label %209
    i32 6, label %218
    i32 15, label %240
    i32 11, label %247
    i32 7, label %256
    i32 3, label %265
    i32 2, label %275
    i32 1, label %285
    i32 0, label %295
  ]

147:                                              ; preds = %141
  %148 = load i32, ptr %42, align 8
  %149 = mul i32 %148, -1028477379
  %150 = add i32 %149, %144
  %151 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %152 = tail call i32 @llvm.fshl.i32(i32 %150, i32 %150, i32 17)
  %153 = mul i32 %152, 668265263
  br label %154

154:                                              ; preds = %147, %141
  %155 = phi ptr [ %42, %141 ], [ %151, %147 ]
  %156 = phi i32 [ %144, %141 ], [ %153, %147 ]
  %157 = load i32, ptr %155, align 4
  %158 = mul i32 %157, -1028477379
  %159 = add i32 %158, %156
  %160 = getelementptr inbounds nuw i8, ptr %155, i64 4
  %161 = tail call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 17)
  %162 = mul i32 %161, 668265263
  br label %163

163:                                              ; preds = %154, %141
  %164 = phi ptr [ %42, %141 ], [ %160, %154 ]
  %165 = phi i32 [ %144, %141 ], [ %162, %154 ]
  %166 = load i32, ptr %164, align 4
  %167 = mul i32 %166, -1028477379
  %168 = add i32 %167, %165
  %169 = tail call i32 @llvm.fshl.i32(i32 %168, i32 %168, i32 17)
  %170 = mul i32 %169, 668265263
  br label %295

171:                                              ; preds = %141
  %172 = load i32, ptr %42, align 8
  %173 = mul i32 %172, -1028477379
  %174 = add i32 %173, %144
  %175 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %176 = tail call i32 @llvm.fshl.i32(i32 %174, i32 %174, i32 17)
  %177 = mul i32 %176, 668265263
  br label %178

178:                                              ; preds = %171, %141
  %179 = phi ptr [ %42, %141 ], [ %175, %171 ]
  %180 = phi i32 [ %144, %141 ], [ %177, %171 ]
  %181 = load i32, ptr %179, align 4
  %182 = mul i32 %181, -1028477379
  %183 = add i32 %182, %180
  %184 = getelementptr inbounds nuw i8, ptr %179, i64 4
  %185 = tail call i32 @llvm.fshl.i32(i32 %183, i32 %183, i32 17)
  %186 = mul i32 %185, 668265263
  br label %187

187:                                              ; preds = %178, %141
  %188 = phi ptr [ %42, %141 ], [ %184, %178 ]
  %189 = phi i32 [ %144, %141 ], [ %186, %178 ]
  %190 = load i32, ptr %188, align 4
  %191 = mul i32 %190, -1028477379
  %192 = add i32 %191, %189
  %193 = getelementptr inbounds nuw i8, ptr %188, i64 4
  %194 = tail call i32 @llvm.fshl.i32(i32 %192, i32 %192, i32 17)
  %195 = mul i32 %194, 668265263
  %196 = load i8, ptr %193, align 1
  %197 = zext i8 %196 to i32
  %198 = mul i32 %197, 374761393
  %199 = add i32 %195, %198
  %200 = tail call i32 @llvm.fshl.i32(i32 %199, i32 %199, i32 11)
  %201 = mul i32 %200, -1640531535
  br label %295

202:                                              ; preds = %141
  %203 = load i32, ptr %42, align 8
  %204 = mul i32 %203, -1028477379
  %205 = add i32 %204, %144
  %206 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %207 = tail call i32 @llvm.fshl.i32(i32 %205, i32 %205, i32 17)
  %208 = mul i32 %207, 668265263
  br label %209

209:                                              ; preds = %202, %141
  %210 = phi ptr [ %42, %141 ], [ %206, %202 ]
  %211 = phi i32 [ %144, %141 ], [ %208, %202 ]
  %212 = load i32, ptr %210, align 4
  %213 = mul i32 %212, -1028477379
  %214 = add i32 %213, %211
  %215 = getelementptr inbounds nuw i8, ptr %210, i64 4
  %216 = tail call i32 @llvm.fshl.i32(i32 %214, i32 %214, i32 17)
  %217 = mul i32 %216, 668265263
  br label %218

218:                                              ; preds = %209, %141
  %219 = phi ptr [ %42, %141 ], [ %215, %209 ]
  %220 = phi i32 [ %144, %141 ], [ %217, %209 ]
  %221 = load i32, ptr %219, align 4
  %222 = mul i32 %221, -1028477379
  %223 = add i32 %222, %220
  %224 = getelementptr inbounds nuw i8, ptr %219, i64 4
  %225 = tail call i32 @llvm.fshl.i32(i32 %223, i32 %223, i32 17)
  %226 = mul i32 %225, 668265263
  %227 = getelementptr inbounds nuw i8, ptr %219, i64 5
  %228 = load i8, ptr %224, align 1
  %229 = zext i8 %228 to i32
  %230 = mul i32 %229, 374761393
  %231 = add i32 %226, %230
  %232 = tail call i32 @llvm.fshl.i32(i32 %231, i32 %231, i32 11)
  %233 = mul i32 %232, -1640531535
  %234 = load i8, ptr %227, align 1
  %235 = zext i8 %234 to i32
  %236 = mul i32 %235, 374761393
  %237 = add i32 %233, %236
  %238 = tail call i32 @llvm.fshl.i32(i32 %237, i32 %237, i32 11)
  %239 = mul i32 %238, -1640531535
  br label %295

240:                                              ; preds = %141
  %241 = load i32, ptr %42, align 8
  %242 = mul i32 %241, -1028477379
  %243 = add i32 %242, %144
  %244 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %245 = tail call i32 @llvm.fshl.i32(i32 %243, i32 %243, i32 17)
  %246 = mul i32 %245, 668265263
  br label %247

247:                                              ; preds = %240, %141
  %248 = phi ptr [ %42, %141 ], [ %244, %240 ]
  %249 = phi i32 [ %144, %141 ], [ %246, %240 ]
  %250 = load i32, ptr %248, align 4
  %251 = mul i32 %250, -1028477379
  %252 = add i32 %251, %249
  %253 = getelementptr inbounds nuw i8, ptr %248, i64 4
  %254 = tail call i32 @llvm.fshl.i32(i32 %252, i32 %252, i32 17)
  %255 = mul i32 %254, 668265263
  br label %256

256:                                              ; preds = %247, %141
  %257 = phi ptr [ %42, %141 ], [ %253, %247 ]
  %258 = phi i32 [ %144, %141 ], [ %255, %247 ]
  %259 = load i32, ptr %257, align 4
  %260 = mul i32 %259, -1028477379
  %261 = add i32 %260, %258
  %262 = getelementptr inbounds nuw i8, ptr %257, i64 4
  %263 = tail call i32 @llvm.fshl.i32(i32 %261, i32 %261, i32 17)
  %264 = mul i32 %263, 668265263
  br label %265

265:                                              ; preds = %256, %141
  %266 = phi ptr [ %42, %141 ], [ %262, %256 ]
  %267 = phi i32 [ %144, %141 ], [ %264, %256 ]
  %268 = getelementptr inbounds nuw i8, ptr %266, i64 1
  %269 = load i8, ptr %266, align 1
  %270 = zext i8 %269 to i32
  %271 = mul i32 %270, 374761393
  %272 = add i32 %271, %267
  %273 = tail call i32 @llvm.fshl.i32(i32 %272, i32 %272, i32 11)
  %274 = mul i32 %273, -1640531535
  br label %275

275:                                              ; preds = %265, %141
  %276 = phi ptr [ %42, %141 ], [ %268, %265 ]
  %277 = phi i32 [ %144, %141 ], [ %274, %265 ]
  %278 = getelementptr inbounds nuw i8, ptr %276, i64 1
  %279 = load i8, ptr %276, align 1
  %280 = zext i8 %279 to i32
  %281 = mul i32 %280, 374761393
  %282 = add i32 %281, %277
  %283 = tail call i32 @llvm.fshl.i32(i32 %282, i32 %282, i32 11)
  %284 = mul i32 %283, -1640531535
  br label %285

285:                                              ; preds = %275, %141
  %286 = phi ptr [ %42, %141 ], [ %278, %275 ]
  %287 = phi i32 [ %144, %141 ], [ %284, %275 ]
  %288 = load i8, ptr %286, align 1
  %289 = zext i8 %288 to i32
  %290 = mul i32 %289, 374761393
  %291 = add i32 %290, %287
  %292 = tail call i32 @llvm.fshl.i32(i32 %291, i32 %291, i32 11)
  %293 = mul i32 %292, -1640531535
  br label %295

294:                                              ; preds = %141
  unreachable

295:                                              ; preds = %141, %163, %187, %218, %285
  %296 = phi i32 [ %239, %218 ], [ %201, %187 ], [ %170, %163 ], [ %144, %141 ], [ %293, %285 ]
  %297 = lshr i32 %296, 15
  %298 = xor i32 %297, %296
  %299 = mul i32 %298, -2048144777
  %300 = lshr i32 %299, 13
  %301 = xor i32 %300, %299
  %302 = mul i32 %301, -1028477379
  %303 = lshr i32 %302, 16
  %304 = xor i32 %303, %302
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #7
  ret i32 %304
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_16_0(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #4 {
  %18 = lshr i64 %1, 32
  %19 = trunc nuw i64 %18 to i32
  %20 = trunc i64 %1 to i32
  %21 = lshr i64 %0, 32
  %22 = trunc nuw i64 %21 to i32
  %23 = trunc i64 %0 to i32
  %24 = add i32 %16, 1640531535
  %25 = add i32 %16, -2048144777
  %26 = add i32 %16, 606290984
  %27 = mul i32 %23, -2048144777
  %28 = add i32 %27, %26
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = freeze i32 %30
  %32 = mul i32 %22, -2048144777
  %33 = add i32 %32, %25
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 13)
  %35 = mul i32 %34, -1640531535
  %36 = freeze i32 %35
  %37 = mul i32 %20, -2048144777
  %38 = add i32 %37, %16
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = freeze i32 %40
  %42 = mul i32 %19, -2048144777
  %43 = add i32 %42, %24
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 13)
  %45 = mul i32 %44, -1640531535
  %46 = freeze i32 %45
  %47 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 7)
  %48 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 1)
  %49 = add i32 %47, %48
  %50 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 12)
  %51 = add i32 %49, %50
  %52 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 18)
  %53 = add i32 %51, %52
  %54 = add i32 %53, 16
  %55 = lshr i32 %54, 15
  %56 = xor i32 %55, %54
  %57 = mul i32 %56, -2048144777
  %58 = lshr i32 %57, 13
  %59 = xor i32 %58, %57
  %60 = mul i32 %59, -1028477379
  %61 = lshr i32 %60, 16
  %62 = xor i32 %61, %60
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_20_13(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #4 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #7
  store i64 %0, ptr %18, align 16
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %21, align 16
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %3, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %4, ptr %23, align 16
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %5, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %6, ptr %25, align 16
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %7, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i64 %8, ptr %27, align 16
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 %9, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 80
  store i64 %10, ptr %29, align 16
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 %11, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 96
  store i64 %12, ptr %31, align 16
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 104
  store i64 %13, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 112
  store i64 %14, ptr %33, align 16
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 120
  store i64 %15, ptr %34, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #7
  %35 = add i32 %16, 606290984
  %36 = add i32 %16, -2048144777
  %37 = add i32 %16, 1640531535
  store i64 4294967316, ptr %19, align 8
  %38 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %35, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 %36, ptr %39, align 4
  %40 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 %16, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i32 %37, ptr %41, align 4
  %42 = getelementptr inbounds nuw i8, ptr %19, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %42, i8 0, i64 20, i1 false)
  %43 = getelementptr inbounds nuw i8, ptr %18, i64 20
  %44 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 40
  %46 = load i32, ptr %38, align 8
  %47 = load i32, ptr %18, align 16
  %48 = mul i32 %47, -2048144777
  %49 = add i32 %48, %46
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 13)
  %51 = mul i32 %50, -1640531535
  %52 = freeze i32 %51
  store i32 %52, ptr %38, align 8
  %53 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %54 = load i32, ptr %39, align 4
  %55 = load i32, ptr %53, align 4
  %56 = mul i32 %55, -2048144777
  %57 = add i32 %56, %54
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  %60 = freeze i32 %59
  store i32 %60, ptr %39, align 4
  %61 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %62 = load i32, ptr %40, align 8
  %63 = load i32, ptr %61, align 8
  %64 = mul i32 %63, -2048144777
  %65 = add i32 %64, %62
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 13)
  %67 = mul i32 %66, -1640531535
  %68 = freeze i32 %67
  store i32 %68, ptr %40, align 8
  %69 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %70 = load i32, ptr %41, align 4
  %71 = load i32, ptr %69, align 4
  %72 = mul i32 %71, -2048144777
  %73 = add i32 %72, %70
  %74 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 13)
  %75 = mul i32 %74, -1640531535
  %76 = freeze i32 %75
  store i32 %76, ptr %41, align 4
  %77 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %78 = load i32, ptr %77, align 16
  store i32 %78, ptr %42, align 8
  store i32 4, ptr %45, align 8
  %79 = load i32, ptr %19, align 8
  %80 = add i32 %79, 13
  store i32 %80, ptr %19, align 8
  %81 = icmp ugt i32 %80, 15
  %82 = zext i1 %81 to i32
  %83 = load i32, ptr %44, align 4
  %84 = or i32 %83, %82
  store i32 %84, ptr %44, align 4
  %85 = getelementptr inbounds nuw i8, ptr %19, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %85, ptr noundef nonnull readonly align 4 dereferenceable(12) %43, i64 12, i1 false)
  %86 = load i32, ptr %38, align 8
  %87 = load i32, ptr %42, align 8
  %88 = mul i32 %87, -2048144777
  %89 = add i32 %88, %86
  %90 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 13)
  %91 = mul i32 %90, -1640531535
  %92 = freeze i32 %91
  store i32 %92, ptr %38, align 8
  %93 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %94 = load i32, ptr %39, align 4
  %95 = load i32, ptr %93, align 4
  %96 = mul i32 %95, -2048144777
  %97 = add i32 %96, %94
  %98 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 13)
  %99 = mul i32 %98, -1640531535
  %100 = freeze i32 %99
  store i32 %100, ptr %39, align 4
  %101 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %102 = load i32, ptr %40, align 8
  %103 = load i32, ptr %101, align 8
  %104 = mul i32 %103, -2048144777
  %105 = add i32 %104, %102
  %106 = tail call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 13)
  %107 = mul i32 %106, -1640531535
  %108 = freeze i32 %107
  store i32 %108, ptr %40, align 8
  %109 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %110 = load i32, ptr %41, align 4
  %111 = load i32, ptr %109, align 4
  %112 = mul i32 %111, -2048144777
  %113 = add i32 %112, %110
  %114 = tail call i32 @llvm.fshl.i32(i32 %113, i32 %113, i32 13)
  %115 = mul i32 %114, -1640531535
  %116 = freeze i32 %115
  store i32 %116, ptr %41, align 4
  %117 = load i32, ptr %45, align 8
  %118 = sub i32 16, %117
  store i32 0, ptr %45, align 8
  %119 = icmp ult i32 %118, 13
  br i1 %119, label %120, label %130

120:                                              ; preds = %17
  %121 = getelementptr inbounds nuw i8, ptr %18, i64 33
  %122 = zext nneg i32 %118 to i64
  %123 = getelementptr inbounds nuw i8, ptr %18, i64 %122
  %124 = getelementptr inbounds nuw i8, ptr %123, i64 20
  %125 = ptrtoint ptr %121 to i64
  %126 = ptrtoint ptr %124 to i64
  %127 = sub i64 %125, %126
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %124, i64 %127, i1 false)
  %128 = trunc i64 %127 to i32
  store i32 %128, ptr %45, align 8
  %129 = and i32 %128, 15
  br label %130

130:                                              ; preds = %17, %120
  %131 = phi i32 [ 0, %17 ], [ %129, %120 ]
  %132 = load i32, ptr %44, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %145, label %134

134:                                              ; preds = %130
  %135 = load i32, ptr %38, align 8
  %136 = call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 1)
  %137 = load i32, ptr %39, align 4
  %138 = call i32 @llvm.fshl.i32(i32 %137, i32 %137, i32 7)
  %139 = add i32 %138, %136
  %140 = load i32, ptr %40, align 8
  %141 = call i32 @llvm.fshl.i32(i32 %140, i32 %140, i32 12)
  %142 = add i32 %139, %141
  %143 = call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 18)
  %144 = add i32 %142, %143
  br label %148

145:                                              ; preds = %130
  %146 = load i32, ptr %40, align 8
  %147 = add i32 %146, 374761393
  br label %148

148:                                              ; preds = %145, %134
  %149 = phi i32 [ %144, %134 ], [ %147, %145 ]
  %150 = load i32, ptr %19, align 8
  %151 = add i32 %150, %149
  switch i32 %131, label %299 [
    i32 12, label %152
    i32 8, label %159
    i32 4, label %168
    i32 13, label %176
    i32 9, label %183
    i32 5, label %192
    i32 14, label %207
    i32 10, label %214
    i32 6, label %223
    i32 15, label %245
    i32 11, label %252
    i32 7, label %261
    i32 3, label %270
    i32 2, label %280
    i32 1, label %290
    i32 0, label %300
  ]

152:                                              ; preds = %148
  %153 = load i32, ptr %42, align 8
  %154 = mul i32 %153, -1028477379
  %155 = add i32 %154, %151
  %156 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %157 = call i32 @llvm.fshl.i32(i32 %155, i32 %155, i32 17)
  %158 = mul i32 %157, 668265263
  br label %159

159:                                              ; preds = %152, %148
  %160 = phi ptr [ %42, %148 ], [ %156, %152 ]
  %161 = phi i32 [ %151, %148 ], [ %158, %152 ]
  %162 = load i32, ptr %160, align 4
  %163 = mul i32 %162, -1028477379
  %164 = add i32 %163, %161
  %165 = getelementptr inbounds nuw i8, ptr %160, i64 4
  %166 = call i32 @llvm.fshl.i32(i32 %164, i32 %164, i32 17)
  %167 = mul i32 %166, 668265263
  br label %168

168:                                              ; preds = %159, %148
  %169 = phi ptr [ %42, %148 ], [ %165, %159 ]
  %170 = phi i32 [ %151, %148 ], [ %167, %159 ]
  %171 = load i32, ptr %169, align 4
  %172 = mul i32 %171, -1028477379
  %173 = add i32 %172, %170
  %174 = call i32 @llvm.fshl.i32(i32 %173, i32 %173, i32 17)
  %175 = mul i32 %174, 668265263
  br label %300

176:                                              ; preds = %148
  %177 = load i32, ptr %42, align 8
  %178 = mul i32 %177, -1028477379
  %179 = add i32 %178, %151
  %180 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %181 = call i32 @llvm.fshl.i32(i32 %179, i32 %179, i32 17)
  %182 = mul i32 %181, 668265263
  br label %183

183:                                              ; preds = %176, %148
  %184 = phi ptr [ %42, %148 ], [ %180, %176 ]
  %185 = phi i32 [ %151, %148 ], [ %182, %176 ]
  %186 = load i32, ptr %184, align 4
  %187 = mul i32 %186, -1028477379
  %188 = add i32 %187, %185
  %189 = getelementptr inbounds nuw i8, ptr %184, i64 4
  %190 = call i32 @llvm.fshl.i32(i32 %188, i32 %188, i32 17)
  %191 = mul i32 %190, 668265263
  br label %192

192:                                              ; preds = %183, %148
  %193 = phi ptr [ %42, %148 ], [ %189, %183 ]
  %194 = phi i32 [ %151, %148 ], [ %191, %183 ]
  %195 = load i32, ptr %193, align 4
  %196 = mul i32 %195, -1028477379
  %197 = add i32 %196, %194
  %198 = getelementptr inbounds nuw i8, ptr %193, i64 4
  %199 = call i32 @llvm.fshl.i32(i32 %197, i32 %197, i32 17)
  %200 = mul i32 %199, 668265263
  %201 = load i8, ptr %198, align 1
  %202 = zext i8 %201 to i32
  %203 = mul i32 %202, 374761393
  %204 = add i32 %200, %203
  %205 = call i32 @llvm.fshl.i32(i32 %204, i32 %204, i32 11)
  %206 = mul i32 %205, -1640531535
  br label %300

207:                                              ; preds = %148
  %208 = load i32, ptr %42, align 8
  %209 = mul i32 %208, -1028477379
  %210 = add i32 %209, %151
  %211 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %212 = call i32 @llvm.fshl.i32(i32 %210, i32 %210, i32 17)
  %213 = mul i32 %212, 668265263
  br label %214

214:                                              ; preds = %207, %148
  %215 = phi ptr [ %42, %148 ], [ %211, %207 ]
  %216 = phi i32 [ %151, %148 ], [ %213, %207 ]
  %217 = load i32, ptr %215, align 4
  %218 = mul i32 %217, -1028477379
  %219 = add i32 %218, %216
  %220 = getelementptr inbounds nuw i8, ptr %215, i64 4
  %221 = call i32 @llvm.fshl.i32(i32 %219, i32 %219, i32 17)
  %222 = mul i32 %221, 668265263
  br label %223

223:                                              ; preds = %214, %148
  %224 = phi ptr [ %42, %148 ], [ %220, %214 ]
  %225 = phi i32 [ %151, %148 ], [ %222, %214 ]
  %226 = load i32, ptr %224, align 4
  %227 = mul i32 %226, -1028477379
  %228 = add i32 %227, %225
  %229 = getelementptr inbounds nuw i8, ptr %224, i64 4
  %230 = call i32 @llvm.fshl.i32(i32 %228, i32 %228, i32 17)
  %231 = mul i32 %230, 668265263
  %232 = getelementptr inbounds nuw i8, ptr %224, i64 5
  %233 = load i8, ptr %229, align 1
  %234 = zext i8 %233 to i32
  %235 = mul i32 %234, 374761393
  %236 = add i32 %231, %235
  %237 = call i32 @llvm.fshl.i32(i32 %236, i32 %236, i32 11)
  %238 = mul i32 %237, -1640531535
  %239 = load i8, ptr %232, align 1
  %240 = zext i8 %239 to i32
  %241 = mul i32 %240, 374761393
  %242 = add i32 %238, %241
  %243 = call i32 @llvm.fshl.i32(i32 %242, i32 %242, i32 11)
  %244 = mul i32 %243, -1640531535
  br label %300

245:                                              ; preds = %148
  %246 = load i32, ptr %42, align 8
  %247 = mul i32 %246, -1028477379
  %248 = add i32 %247, %151
  %249 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %250 = call i32 @llvm.fshl.i32(i32 %248, i32 %248, i32 17)
  %251 = mul i32 %250, 668265263
  br label %252

252:                                              ; preds = %245, %148
  %253 = phi ptr [ %42, %148 ], [ %249, %245 ]
  %254 = phi i32 [ %151, %148 ], [ %251, %245 ]
  %255 = load i32, ptr %253, align 4
  %256 = mul i32 %255, -1028477379
  %257 = add i32 %256, %254
  %258 = getelementptr inbounds nuw i8, ptr %253, i64 4
  %259 = call i32 @llvm.fshl.i32(i32 %257, i32 %257, i32 17)
  %260 = mul i32 %259, 668265263
  br label %261

261:                                              ; preds = %252, %148
  %262 = phi ptr [ %42, %148 ], [ %258, %252 ]
  %263 = phi i32 [ %151, %148 ], [ %260, %252 ]
  %264 = load i32, ptr %262, align 4
  %265 = mul i32 %264, -1028477379
  %266 = add i32 %265, %263
  %267 = getelementptr inbounds nuw i8, ptr %262, i64 4
  %268 = call i32 @llvm.fshl.i32(i32 %266, i32 %266, i32 17)
  %269 = mul i32 %268, 668265263
  br label %270

270:                                              ; preds = %261, %148
  %271 = phi ptr [ %42, %148 ], [ %267, %261 ]
  %272 = phi i32 [ %151, %148 ], [ %269, %261 ]
  %273 = getelementptr inbounds nuw i8, ptr %271, i64 1
  %274 = load i8, ptr %271, align 1
  %275 = zext i8 %274 to i32
  %276 = mul i32 %275, 374761393
  %277 = add i32 %276, %272
  %278 = call i32 @llvm.fshl.i32(i32 %277, i32 %277, i32 11)
  %279 = mul i32 %278, -1640531535
  br label %280

280:                                              ; preds = %270, %148
  %281 = phi ptr [ %42, %148 ], [ %273, %270 ]
  %282 = phi i32 [ %151, %148 ], [ %279, %270 ]
  %283 = getelementptr inbounds nuw i8, ptr %281, i64 1
  %284 = load i8, ptr %281, align 1
  %285 = zext i8 %284 to i32
  %286 = mul i32 %285, 374761393
  %287 = add i32 %286, %282
  %288 = call i32 @llvm.fshl.i32(i32 %287, i32 %287, i32 11)
  %289 = mul i32 %288, -1640531535
  br label %290

290:                                              ; preds = %280, %148
  %291 = phi ptr [ %42, %148 ], [ %283, %280 ]
  %292 = phi i32 [ %151, %148 ], [ %289, %280 ]
  %293 = load i8, ptr %291, align 1
  %294 = zext i8 %293 to i32
  %295 = mul i32 %294, 374761393
  %296 = add i32 %295, %292
  %297 = call i32 @llvm.fshl.i32(i32 %296, i32 %296, i32 11)
  %298 = mul i32 %297, -1640531535
  br label %300

299:                                              ; preds = %148
  unreachable

300:                                              ; preds = %148, %168, %192, %223, %290
  %301 = phi i32 [ %244, %223 ], [ %206, %192 ], [ %175, %168 ], [ %151, %148 ], [ %298, %290 ]
  %302 = lshr i32 %301, 15
  %303 = xor i32 %302, %301
  %304 = mul i32 %303, -2048144777
  %305 = lshr i32 %304, 13
  %306 = xor i32 %305, %304
  %307 = mul i32 %306, -1028477379
  %308 = lshr i32 %307, 16
  %309 = xor i32 %308, %307
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #7
  ret i32 %309
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_31_0(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #4 {
  %18 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %18) #7
  %19 = add i32 %16, 606290984
  %20 = add i32 %16, -2048144777
  %21 = add i32 %16, 1640531535
  store i64 4294967327, ptr %18, align 8
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %19, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i32 %20, ptr %23, align 4
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 %16, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 %21, ptr %25, align 4
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 24
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 40
  %29 = load i32, ptr %22, align 8
  %30 = trunc i64 %0 to i32
  %31 = mul i32 %30, -2048144777
  %32 = add i32 %31, %29
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 13)
  %34 = mul i32 %33, -1640531535
  %35 = freeze i32 %34
  store i32 %35, ptr %22, align 8
  %36 = load i32, ptr %23, align 4
  %37 = lshr i64 %0, 32
  %38 = trunc nuw i64 %37 to i32
  %39 = mul i32 %38, -2048144777
  %40 = add i32 %39, %36
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 13)
  %42 = mul i32 %41, -1640531535
  %43 = freeze i32 %42
  store i32 %43, ptr %23, align 4
  %44 = load i32, ptr %24, align 8
  %45 = trunc i64 %1 to i32
  %46 = mul i32 %45, -2048144777
  %47 = add i32 %46, %44
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 13)
  %49 = mul i32 %48, -1640531535
  %50 = freeze i32 %49
  store i32 %50, ptr %24, align 8
  %51 = load i32, ptr %25, align 4
  %52 = lshr i64 %1, 32
  %53 = trunc nuw i64 %52 to i32
  %54 = mul i32 %53, -2048144777
  %55 = add i32 %54, %51
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 13)
  %57 = mul i32 %56, -1640531535
  %58 = freeze i32 %57
  store i32 %58, ptr %25, align 4
  %59 = getelementptr inbounds nuw i8, ptr %18, i64 39
  store i8 0, ptr %59, align 1
  store i64 %2, ptr %26, align 8
  %60 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %61 = trunc i64 %3 to i56
  store i56 %61, ptr %60, align 8
  store i32 15, ptr %28, align 8
  %62 = load i32, ptr %27, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %17
  %65 = load i32, ptr %22, align 8
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 1)
  %67 = load i32, ptr %23, align 4
  %68 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 7)
  %69 = add i32 %68, %66
  %70 = load i32, ptr %24, align 8
  %71 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 12)
  %72 = add i32 %69, %71
  %73 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 18)
  %74 = add i32 %72, %73
  br label %78

75:                                               ; preds = %17
  %76 = load i32, ptr %24, align 8
  %77 = add i32 %76, 374761393
  br label %78

78:                                               ; preds = %75, %64
  %79 = phi i32 [ %74, %64 ], [ %77, %75 ]
  %80 = load i32, ptr %18, align 8
  %81 = add i32 %80, %79
  %82 = load i32, ptr %28, align 8
  %83 = and i32 %82, 15
  switch i32 %83, label %231 [
    i32 12, label %84
    i32 8, label %91
    i32 4, label %100
    i32 13, label %108
    i32 9, label %115
    i32 5, label %124
    i32 14, label %139
    i32 10, label %146
    i32 6, label %155
    i32 15, label %177
    i32 11, label %184
    i32 7, label %193
    i32 3, label %202
    i32 2, label %212
    i32 1, label %222
    i32 0, label %232
  ]

84:                                               ; preds = %78
  %85 = load i32, ptr %26, align 8
  %86 = mul i32 %85, -1028477379
  %87 = add i32 %86, %81
  %88 = getelementptr inbounds nuw i8, ptr %18, i64 28
  %89 = tail call i32 @llvm.fshl.i32(i32 %87, i32 %87, i32 17)
  %90 = mul i32 %89, 668265263
  br label %91

91:                                               ; preds = %84, %78
  %92 = phi ptr [ %26, %78 ], [ %88, %84 ]
  %93 = phi i32 [ %81, %78 ], [ %90, %84 ]
  %94 = load i32, ptr %92, align 4
  %95 = mul i32 %94, -1028477379
  %96 = add i32 %95, %93
  %97 = getelementptr inbounds nuw i8, ptr %92, i64 4
  %98 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 17)
  %99 = mul i32 %98, 668265263
  br label %100

100:                                              ; preds = %91, %78
  %101 = phi ptr [ %26, %78 ], [ %97, %91 ]
  %102 = phi i32 [ %81, %78 ], [ %99, %91 ]
  %103 = load i32, ptr %101, align 4
  %104 = mul i32 %103, -1028477379
  %105 = add i32 %104, %102
  %106 = tail call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 17)
  %107 = mul i32 %106, 668265263
  br label %232

108:                                              ; preds = %78
  %109 = load i32, ptr %26, align 8
  %110 = mul i32 %109, -1028477379
  %111 = add i32 %110, %81
  %112 = getelementptr inbounds nuw i8, ptr %18, i64 28
  %113 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 17)
  %114 = mul i32 %113, 668265263
  br label %115

115:                                              ; preds = %108, %78
  %116 = phi ptr [ %26, %78 ], [ %112, %108 ]
  %117 = phi i32 [ %81, %78 ], [ %114, %108 ]
  %118 = load i32, ptr %116, align 4
  %119 = mul i32 %118, -1028477379
  %120 = add i32 %119, %117
  %121 = getelementptr inbounds nuw i8, ptr %116, i64 4
  %122 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 17)
  %123 = mul i32 %122, 668265263
  br label %124

124:                                              ; preds = %115, %78
  %125 = phi ptr [ %26, %78 ], [ %121, %115 ]
  %126 = phi i32 [ %81, %78 ], [ %123, %115 ]
  %127 = load i32, ptr %125, align 4
  %128 = mul i32 %127, -1028477379
  %129 = add i32 %128, %126
  %130 = getelementptr inbounds nuw i8, ptr %125, i64 4
  %131 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 17)
  %132 = mul i32 %131, 668265263
  %133 = load i8, ptr %130, align 1
  %134 = zext i8 %133 to i32
  %135 = mul i32 %134, 374761393
  %136 = add i32 %132, %135
  %137 = tail call i32 @llvm.fshl.i32(i32 %136, i32 %136, i32 11)
  %138 = mul i32 %137, -1640531535
  br label %232

139:                                              ; preds = %78
  %140 = load i32, ptr %26, align 8
  %141 = mul i32 %140, -1028477379
  %142 = add i32 %141, %81
  %143 = getelementptr inbounds nuw i8, ptr %18, i64 28
  %144 = tail call i32 @llvm.fshl.i32(i32 %142, i32 %142, i32 17)
  %145 = mul i32 %144, 668265263
  br label %146

146:                                              ; preds = %139, %78
  %147 = phi ptr [ %26, %78 ], [ %143, %139 ]
  %148 = phi i32 [ %81, %78 ], [ %145, %139 ]
  %149 = load i32, ptr %147, align 4
  %150 = mul i32 %149, -1028477379
  %151 = add i32 %150, %148
  %152 = getelementptr inbounds nuw i8, ptr %147, i64 4
  %153 = tail call i32 @llvm.fshl.i32(i32 %151, i32 %151, i32 17)
  %154 = mul i32 %153, 668265263
  br label %155

155:                                              ; preds = %146, %78
  %156 = phi ptr [ %26, %78 ], [ %152, %146 ]
  %157 = phi i32 [ %81, %78 ], [ %154, %146 ]
  %158 = load i32, ptr %156, align 4
  %159 = mul i32 %158, -1028477379
  %160 = add i32 %159, %157
  %161 = getelementptr inbounds nuw i8, ptr %156, i64 4
  %162 = tail call i32 @llvm.fshl.i32(i32 %160, i32 %160, i32 17)
  %163 = mul i32 %162, 668265263
  %164 = getelementptr inbounds nuw i8, ptr %156, i64 5
  %165 = load i8, ptr %161, align 1
  %166 = zext i8 %165 to i32
  %167 = mul i32 %166, 374761393
  %168 = add i32 %163, %167
  %169 = tail call i32 @llvm.fshl.i32(i32 %168, i32 %168, i32 11)
  %170 = mul i32 %169, -1640531535
  %171 = load i8, ptr %164, align 1
  %172 = zext i8 %171 to i32
  %173 = mul i32 %172, 374761393
  %174 = add i32 %170, %173
  %175 = tail call i32 @llvm.fshl.i32(i32 %174, i32 %174, i32 11)
  %176 = mul i32 %175, -1640531535
  br label %232

177:                                              ; preds = %78
  %178 = load i32, ptr %26, align 8
  %179 = mul i32 %178, -1028477379
  %180 = add i32 %179, %81
  %181 = getelementptr inbounds nuw i8, ptr %18, i64 28
  %182 = tail call i32 @llvm.fshl.i32(i32 %180, i32 %180, i32 17)
  %183 = mul i32 %182, 668265263
  br label %184

184:                                              ; preds = %177, %78
  %185 = phi ptr [ %26, %78 ], [ %181, %177 ]
  %186 = phi i32 [ %81, %78 ], [ %183, %177 ]
  %187 = load i32, ptr %185, align 4
  %188 = mul i32 %187, -1028477379
  %189 = add i32 %188, %186
  %190 = getelementptr inbounds nuw i8, ptr %185, i64 4
  %191 = tail call i32 @llvm.fshl.i32(i32 %189, i32 %189, i32 17)
  %192 = mul i32 %191, 668265263
  br label %193

193:                                              ; preds = %184, %78
  %194 = phi ptr [ %26, %78 ], [ %190, %184 ]
  %195 = phi i32 [ %81, %78 ], [ %192, %184 ]
  %196 = load i32, ptr %194, align 4
  %197 = mul i32 %196, -1028477379
  %198 = add i32 %197, %195
  %199 = getelementptr inbounds nuw i8, ptr %194, i64 4
  %200 = tail call i32 @llvm.fshl.i32(i32 %198, i32 %198, i32 17)
  %201 = mul i32 %200, 668265263
  br label %202

202:                                              ; preds = %193, %78
  %203 = phi ptr [ %26, %78 ], [ %199, %193 ]
  %204 = phi i32 [ %81, %78 ], [ %201, %193 ]
  %205 = getelementptr inbounds nuw i8, ptr %203, i64 1
  %206 = load i8, ptr %203, align 1
  %207 = zext i8 %206 to i32
  %208 = mul i32 %207, 374761393
  %209 = add i32 %208, %204
  %210 = tail call i32 @llvm.fshl.i32(i32 %209, i32 %209, i32 11)
  %211 = mul i32 %210, -1640531535
  br label %212

212:                                              ; preds = %202, %78
  %213 = phi ptr [ %26, %78 ], [ %205, %202 ]
  %214 = phi i32 [ %81, %78 ], [ %211, %202 ]
  %215 = getelementptr inbounds nuw i8, ptr %213, i64 1
  %216 = load i8, ptr %213, align 1
  %217 = zext i8 %216 to i32
  %218 = mul i32 %217, 374761393
  %219 = add i32 %218, %214
  %220 = tail call i32 @llvm.fshl.i32(i32 %219, i32 %219, i32 11)
  %221 = mul i32 %220, -1640531535
  br label %222

222:                                              ; preds = %212, %78
  %223 = phi ptr [ %26, %78 ], [ %215, %212 ]
  %224 = phi i32 [ %81, %78 ], [ %221, %212 ]
  %225 = load i8, ptr %223, align 1
  %226 = zext i8 %225 to i32
  %227 = mul i32 %226, 374761393
  %228 = add i32 %227, %224
  %229 = tail call i32 @llvm.fshl.i32(i32 %228, i32 %228, i32 11)
  %230 = mul i32 %229, -1640531535
  br label %232

231:                                              ; preds = %78
  unreachable

232:                                              ; preds = %78, %100, %124, %155, %222
  %233 = phi i32 [ %176, %155 ], [ %138, %124 ], [ %107, %100 ], [ %81, %78 ], [ %230, %222 ]
  %234 = lshr i32 %233, 15
  %235 = xor i32 %234, %233
  %236 = mul i32 %235, -2048144777
  %237 = lshr i32 %236, 13
  %238 = xor i32 %237, %236
  %239 = mul i32 %238, -1028477379
  %240 = lshr i32 %239, 16
  %241 = xor i32 %240, %239
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %18) #7
  ret i32 %241
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_17_30(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #4 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #7
  store i64 %0, ptr %18, align 16
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %21, align 16
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %3, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %4, ptr %23, align 16
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %5, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %6, ptr %25, align 16
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %7, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i64 %8, ptr %27, align 16
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 %9, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 80
  store i64 %10, ptr %29, align 16
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 %11, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 96
  store i64 %12, ptr %31, align 16
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 104
  store i64 %13, ptr %32, align 8
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 112
  store i64 %14, ptr %33, align 16
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 120
  store i64 %15, ptr %34, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #7
  %35 = add i32 %16, 606290984
  %36 = add i32 %16, -2048144777
  %37 = add i32 %16, 1640531535
  store i64 4294967313, ptr %19, align 8
  %38 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %35, ptr %38, align 8
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 %36, ptr %39, align 4
  %40 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 %16, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i32 %37, ptr %41, align 4
  %42 = getelementptr inbounds nuw i8, ptr %19, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %42, i8 0, i64 20, i1 false)
  %43 = getelementptr inbounds nuw i8, ptr %18, i64 17
  %44 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 40
  %46 = load i32, ptr %38, align 8
  %47 = load i32, ptr %18, align 16
  %48 = mul i32 %47, -2048144777
  %49 = add i32 %48, %46
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 13)
  %51 = mul i32 %50, -1640531535
  %52 = freeze i32 %51
  store i32 %52, ptr %38, align 8
  %53 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %54 = load i32, ptr %39, align 4
  %55 = load i32, ptr %53, align 4
  %56 = mul i32 %55, -2048144777
  %57 = add i32 %56, %54
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  %60 = freeze i32 %59
  store i32 %60, ptr %39, align 4
  %61 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %62 = load i32, ptr %40, align 8
  %63 = load i32, ptr %61, align 8
  %64 = mul i32 %63, -2048144777
  %65 = add i32 %64, %62
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 13)
  %67 = mul i32 %66, -1640531535
  %68 = freeze i32 %67
  store i32 %68, ptr %40, align 8
  %69 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %70 = load i32, ptr %41, align 4
  %71 = load i32, ptr %69, align 4
  %72 = mul i32 %71, -2048144777
  %73 = add i32 %72, %70
  %74 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 13)
  %75 = mul i32 %74, -1640531535
  %76 = freeze i32 %75
  store i32 %76, ptr %41, align 4
  %77 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %78 = load i8, ptr %77, align 16
  store i8 %78, ptr %42, align 8
  store i32 1, ptr %45, align 8
  %79 = load i32, ptr %19, align 8
  %80 = add i32 %79, 30
  store i32 %80, ptr %19, align 8
  %81 = load i32, ptr %44, align 4
  %82 = or i32 %81, 1
  store i32 %82, ptr %44, align 4
  %83 = getelementptr inbounds nuw i8, ptr %19, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %83, ptr noundef nonnull readonly align 1 dereferenceable(15) %43, i64 15, i1 false)
  %84 = load i32, ptr %38, align 8
  %85 = load i32, ptr %42, align 8
  %86 = mul i32 %85, -2048144777
  %87 = add i32 %86, %84
  %88 = tail call i32 @llvm.fshl.i32(i32 %87, i32 %87, i32 13)
  %89 = mul i32 %88, -1640531535
  %90 = freeze i32 %89
  store i32 %90, ptr %38, align 8
  %91 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %92 = load i32, ptr %39, align 4
  %93 = load i32, ptr %91, align 4
  %94 = mul i32 %93, -2048144777
  %95 = add i32 %94, %92
  %96 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 13)
  %97 = mul i32 %96, -1640531535
  %98 = freeze i32 %97
  store i32 %98, ptr %39, align 4
  %99 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %100 = load i32, ptr %40, align 8
  %101 = load i32, ptr %99, align 8
  %102 = mul i32 %101, -2048144777
  %103 = add i32 %102, %100
  %104 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 13)
  %105 = mul i32 %104, -1640531535
  %106 = freeze i32 %105
  store i32 %106, ptr %40, align 8
  %107 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %108 = load i32, ptr %41, align 4
  %109 = load i32, ptr %107, align 4
  %110 = mul i32 %109, -2048144777
  %111 = add i32 %110, %108
  %112 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 13)
  %113 = mul i32 %112, -1640531535
  %114 = freeze i32 %113
  store i32 %114, ptr %41, align 4
  %115 = load i32, ptr %45, align 8
  %116 = sub i32 16, %115
  %117 = zext i32 %116 to i64
  %118 = add nuw nsw i64 %117, 17
  store i32 0, ptr %45, align 8
  %119 = icmp ugt i32 %116, 14
  br i1 %119, label %154, label %120

120:                                              ; preds = %17
  %121 = getelementptr inbounds nuw i8, ptr %18, i64 %118
  %122 = load i32, ptr %38, align 8
  %123 = load i32, ptr %121, align 1
  %124 = mul i32 %123, -2048144777
  %125 = add i32 %124, %122
  %126 = tail call i32 @llvm.fshl.i32(i32 %125, i32 %125, i32 13)
  %127 = mul i32 %126, -1640531535
  %128 = freeze i32 %127
  store i32 %128, ptr %38, align 8
  %129 = getelementptr inbounds nuw i8, ptr %121, i64 4
  %130 = load i32, ptr %39, align 4
  %131 = load i32, ptr %129, align 1
  %132 = mul i32 %131, -2048144777
  %133 = add i32 %132, %130
  %134 = tail call i32 @llvm.fshl.i32(i32 %133, i32 %133, i32 13)
  %135 = mul i32 %134, -1640531535
  %136 = freeze i32 %135
  store i32 %136, ptr %39, align 4
  %137 = getelementptr inbounds nuw i8, ptr %121, i64 8
  %138 = load i32, ptr %40, align 8
  %139 = load i32, ptr %137, align 1
  %140 = mul i32 %139, -2048144777
  %141 = add i32 %140, %138
  %142 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 13)
  %143 = mul i32 %142, -1640531535
  %144 = freeze i32 %143
  store i32 %144, ptr %40, align 8
  %145 = getelementptr inbounds nuw i8, ptr %121, i64 12
  %146 = load i32, ptr %41, align 4
  %147 = load i32, ptr %145, align 1
  %148 = mul i32 %147, -2048144777
  %149 = add i32 %148, %146
  %150 = tail call i32 @llvm.fshl.i32(i32 %149, i32 %149, i32 13)
  %151 = mul i32 %150, -1640531535
  %152 = freeze i32 %151
  store i32 %152, ptr %41, align 4
  %153 = add nuw nsw i64 %117, 33
  br label %154

154:                                              ; preds = %120, %17
  %155 = phi i32 [ %114, %17 ], [ %152, %120 ]
  %156 = phi i64 [ %118, %17 ], [ %153, %120 ]
  %157 = icmp slt i64 %156, 47
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = getelementptr inbounds nuw i8, ptr %18, i64 %156
  %160 = sub nsw i64 47, %156
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %159, i64 %160, i1 false)
  %161 = trunc i64 %160 to i32
  store i32 %161, ptr %45, align 8
  br label %162

162:                                              ; preds = %154, %158
  %163 = load i32, ptr %44, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %176, label %165

165:                                              ; preds = %162
  %166 = load i32, ptr %38, align 8
  %167 = tail call i32 @llvm.fshl.i32(i32 %166, i32 %166, i32 1)
  %168 = load i32, ptr %39, align 4
  %169 = tail call i32 @llvm.fshl.i32(i32 %168, i32 %168, i32 7)
  %170 = add i32 %169, %167
  %171 = load i32, ptr %40, align 8
  %172 = tail call i32 @llvm.fshl.i32(i32 %171, i32 %171, i32 12)
  %173 = add i32 %170, %172
  %174 = tail call i32 @llvm.fshl.i32(i32 %155, i32 %155, i32 18)
  %175 = add i32 %173, %174
  br label %179

176:                                              ; preds = %162
  %177 = load i32, ptr %40, align 8
  %178 = add i32 %177, 374761393
  br label %179

179:                                              ; preds = %176, %165
  %180 = phi i32 [ %175, %165 ], [ %178, %176 ]
  %181 = load i32, ptr %19, align 8
  %182 = add i32 %181, %180
  %183 = load i32, ptr %45, align 8
  %184 = and i32 %183, 15
  switch i32 %184, label %332 [
    i32 12, label %185
    i32 8, label %192
    i32 4, label %201
    i32 13, label %209
    i32 9, label %216
    i32 5, label %225
    i32 14, label %240
    i32 10, label %247
    i32 6, label %256
    i32 15, label %278
    i32 11, label %285
    i32 7, label %294
    i32 3, label %303
    i32 2, label %313
    i32 1, label %323
    i32 0, label %333
  ]

185:                                              ; preds = %179
  %186 = load i32, ptr %42, align 8
  %187 = mul i32 %186, -1028477379
  %188 = add i32 %187, %182
  %189 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %190 = tail call i32 @llvm.fshl.i32(i32 %188, i32 %188, i32 17)
  %191 = mul i32 %190, 668265263
  br label %192

192:                                              ; preds = %185, %179
  %193 = phi ptr [ %42, %179 ], [ %189, %185 ]
  %194 = phi i32 [ %182, %179 ], [ %191, %185 ]
  %195 = load i32, ptr %193, align 4
  %196 = mul i32 %195, -1028477379
  %197 = add i32 %196, %194
  %198 = getelementptr inbounds nuw i8, ptr %193, i64 4
  %199 = tail call i32 @llvm.fshl.i32(i32 %197, i32 %197, i32 17)
  %200 = mul i32 %199, 668265263
  br label %201

201:                                              ; preds = %192, %179
  %202 = phi ptr [ %42, %179 ], [ %198, %192 ]
  %203 = phi i32 [ %182, %179 ], [ %200, %192 ]
  %204 = load i32, ptr %202, align 4
  %205 = mul i32 %204, -1028477379
  %206 = add i32 %205, %203
  %207 = tail call i32 @llvm.fshl.i32(i32 %206, i32 %206, i32 17)
  %208 = mul i32 %207, 668265263
  br label %333

209:                                              ; preds = %179
  %210 = load i32, ptr %42, align 8
  %211 = mul i32 %210, -1028477379
  %212 = add i32 %211, %182
  %213 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %214 = tail call i32 @llvm.fshl.i32(i32 %212, i32 %212, i32 17)
  %215 = mul i32 %214, 668265263
  br label %216

216:                                              ; preds = %209, %179
  %217 = phi ptr [ %42, %179 ], [ %213, %209 ]
  %218 = phi i32 [ %182, %179 ], [ %215, %209 ]
  %219 = load i32, ptr %217, align 4
  %220 = mul i32 %219, -1028477379
  %221 = add i32 %220, %218
  %222 = getelementptr inbounds nuw i8, ptr %217, i64 4
  %223 = tail call i32 @llvm.fshl.i32(i32 %221, i32 %221, i32 17)
  %224 = mul i32 %223, 668265263
  br label %225

225:                                              ; preds = %216, %179
  %226 = phi ptr [ %42, %179 ], [ %222, %216 ]
  %227 = phi i32 [ %182, %179 ], [ %224, %216 ]
  %228 = load i32, ptr %226, align 4
  %229 = mul i32 %228, -1028477379
  %230 = add i32 %229, %227
  %231 = getelementptr inbounds nuw i8, ptr %226, i64 4
  %232 = tail call i32 @llvm.fshl.i32(i32 %230, i32 %230, i32 17)
  %233 = mul i32 %232, 668265263
  %234 = load i8, ptr %231, align 1
  %235 = zext i8 %234 to i32
  %236 = mul i32 %235, 374761393
  %237 = add i32 %233, %236
  %238 = tail call i32 @llvm.fshl.i32(i32 %237, i32 %237, i32 11)
  %239 = mul i32 %238, -1640531535
  br label %333

240:                                              ; preds = %179
  %241 = load i32, ptr %42, align 8
  %242 = mul i32 %241, -1028477379
  %243 = add i32 %242, %182
  %244 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %245 = tail call i32 @llvm.fshl.i32(i32 %243, i32 %243, i32 17)
  %246 = mul i32 %245, 668265263
  br label %247

247:                                              ; preds = %240, %179
  %248 = phi ptr [ %42, %179 ], [ %244, %240 ]
  %249 = phi i32 [ %182, %179 ], [ %246, %240 ]
  %250 = load i32, ptr %248, align 4
  %251 = mul i32 %250, -1028477379
  %252 = add i32 %251, %249
  %253 = getelementptr inbounds nuw i8, ptr %248, i64 4
  %254 = tail call i32 @llvm.fshl.i32(i32 %252, i32 %252, i32 17)
  %255 = mul i32 %254, 668265263
  br label %256

256:                                              ; preds = %247, %179
  %257 = phi ptr [ %42, %179 ], [ %253, %247 ]
  %258 = phi i32 [ %182, %179 ], [ %255, %247 ]
  %259 = load i32, ptr %257, align 4
  %260 = mul i32 %259, -1028477379
  %261 = add i32 %260, %258
  %262 = getelementptr inbounds nuw i8, ptr %257, i64 4
  %263 = tail call i32 @llvm.fshl.i32(i32 %261, i32 %261, i32 17)
  %264 = mul i32 %263, 668265263
  %265 = getelementptr inbounds nuw i8, ptr %257, i64 5
  %266 = load i8, ptr %262, align 1
  %267 = zext i8 %266 to i32
  %268 = mul i32 %267, 374761393
  %269 = add i32 %264, %268
  %270 = tail call i32 @llvm.fshl.i32(i32 %269, i32 %269, i32 11)
  %271 = mul i32 %270, -1640531535
  %272 = load i8, ptr %265, align 1
  %273 = zext i8 %272 to i32
  %274 = mul i32 %273, 374761393
  %275 = add i32 %271, %274
  %276 = tail call i32 @llvm.fshl.i32(i32 %275, i32 %275, i32 11)
  %277 = mul i32 %276, -1640531535
  br label %333

278:                                              ; preds = %179
  %279 = load i32, ptr %42, align 8
  %280 = mul i32 %279, -1028477379
  %281 = add i32 %280, %182
  %282 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %283 = tail call i32 @llvm.fshl.i32(i32 %281, i32 %281, i32 17)
  %284 = mul i32 %283, 668265263
  br label %285

285:                                              ; preds = %278, %179
  %286 = phi ptr [ %42, %179 ], [ %282, %278 ]
  %287 = phi i32 [ %182, %179 ], [ %284, %278 ]
  %288 = load i32, ptr %286, align 4
  %289 = mul i32 %288, -1028477379
  %290 = add i32 %289, %287
  %291 = getelementptr inbounds nuw i8, ptr %286, i64 4
  %292 = tail call i32 @llvm.fshl.i32(i32 %290, i32 %290, i32 17)
  %293 = mul i32 %292, 668265263
  br label %294

294:                                              ; preds = %285, %179
  %295 = phi ptr [ %42, %179 ], [ %291, %285 ]
  %296 = phi i32 [ %182, %179 ], [ %293, %285 ]
  %297 = load i32, ptr %295, align 4
  %298 = mul i32 %297, -1028477379
  %299 = add i32 %298, %296
  %300 = getelementptr inbounds nuw i8, ptr %295, i64 4
  %301 = tail call i32 @llvm.fshl.i32(i32 %299, i32 %299, i32 17)
  %302 = mul i32 %301, 668265263
  br label %303

303:                                              ; preds = %294, %179
  %304 = phi ptr [ %42, %179 ], [ %300, %294 ]
  %305 = phi i32 [ %182, %179 ], [ %302, %294 ]
  %306 = getelementptr inbounds nuw i8, ptr %304, i64 1
  %307 = load i8, ptr %304, align 1
  %308 = zext i8 %307 to i32
  %309 = mul i32 %308, 374761393
  %310 = add i32 %309, %305
  %311 = tail call i32 @llvm.fshl.i32(i32 %310, i32 %310, i32 11)
  %312 = mul i32 %311, -1640531535
  br label %313

313:                                              ; preds = %303, %179
  %314 = phi ptr [ %42, %179 ], [ %306, %303 ]
  %315 = phi i32 [ %182, %179 ], [ %312, %303 ]
  %316 = getelementptr inbounds nuw i8, ptr %314, i64 1
  %317 = load i8, ptr %314, align 1
  %318 = zext i8 %317 to i32
  %319 = mul i32 %318, 374761393
  %320 = add i32 %319, %315
  %321 = tail call i32 @llvm.fshl.i32(i32 %320, i32 %320, i32 11)
  %322 = mul i32 %321, -1640531535
  br label %323

323:                                              ; preds = %313, %179
  %324 = phi ptr [ %42, %179 ], [ %316, %313 ]
  %325 = phi i32 [ %182, %179 ], [ %322, %313 ]
  %326 = load i8, ptr %324, align 1
  %327 = zext i8 %326 to i32
  %328 = mul i32 %327, 374761393
  %329 = add i32 %328, %325
  %330 = tail call i32 @llvm.fshl.i32(i32 %329, i32 %329, i32 11)
  %331 = mul i32 %330, -1640531535
  br label %333

332:                                              ; preds = %179
  unreachable

333:                                              ; preds = %179, %201, %225, %256, %323
  %334 = phi i32 [ %277, %256 ], [ %239, %225 ], [ %208, %201 ], [ %182, %179 ], [ %331, %323 ]
  %335 = lshr i32 %334, 15
  %336 = xor i32 %335, %334
  %337 = mul i32 %336, -2048144777
  %338 = lshr i32 %337, 13
  %339 = xor i32 %338, %337
  %340 = mul i32 %339, -1028477379
  %341 = lshr i32 %340, 16
  %342 = xor i32 %341, %340
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #7
  ret i32 %342
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 2148097137}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
