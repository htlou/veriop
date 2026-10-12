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

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
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
  %26 = add i32 %16, 374761408
  %27 = mul i32 %21, -1028477379
  %28 = add i32 %27, %26
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 17)
  %30 = mul i32 %29, 668265263
  %31 = load i32, ptr %19, align 4
  %32 = mul i32 %31, -1028477379
  %33 = add i32 %32, %30
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 17)
  %35 = mul i32 %34, 668265263
  %36 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %37 = load i32, ptr %36, align 4
  %38 = mul i32 %37, -1028477379
  %39 = add i32 %38, %35
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 17)
  %41 = mul i32 %40, 668265263
  %42 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i32
  %45 = mul i32 %44, 374761393
  %46 = add i32 %45, %41
  %47 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 11)
  %48 = mul i32 %47, -1640531535
  %49 = getelementptr inbounds nuw i8, ptr %19, i64 9
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = mul i32 %51, 374761393
  %53 = add i32 %52, %48
  %54 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 11)
  %55 = mul i32 %54, -1640531535
  %56 = getelementptr inbounds nuw i8, ptr %19, i64 10
  %57 = load i8, ptr %56, align 2
  %58 = zext i8 %57 to i32
  %59 = mul i32 %58, 374761393
  %60 = add i32 %59, %55
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

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @target_s32_5_10(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
  %18 = lshr i64 %1, 32
  %19 = trunc nuw i64 %18 to i32
  %20 = lshr i64 %1, 40
  %21 = trunc nuw nsw i64 %20 to i32
  %22 = lshr i64 %1, 48
  %23 = trunc nuw nsw i64 %22 to i32
  %24 = add i32 %16, 374761408
  %25 = trunc i64 %1 to i32
  %26 = lshr i64 %0, 32
  %27 = trunc nuw i64 %26 to i32
  %28 = and i32 %27, 255
  %29 = lshr i64 %0, 32
  %30 = trunc nuw i64 %29 to i32
  %31 = and i32 %30, -256
  %32 = or disjoint i32 %28, %31
  %33 = trunc i64 %0 to i32
  %34 = mul i32 %33, -1028477379
  %35 = add i32 %34, %24
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 17)
  %37 = mul i32 %36, 668265263
  %38 = mul i32 %32, -1028477379
  %39 = add i32 %38, %37
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 17)
  %41 = mul i32 %40, 668265263
  %42 = mul i32 %25, -1028477379
  %43 = add i32 %42, %41
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 17)
  %45 = mul i32 %44, 668265263
  %46 = and i32 %19, 255
  %47 = mul i32 %46, 374761393
  %48 = add i32 %47, %45
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 11)
  %50 = mul i32 %49, -1640531535
  %51 = and i32 %21, 255
  %52 = mul i32 %51, 374761393
  %53 = add i32 %52, %50
  %54 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 11)
  %55 = mul i32 %54, -1640531535
  %56 = and i32 %23, 255
  %57 = mul i32 %56, 374761393
  %58 = add i32 %57, %55
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

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @target_s32_15_0(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #4 {
  %18 = lshr i64 %1, 32
  %19 = trunc nuw i64 %18 to i32
  %20 = lshr i64 %1, 40
  %21 = trunc nuw nsw i64 %20 to i32
  %22 = lshr i64 %1, 48
  %23 = trunc nuw nsw i64 %22 to i32
  %24 = add i32 %16, 374761408
  %25 = trunc i64 %1 to i32
  %26 = lshr i64 %0, 32
  %27 = trunc nuw i64 %26 to i32
  %28 = trunc i64 %0 to i32
  %29 = mul i32 %28, -1028477379
  %30 = add i32 %29, %24
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 17)
  %32 = mul i32 %31, 668265263
  %33 = mul i32 %27, -1028477379
  %34 = add i32 %33, %32
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 17)
  %36 = mul i32 %35, 668265263
  %37 = mul i32 %25, -1028477379
  %38 = add i32 %37, %36
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 17)
  %40 = mul i32 %39, 668265263
  %41 = and i32 %19, 255
  %42 = mul i32 %41, 374761393
  %43 = add i32 %42, %40
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 11)
  %45 = mul i32 %44, -1640531535
  %46 = and i32 %21, 255
  %47 = mul i32 %46, 374761393
  %48 = add i32 %47, %45
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 11)
  %50 = mul i32 %49, -1640531535
  %51 = and i32 %23, 255
  %52 = mul i32 %51, 374761393
  %53 = add i32 %52, %50
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
define dso_local i32 @target_s32_10_10(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #5 {
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
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 12
  %40 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %41 = getelementptr inbounds nuw i8, ptr %19, i64 20
  %42 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %43 = getelementptr inbounds nuw i8, ptr %18, i64 10
  %44 = getelementptr inbounds nuw i8, ptr %19, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %42, ptr noundef nonnull readonly align 16 dereferenceable(10) %18, i64 10, i1 false)
  store i32 10, ptr %44, align 8
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %45, ptr noundef nonnull readonly align 2 dereferenceable(6) %43, i64 6, i1 false)
  %46 = load i32, ptr %42, align 8
  %47 = mul i32 %46, -2048144777
  %48 = add i32 %47, %35
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 13)
  %50 = mul i32 %49, -1640531535
  %51 = freeze i32 %50
  store i32 %51, ptr %38, align 8
  %52 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %53 = load i32, ptr %52, align 4
  %54 = mul i32 %53, -2048144777
  %55 = add i32 %54, %36
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 13)
  %57 = mul i32 %56, -1640531535
  %58 = freeze i32 %57
  store i32 %58, ptr %39, align 4
  %59 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %60 = load i32, ptr %59, align 8
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %61, %16
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13)
  %64 = mul i32 %63, -1640531535
  %65 = freeze i32 %64
  store i32 %65, ptr %40, align 8
  %66 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %67 = load i32, ptr %66, align 4
  %68 = mul i32 %67, -2048144777
  %69 = add i32 %68, %37
  %70 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 13)
  %71 = mul i32 %70, -1640531535
  %72 = freeze i32 %71
  store i32 %72, ptr %41, align 4
  %73 = load i32, ptr %44, align 8
  %74 = sub i32 16, %73
  store i32 0, ptr %44, align 8
  %75 = icmp ult i32 %74, 10
  br i1 %75, label %76, label %86

76:                                               ; preds = %17
  %77 = getelementptr inbounds nuw i8, ptr %18, i64 20
  %78 = zext nneg i32 %74 to i64
  %79 = getelementptr inbounds nuw i8, ptr %18, i64 %78
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 10
  %81 = ptrtoint ptr %77 to i64
  %82 = ptrtoint ptr %80 to i64
  %83 = sub i64 %81, %82
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %80, i64 %83, i1 false)
  %84 = trunc i64 %83 to i32
  store i32 %84, ptr %44, align 8
  %85 = and i32 %84, 15
  br label %86

86:                                               ; preds = %17, %76
  %87 = phi i32 [ 0, %17 ], [ %85, %76 ]
  %88 = call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 7)
  %89 = call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 1)
  %90 = add i32 %88, %89
  %91 = call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 12)
  %92 = add i32 %90, %91
  %93 = call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 18)
  %94 = add i32 %92, %93
  %95 = add i32 %94, 20
  %96 = zext nneg i32 %87 to i64
  %97 = icmp samesign ugt i32 %87, 3
  br i1 %97, label %98, label %127

98:                                               ; preds = %86
  %99 = add nsw i64 %96, -4
  %100 = lshr i64 %99, 2
  %101 = add nuw nsw i64 %100, 1
  %102 = and i64 %101, 7
  %103 = and i64 %99, 28
  %104 = icmp eq i64 %103, 28
  br i1 %104, label %119, label %105

105:                                              ; preds = %98, %105
  %106 = phi i32 [ %115, %105 ], [ %95, %98 ]
  %107 = phi i64 [ %116, %105 ], [ %96, %98 ]
  %108 = phi ptr [ %113, %105 ], [ %42, %98 ]
  %109 = phi i64 [ %117, %105 ], [ 0, %98 ]
  %110 = load i32, ptr %108, align 4
  %111 = mul i32 %110, -1028477379
  %112 = add i32 %111, %106
  %113 = getelementptr inbounds nuw i8, ptr %108, i64 4
  %114 = call i32 @llvm.fshl.i32(i32 %112, i32 %112, i32 17)
  %115 = mul i32 %114, 668265263
  %116 = add nsw i64 %107, -4
  %117 = add i64 %109, 1
  %118 = icmp eq i64 %117, %102
  br i1 %118, label %119, label %105

119:                                              ; preds = %105, %98
  %120 = phi i32 [ %95, %98 ], [ %115, %105 ]
  %121 = phi i64 [ %96, %98 ], [ %116, %105 ]
  %122 = phi ptr [ %42, %98 ], [ %113, %105 ]
  %123 = phi ptr [ poison, %98 ], [ %113, %105 ]
  %124 = phi i32 [ poison, %98 ], [ %115, %105 ]
  %125 = phi i64 [ poison, %98 ], [ %116, %105 ]
  %126 = icmp ult i64 %99, 28
  br i1 %126, label %127, label %156

127:                                              ; preds = %119, %156, %86
  %128 = phi ptr [ %42, %86 ], [ %123, %119 ], [ %205, %156 ]
  %129 = phi i64 [ %96, %86 ], [ %125, %119 ], [ %208, %156 ]
  %130 = phi i32 [ %95, %86 ], [ %124, %119 ], [ %207, %156 ]
  %131 = icmp eq i64 %129, 0
  br i1 %131, label %272, label %132

132:                                              ; preds = %127
  %133 = and i64 %129, 7
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %150, label %135

135:                                              ; preds = %132, %135
  %136 = phi i32 [ %146, %135 ], [ %130, %132 ]
  %137 = phi i64 [ %147, %135 ], [ %129, %132 ]
  %138 = phi ptr [ %140, %135 ], [ %128, %132 ]
  %139 = phi i64 [ %148, %135 ], [ 0, %132 ]
  %140 = getelementptr inbounds nuw i8, ptr %138, i64 1
  %141 = load i8, ptr %138, align 1
  %142 = zext i8 %141 to i32
  %143 = mul i32 %142, 374761393
  %144 = add i32 %143, %136
  %145 = call i32 @llvm.fshl.i32(i32 %144, i32 %144, i32 11)
  %146 = mul i32 %145, -1640531535
  %147 = add nsw i64 %137, -1
  %148 = add i64 %139, 1
  %149 = icmp eq i64 %148, %133
  br i1 %149, label %150, label %135

150:                                              ; preds = %135, %132
  %151 = phi i32 [ poison, %132 ], [ %146, %135 ]
  %152 = phi i32 [ %130, %132 ], [ %146, %135 ]
  %153 = phi i64 [ %129, %132 ], [ %147, %135 ]
  %154 = phi ptr [ %128, %132 ], [ %140, %135 ]
  %155 = icmp ult i64 %129, 8
  br i1 %155, label %272, label %210

156:                                              ; preds = %119, %156
  %157 = phi i32 [ %207, %156 ], [ %120, %119 ]
  %158 = phi i64 [ %208, %156 ], [ %121, %119 ]
  %159 = phi ptr [ %205, %156 ], [ %122, %119 ]
  %160 = load i32, ptr %159, align 4
  %161 = mul i32 %160, -1028477379
  %162 = add i32 %161, %157
  %163 = getelementptr inbounds nuw i8, ptr %159, i64 4
  %164 = call i32 @llvm.fshl.i32(i32 %162, i32 %162, i32 17)
  %165 = mul i32 %164, 668265263
  %166 = load i32, ptr %163, align 4
  %167 = mul i32 %166, -1028477379
  %168 = add i32 %167, %165
  %169 = getelementptr inbounds nuw i8, ptr %159, i64 8
  %170 = call i32 @llvm.fshl.i32(i32 %168, i32 %168, i32 17)
  %171 = mul i32 %170, 668265263
  %172 = load i32, ptr %169, align 4
  %173 = mul i32 %172, -1028477379
  %174 = add i32 %173, %171
  %175 = getelementptr inbounds nuw i8, ptr %159, i64 12
  %176 = call i32 @llvm.fshl.i32(i32 %174, i32 %174, i32 17)
  %177 = mul i32 %176, 668265263
  %178 = load i32, ptr %175, align 4
  %179 = mul i32 %178, -1028477379
  %180 = add i32 %179, %177
  %181 = getelementptr inbounds nuw i8, ptr %159, i64 16
  %182 = call i32 @llvm.fshl.i32(i32 %180, i32 %180, i32 17)
  %183 = mul i32 %182, 668265263
  %184 = load i32, ptr %181, align 4
  %185 = mul i32 %184, -1028477379
  %186 = add i32 %185, %183
  %187 = getelementptr inbounds nuw i8, ptr %159, i64 20
  %188 = call i32 @llvm.fshl.i32(i32 %186, i32 %186, i32 17)
  %189 = mul i32 %188, 668265263
  %190 = load i32, ptr %187, align 4
  %191 = mul i32 %190, -1028477379
  %192 = add i32 %191, %189
  %193 = getelementptr inbounds nuw i8, ptr %159, i64 24
  %194 = call i32 @llvm.fshl.i32(i32 %192, i32 %192, i32 17)
  %195 = mul i32 %194, 668265263
  %196 = load i32, ptr %193, align 4
  %197 = mul i32 %196, -1028477379
  %198 = add i32 %197, %195
  %199 = getelementptr inbounds nuw i8, ptr %159, i64 28
  %200 = call i32 @llvm.fshl.i32(i32 %198, i32 %198, i32 17)
  %201 = mul i32 %200, 668265263
  %202 = load i32, ptr %199, align 4
  %203 = mul i32 %202, -1028477379
  %204 = add i32 %203, %201
  %205 = getelementptr inbounds nuw i8, ptr %159, i64 32
  %206 = call i32 @llvm.fshl.i32(i32 %204, i32 %204, i32 17)
  %207 = mul i32 %206, 668265263
  %208 = add nsw i64 %158, -32
  %209 = icmp ugt i64 %208, 3
  br i1 %209, label %156, label %127

210:                                              ; preds = %150, %210
  %211 = phi i32 [ %269, %210 ], [ %152, %150 ]
  %212 = phi i64 [ %270, %210 ], [ %153, %150 ]
  %213 = phi ptr [ %263, %210 ], [ %154, %150 ]
  %214 = getelementptr inbounds nuw i8, ptr %213, i64 1
  %215 = load i8, ptr %213, align 1
  %216 = zext i8 %215 to i32
  %217 = mul i32 %216, 374761393
  %218 = add i32 %217, %211
  %219 = call i32 @llvm.fshl.i32(i32 %218, i32 %218, i32 11)
  %220 = mul i32 %219, -1640531535
  %221 = getelementptr inbounds nuw i8, ptr %213, i64 2
  %222 = load i8, ptr %214, align 1
  %223 = zext i8 %222 to i32
  %224 = mul i32 %223, 374761393
  %225 = add i32 %224, %220
  %226 = call i32 @llvm.fshl.i32(i32 %225, i32 %225, i32 11)
  %227 = mul i32 %226, -1640531535
  %228 = getelementptr inbounds nuw i8, ptr %213, i64 3
  %229 = load i8, ptr %221, align 1
  %230 = zext i8 %229 to i32
  %231 = mul i32 %230, 374761393
  %232 = add i32 %231, %227
  %233 = call i32 @llvm.fshl.i32(i32 %232, i32 %232, i32 11)
  %234 = mul i32 %233, -1640531535
  %235 = getelementptr inbounds nuw i8, ptr %213, i64 4
  %236 = load i8, ptr %228, align 1
  %237 = zext i8 %236 to i32
  %238 = mul i32 %237, 374761393
  %239 = add i32 %238, %234
  %240 = call i32 @llvm.fshl.i32(i32 %239, i32 %239, i32 11)
  %241 = mul i32 %240, -1640531535
  %242 = getelementptr inbounds nuw i8, ptr %213, i64 5
  %243 = load i8, ptr %235, align 1
  %244 = zext i8 %243 to i32
  %245 = mul i32 %244, 374761393
  %246 = add i32 %245, %241
  %247 = call i32 @llvm.fshl.i32(i32 %246, i32 %246, i32 11)
  %248 = mul i32 %247, -1640531535
  %249 = getelementptr inbounds nuw i8, ptr %213, i64 6
  %250 = load i8, ptr %242, align 1
  %251 = zext i8 %250 to i32
  %252 = mul i32 %251, 374761393
  %253 = add i32 %252, %248
  %254 = call i32 @llvm.fshl.i32(i32 %253, i32 %253, i32 11)
  %255 = mul i32 %254, -1640531535
  %256 = getelementptr inbounds nuw i8, ptr %213, i64 7
  %257 = load i8, ptr %249, align 1
  %258 = zext i8 %257 to i32
  %259 = mul i32 %258, 374761393
  %260 = add i32 %259, %255
  %261 = call i32 @llvm.fshl.i32(i32 %260, i32 %260, i32 11)
  %262 = mul i32 %261, -1640531535
  %263 = getelementptr inbounds nuw i8, ptr %213, i64 8
  %264 = load i8, ptr %256, align 1
  %265 = zext i8 %264 to i32
  %266 = mul i32 %265, 374761393
  %267 = add i32 %266, %262
  %268 = call i32 @llvm.fshl.i32(i32 %267, i32 %267, i32 11)
  %269 = mul i32 %268, -1640531535
  %270 = add nsw i64 %212, -8
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %210

272:                                              ; preds = %150, %210, %127
  %273 = phi i32 [ %130, %127 ], [ %151, %150 ], [ %269, %210 ]
  %274 = lshr i32 %273, 15
  %275 = xor i32 %274, %273
  %276 = mul i32 %275, -2048144777
  %277 = lshr i32 %276, 13
  %278 = xor i32 %277, %276
  %279 = mul i32 %278, -1028477379
  %280 = lshr i32 %279, 16
  %281 = xor i32 %280, %279
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #7
  ret i32 %281
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_3_20(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #5 {
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
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 12
  %40 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %41 = getelementptr inbounds nuw i8, ptr %19, i64 20
  %42 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %43 = getelementptr inbounds nuw i8, ptr %18, i64 3
  %44 = getelementptr inbounds nuw i8, ptr %19, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %42, ptr noundef nonnull readonly align 16 dereferenceable(3) %18, i64 3, i1 false)
  store i32 3, ptr %44, align 8
  %45 = getelementptr inbounds nuw i8, ptr %19, i64 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %45, ptr noundef nonnull readonly align 1 dereferenceable(13) %43, i64 13, i1 false)
  %46 = load i32, ptr %42, align 8
  %47 = mul i32 %46, -2048144777
  %48 = add i32 %47, %35
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 13)
  %50 = mul i32 %49, -1640531535
  %51 = freeze i32 %50
  store i32 %51, ptr %38, align 8
  %52 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %53 = load i32, ptr %52, align 4
  %54 = mul i32 %53, -2048144777
  %55 = add i32 %54, %36
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 13)
  %57 = mul i32 %56, -1640531535
  %58 = freeze i32 %57
  store i32 %58, ptr %39, align 4
  %59 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %60 = load i32, ptr %59, align 8
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %61, %16
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13)
  %64 = mul i32 %63, -1640531535
  %65 = freeze i32 %64
  store i32 %65, ptr %40, align 8
  %66 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %67 = load i32, ptr %66, align 4
  %68 = mul i32 %67, -2048144777
  %69 = add i32 %68, %37
  %70 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 13)
  %71 = mul i32 %70, -1640531535
  %72 = freeze i32 %71
  store i32 %72, ptr %41, align 4
  %73 = load i32, ptr %44, align 8
  %74 = sub i32 16, %73
  %75 = zext i32 %74 to i64
  %76 = add nuw nsw i64 %75, 3
  store i32 0, ptr %44, align 8
  %77 = icmp ugt i32 %74, 4
  br i1 %77, label %108, label %78

78:                                               ; preds = %17
  %79 = getelementptr inbounds nuw i8, ptr %18, i64 %76
  %80 = load i32, ptr %79, align 1
  %81 = mul i32 %80, -2048144777
  %82 = add i32 %81, %51
  %83 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 13)
  %84 = mul i32 %83, -1640531535
  %85 = freeze i32 %84
  %86 = getelementptr inbounds nuw i8, ptr %79, i64 4
  %87 = load i32, ptr %86, align 1
  %88 = mul i32 %87, -2048144777
  %89 = add i32 %88, %58
  %90 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 13)
  %91 = mul i32 %90, -1640531535
  %92 = freeze i32 %91
  %93 = getelementptr inbounds nuw i8, ptr %79, i64 8
  %94 = load i32, ptr %93, align 1
  %95 = mul i32 %94, -2048144777
  %96 = add i32 %95, %65
  %97 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 13)
  %98 = mul i32 %97, -1640531535
  %99 = freeze i32 %98
  %100 = getelementptr inbounds nuw i8, ptr %79, i64 12
  %101 = load i32, ptr %100, align 1
  %102 = mul i32 %101, -2048144777
  %103 = add i32 %102, %72
  %104 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 13)
  %105 = mul i32 %104, -1640531535
  %106 = freeze i32 %105
  %107 = add nuw nsw i64 %75, 19
  store i32 %85, ptr %38, align 8
  store i32 %92, ptr %39, align 4
  store i32 %99, ptr %40, align 8
  store i32 %106, ptr %41, align 4
  br label %108

108:                                              ; preds = %78, %17
  %109 = phi i32 [ %72, %17 ], [ %106, %78 ]
  %110 = phi i32 [ %65, %17 ], [ %99, %78 ]
  %111 = phi i32 [ %58, %17 ], [ %92, %78 ]
  %112 = phi i32 [ %51, %17 ], [ %85, %78 ]
  %113 = phi i64 [ %76, %17 ], [ %107, %78 ]
  %114 = icmp samesign ult i64 %113, 23
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = getelementptr inbounds nuw i8, ptr %18, i64 %113
  %117 = sub nuw nsw i64 23, %113
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %116, i64 %117, i1 false)
  %118 = trunc nuw i64 %117 to i32
  store i32 %118, ptr %44, align 8
  %119 = and i32 %118, 15
  br label %120

120:                                              ; preds = %108, %115
  %121 = phi i32 [ 0, %108 ], [ %119, %115 ]
  %122 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 7)
  %123 = tail call i32 @llvm.fshl.i32(i32 %112, i32 %112, i32 1)
  %124 = add i32 %122, %123
  %125 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 12)
  %126 = add i32 %124, %125
  %127 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 18)
  %128 = add i32 %126, %127
  %129 = add i32 %128, 23
  %130 = zext nneg i32 %121 to i64
  %131 = icmp samesign ugt i32 %121, 3
  br i1 %131, label %132, label %161

132:                                              ; preds = %120
  %133 = add nsw i64 %130, -4
  %134 = lshr i64 %133, 2
  %135 = add nuw nsw i64 %134, 1
  %136 = and i64 %135, 7
  %137 = and i64 %133, 28
  %138 = icmp eq i64 %137, 28
  br i1 %138, label %153, label %139

139:                                              ; preds = %132, %139
  %140 = phi i32 [ %149, %139 ], [ %129, %132 ]
  %141 = phi i64 [ %150, %139 ], [ %130, %132 ]
  %142 = phi ptr [ %147, %139 ], [ %42, %132 ]
  %143 = phi i64 [ %151, %139 ], [ 0, %132 ]
  %144 = load i32, ptr %142, align 4
  %145 = mul i32 %144, -1028477379
  %146 = add i32 %145, %140
  %147 = getelementptr inbounds nuw i8, ptr %142, i64 4
  %148 = tail call i32 @llvm.fshl.i32(i32 %146, i32 %146, i32 17)
  %149 = mul i32 %148, 668265263
  %150 = add nsw i64 %141, -4
  %151 = add i64 %143, 1
  %152 = icmp eq i64 %151, %136
  br i1 %152, label %153, label %139

153:                                              ; preds = %139, %132
  %154 = phi i32 [ %129, %132 ], [ %149, %139 ]
  %155 = phi i64 [ %130, %132 ], [ %150, %139 ]
  %156 = phi ptr [ %42, %132 ], [ %147, %139 ]
  %157 = phi ptr [ poison, %132 ], [ %147, %139 ]
  %158 = phi i32 [ poison, %132 ], [ %149, %139 ]
  %159 = phi i64 [ poison, %132 ], [ %150, %139 ]
  %160 = icmp ult i64 %133, 28
  br i1 %160, label %161, label %190

161:                                              ; preds = %153, %190, %120
  %162 = phi ptr [ %42, %120 ], [ %157, %153 ], [ %239, %190 ]
  %163 = phi i64 [ %130, %120 ], [ %159, %153 ], [ %242, %190 ]
  %164 = phi i32 [ %129, %120 ], [ %158, %153 ], [ %241, %190 ]
  %165 = icmp eq i64 %163, 0
  br i1 %165, label %306, label %166

166:                                              ; preds = %161
  %167 = and i64 %163, 7
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %184, label %169

169:                                              ; preds = %166, %169
  %170 = phi i32 [ %180, %169 ], [ %164, %166 ]
  %171 = phi i64 [ %181, %169 ], [ %163, %166 ]
  %172 = phi ptr [ %174, %169 ], [ %162, %166 ]
  %173 = phi i64 [ %182, %169 ], [ 0, %166 ]
  %174 = getelementptr inbounds nuw i8, ptr %172, i64 1
  %175 = load i8, ptr %172, align 1
  %176 = zext i8 %175 to i32
  %177 = mul i32 %176, 374761393
  %178 = add i32 %177, %170
  %179 = tail call i32 @llvm.fshl.i32(i32 %178, i32 %178, i32 11)
  %180 = mul i32 %179, -1640531535
  %181 = add nsw i64 %171, -1
  %182 = add i64 %173, 1
  %183 = icmp eq i64 %182, %167
  br i1 %183, label %184, label %169

184:                                              ; preds = %169, %166
  %185 = phi i32 [ poison, %166 ], [ %180, %169 ]
  %186 = phi i32 [ %164, %166 ], [ %180, %169 ]
  %187 = phi i64 [ %163, %166 ], [ %181, %169 ]
  %188 = phi ptr [ %162, %166 ], [ %174, %169 ]
  %189 = icmp ult i64 %163, 8
  br i1 %189, label %306, label %244

190:                                              ; preds = %153, %190
  %191 = phi i32 [ %241, %190 ], [ %154, %153 ]
  %192 = phi i64 [ %242, %190 ], [ %155, %153 ]
  %193 = phi ptr [ %239, %190 ], [ %156, %153 ]
  %194 = load i32, ptr %193, align 4
  %195 = mul i32 %194, -1028477379
  %196 = add i32 %195, %191
  %197 = getelementptr inbounds nuw i8, ptr %193, i64 4
  %198 = tail call i32 @llvm.fshl.i32(i32 %196, i32 %196, i32 17)
  %199 = mul i32 %198, 668265263
  %200 = load i32, ptr %197, align 4
  %201 = mul i32 %200, -1028477379
  %202 = add i32 %201, %199
  %203 = getelementptr inbounds nuw i8, ptr %193, i64 8
  %204 = tail call i32 @llvm.fshl.i32(i32 %202, i32 %202, i32 17)
  %205 = mul i32 %204, 668265263
  %206 = load i32, ptr %203, align 4
  %207 = mul i32 %206, -1028477379
  %208 = add i32 %207, %205
  %209 = getelementptr inbounds nuw i8, ptr %193, i64 12
  %210 = tail call i32 @llvm.fshl.i32(i32 %208, i32 %208, i32 17)
  %211 = mul i32 %210, 668265263
  %212 = load i32, ptr %209, align 4
  %213 = mul i32 %212, -1028477379
  %214 = add i32 %213, %211
  %215 = getelementptr inbounds nuw i8, ptr %193, i64 16
  %216 = tail call i32 @llvm.fshl.i32(i32 %214, i32 %214, i32 17)
  %217 = mul i32 %216, 668265263
  %218 = load i32, ptr %215, align 4
  %219 = mul i32 %218, -1028477379
  %220 = add i32 %219, %217
  %221 = getelementptr inbounds nuw i8, ptr %193, i64 20
  %222 = tail call i32 @llvm.fshl.i32(i32 %220, i32 %220, i32 17)
  %223 = mul i32 %222, 668265263
  %224 = load i32, ptr %221, align 4
  %225 = mul i32 %224, -1028477379
  %226 = add i32 %225, %223
  %227 = getelementptr inbounds nuw i8, ptr %193, i64 24
  %228 = tail call i32 @llvm.fshl.i32(i32 %226, i32 %226, i32 17)
  %229 = mul i32 %228, 668265263
  %230 = load i32, ptr %227, align 4
  %231 = mul i32 %230, -1028477379
  %232 = add i32 %231, %229
  %233 = getelementptr inbounds nuw i8, ptr %193, i64 28
  %234 = tail call i32 @llvm.fshl.i32(i32 %232, i32 %232, i32 17)
  %235 = mul i32 %234, 668265263
  %236 = load i32, ptr %233, align 4
  %237 = mul i32 %236, -1028477379
  %238 = add i32 %237, %235
  %239 = getelementptr inbounds nuw i8, ptr %193, i64 32
  %240 = tail call i32 @llvm.fshl.i32(i32 %238, i32 %238, i32 17)
  %241 = mul i32 %240, 668265263
  %242 = add nsw i64 %192, -32
  %243 = icmp ugt i64 %242, 3
  br i1 %243, label %190, label %161

244:                                              ; preds = %184, %244
  %245 = phi i32 [ %303, %244 ], [ %186, %184 ]
  %246 = phi i64 [ %304, %244 ], [ %187, %184 ]
  %247 = phi ptr [ %297, %244 ], [ %188, %184 ]
  %248 = getelementptr inbounds nuw i8, ptr %247, i64 1
  %249 = load i8, ptr %247, align 1
  %250 = zext i8 %249 to i32
  %251 = mul i32 %250, 374761393
  %252 = add i32 %251, %245
  %253 = tail call i32 @llvm.fshl.i32(i32 %252, i32 %252, i32 11)
  %254 = mul i32 %253, -1640531535
  %255 = getelementptr inbounds nuw i8, ptr %247, i64 2
  %256 = load i8, ptr %248, align 1
  %257 = zext i8 %256 to i32
  %258 = mul i32 %257, 374761393
  %259 = add i32 %258, %254
  %260 = tail call i32 @llvm.fshl.i32(i32 %259, i32 %259, i32 11)
  %261 = mul i32 %260, -1640531535
  %262 = getelementptr inbounds nuw i8, ptr %247, i64 3
  %263 = load i8, ptr %255, align 1
  %264 = zext i8 %263 to i32
  %265 = mul i32 %264, 374761393
  %266 = add i32 %265, %261
  %267 = tail call i32 @llvm.fshl.i32(i32 %266, i32 %266, i32 11)
  %268 = mul i32 %267, -1640531535
  %269 = getelementptr inbounds nuw i8, ptr %247, i64 4
  %270 = load i8, ptr %262, align 1
  %271 = zext i8 %270 to i32
  %272 = mul i32 %271, 374761393
  %273 = add i32 %272, %268
  %274 = tail call i32 @llvm.fshl.i32(i32 %273, i32 %273, i32 11)
  %275 = mul i32 %274, -1640531535
  %276 = getelementptr inbounds nuw i8, ptr %247, i64 5
  %277 = load i8, ptr %269, align 1
  %278 = zext i8 %277 to i32
  %279 = mul i32 %278, 374761393
  %280 = add i32 %279, %275
  %281 = tail call i32 @llvm.fshl.i32(i32 %280, i32 %280, i32 11)
  %282 = mul i32 %281, -1640531535
  %283 = getelementptr inbounds nuw i8, ptr %247, i64 6
  %284 = load i8, ptr %276, align 1
  %285 = zext i8 %284 to i32
  %286 = mul i32 %285, 374761393
  %287 = add i32 %286, %282
  %288 = tail call i32 @llvm.fshl.i32(i32 %287, i32 %287, i32 11)
  %289 = mul i32 %288, -1640531535
  %290 = getelementptr inbounds nuw i8, ptr %247, i64 7
  %291 = load i8, ptr %283, align 1
  %292 = zext i8 %291 to i32
  %293 = mul i32 %292, 374761393
  %294 = add i32 %293, %289
  %295 = tail call i32 @llvm.fshl.i32(i32 %294, i32 %294, i32 11)
  %296 = mul i32 %295, -1640531535
  %297 = getelementptr inbounds nuw i8, ptr %247, i64 8
  %298 = load i8, ptr %290, align 1
  %299 = zext i8 %298 to i32
  %300 = mul i32 %299, 374761393
  %301 = add i32 %300, %296
  %302 = tail call i32 @llvm.fshl.i32(i32 %301, i32 %301, i32 11)
  %303 = mul i32 %302, -1640531535
  %304 = add nsw i64 %246, -8
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %306, label %244

306:                                              ; preds = %184, %244, %161
  %307 = phi i32 [ %164, %161 ], [ %185, %184 ], [ %303, %244 ]
  %308 = lshr i32 %307, 15
  %309 = xor i32 %308, %307
  %310 = mul i32 %309, -2048144777
  %311 = lshr i32 %310, 13
  %312 = xor i32 %311, %310
  %313 = mul i32 %312, -1028477379
  %314 = lshr i32 %313, 16
  %315 = xor i32 %314, %313
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #7
  ret i32 %315
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_16_0(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #5 {
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
  %47 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 1)
  %48 = add i32 %47, 16
  %49 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 7)
  %50 = add i32 %48, %49
  %51 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 12)
  %52 = add i32 %50, %51
  %53 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 18)
  %54 = add i32 %52, %53
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
define dso_local i32 @target_s32_20_13(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #5 {
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
  store i64 4294967329, ptr %19, align 8
  %38 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %39 = getelementptr inbounds nuw i8, ptr %19, i64 12
  %40 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %41 = getelementptr inbounds nuw i8, ptr %19, i64 20
  %42 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %43 = getelementptr inbounds nuw i8, ptr %18, i64 20
  %44 = getelementptr inbounds nuw i8, ptr %19, i64 40
  %45 = load i32, ptr %18, align 16
  %46 = mul i32 %45, -2048144777
  %47 = add i32 %46, %35
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 13)
  %49 = mul i32 %48, -1640531535
  %50 = freeze i32 %49
  %51 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %52 = load i32, ptr %51, align 4
  %53 = mul i32 %52, -2048144777
  %54 = add i32 %53, %36
  %55 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 13)
  %56 = mul i32 %55, -1640531535
  %57 = freeze i32 %56
  %58 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %59 = load i32, ptr %58, align 8
  %60 = mul i32 %59, -2048144777
  %61 = add i32 %60, %16
  %62 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 13)
  %63 = mul i32 %62, -1640531535
  %64 = freeze i32 %63
  %65 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %66 = load i32, ptr %65, align 4
  %67 = mul i32 %66, -2048144777
  %68 = add i32 %67, %37
  %69 = tail call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 13)
  %70 = mul i32 %69, -1640531535
  %71 = freeze i32 %70
  %72 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %73 = load i32, ptr %72, align 16
  store i32 %73, ptr %42, align 8
  store i32 4, ptr %44, align 8
  %74 = getelementptr inbounds nuw i8, ptr %19, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %74, ptr noundef nonnull readonly align 4 dereferenceable(12) %43, i64 12, i1 false)
  %75 = mul i32 %73, -2048144777
  %76 = add i32 %75, %50
  %77 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 13)
  %78 = mul i32 %77, -1640531535
  %79 = freeze i32 %78
  store i32 %79, ptr %38, align 8
  %80 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %81 = load i32, ptr %80, align 4
  %82 = mul i32 %81, -2048144777
  %83 = add i32 %82, %57
  %84 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 13)
  %85 = mul i32 %84, -1640531535
  %86 = freeze i32 %85
  store i32 %86, ptr %39, align 4
  %87 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %88 = load i32, ptr %87, align 8
  %89 = mul i32 %88, -2048144777
  %90 = add i32 %89, %64
  %91 = tail call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 13)
  %92 = mul i32 %91, -1640531535
  %93 = freeze i32 %92
  store i32 %93, ptr %40, align 8
  %94 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %95 = load i32, ptr %94, align 4
  %96 = mul i32 %95, -2048144777
  %97 = add i32 %96, %71
  %98 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 13)
  %99 = mul i32 %98, -1640531535
  %100 = freeze i32 %99
  store i32 %100, ptr %41, align 4
  %101 = load i32, ptr %44, align 8
  %102 = sub i32 16, %101
  store i32 0, ptr %44, align 8
  %103 = icmp ult i32 %102, 13
  br i1 %103, label %104, label %114

104:                                              ; preds = %17
  %105 = getelementptr inbounds nuw i8, ptr %18, i64 33
  %106 = zext nneg i32 %102 to i64
  %107 = getelementptr inbounds nuw i8, ptr %18, i64 %106
  %108 = getelementptr inbounds nuw i8, ptr %107, i64 20
  %109 = ptrtoint ptr %105 to i64
  %110 = ptrtoint ptr %108 to i64
  %111 = sub i64 %109, %110
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %108, i64 %111, i1 false)
  %112 = trunc i64 %111 to i32
  store i32 %112, ptr %44, align 8
  %113 = and i32 %112, 15
  br label %114

114:                                              ; preds = %17, %104
  %115 = phi i32 [ 0, %17 ], [ %113, %104 ]
  %116 = call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 7)
  %117 = call i32 @llvm.fshl.i32(i32 %79, i32 %79, i32 1)
  %118 = add i32 %116, %117
  %119 = call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 12)
  %120 = add i32 %118, %119
  %121 = call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 18)
  %122 = add i32 %120, %121
  %123 = add i32 %122, 33
  %124 = zext nneg i32 %115 to i64
  %125 = icmp samesign ugt i32 %115, 3
  br i1 %125, label %126, label %155

126:                                              ; preds = %114
  %127 = add nsw i64 %124, -4
  %128 = lshr i64 %127, 2
  %129 = add nuw nsw i64 %128, 1
  %130 = and i64 %129, 7
  %131 = and i64 %127, 28
  %132 = icmp eq i64 %131, 28
  br i1 %132, label %147, label %133

133:                                              ; preds = %126, %133
  %134 = phi i32 [ %143, %133 ], [ %123, %126 ]
  %135 = phi i64 [ %144, %133 ], [ %124, %126 ]
  %136 = phi ptr [ %141, %133 ], [ %42, %126 ]
  %137 = phi i64 [ %145, %133 ], [ 0, %126 ]
  %138 = load i32, ptr %136, align 4
  %139 = mul i32 %138, -1028477379
  %140 = add i32 %139, %134
  %141 = getelementptr inbounds nuw i8, ptr %136, i64 4
  %142 = call i32 @llvm.fshl.i32(i32 %140, i32 %140, i32 17)
  %143 = mul i32 %142, 668265263
  %144 = add nsw i64 %135, -4
  %145 = add i64 %137, 1
  %146 = icmp eq i64 %145, %130
  br i1 %146, label %147, label %133

147:                                              ; preds = %133, %126
  %148 = phi i32 [ %123, %126 ], [ %143, %133 ]
  %149 = phi i64 [ %124, %126 ], [ %144, %133 ]
  %150 = phi ptr [ %42, %126 ], [ %141, %133 ]
  %151 = phi ptr [ poison, %126 ], [ %141, %133 ]
  %152 = phi i32 [ poison, %126 ], [ %143, %133 ]
  %153 = phi i64 [ poison, %126 ], [ %144, %133 ]
  %154 = icmp ult i64 %127, 28
  br i1 %154, label %155, label %184

155:                                              ; preds = %147, %184, %114
  %156 = phi ptr [ %42, %114 ], [ %151, %147 ], [ %233, %184 ]
  %157 = phi i64 [ %124, %114 ], [ %153, %147 ], [ %236, %184 ]
  %158 = phi i32 [ %123, %114 ], [ %152, %147 ], [ %235, %184 ]
  %159 = icmp eq i64 %157, 0
  br i1 %159, label %300, label %160

160:                                              ; preds = %155
  %161 = and i64 %157, 7
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %178, label %163

163:                                              ; preds = %160, %163
  %164 = phi i32 [ %174, %163 ], [ %158, %160 ]
  %165 = phi i64 [ %175, %163 ], [ %157, %160 ]
  %166 = phi ptr [ %168, %163 ], [ %156, %160 ]
  %167 = phi i64 [ %176, %163 ], [ 0, %160 ]
  %168 = getelementptr inbounds nuw i8, ptr %166, i64 1
  %169 = load i8, ptr %166, align 1
  %170 = zext i8 %169 to i32
  %171 = mul i32 %170, 374761393
  %172 = add i32 %171, %164
  %173 = call i32 @llvm.fshl.i32(i32 %172, i32 %172, i32 11)
  %174 = mul i32 %173, -1640531535
  %175 = add nsw i64 %165, -1
  %176 = add i64 %167, 1
  %177 = icmp eq i64 %176, %161
  br i1 %177, label %178, label %163

178:                                              ; preds = %163, %160
  %179 = phi i32 [ poison, %160 ], [ %174, %163 ]
  %180 = phi i32 [ %158, %160 ], [ %174, %163 ]
  %181 = phi i64 [ %157, %160 ], [ %175, %163 ]
  %182 = phi ptr [ %156, %160 ], [ %168, %163 ]
  %183 = icmp ult i64 %157, 8
  br i1 %183, label %300, label %238

184:                                              ; preds = %147, %184
  %185 = phi i32 [ %235, %184 ], [ %148, %147 ]
  %186 = phi i64 [ %236, %184 ], [ %149, %147 ]
  %187 = phi ptr [ %233, %184 ], [ %150, %147 ]
  %188 = load i32, ptr %187, align 4
  %189 = mul i32 %188, -1028477379
  %190 = add i32 %189, %185
  %191 = getelementptr inbounds nuw i8, ptr %187, i64 4
  %192 = call i32 @llvm.fshl.i32(i32 %190, i32 %190, i32 17)
  %193 = mul i32 %192, 668265263
  %194 = load i32, ptr %191, align 4
  %195 = mul i32 %194, -1028477379
  %196 = add i32 %195, %193
  %197 = getelementptr inbounds nuw i8, ptr %187, i64 8
  %198 = call i32 @llvm.fshl.i32(i32 %196, i32 %196, i32 17)
  %199 = mul i32 %198, 668265263
  %200 = load i32, ptr %197, align 4
  %201 = mul i32 %200, -1028477379
  %202 = add i32 %201, %199
  %203 = getelementptr inbounds nuw i8, ptr %187, i64 12
  %204 = call i32 @llvm.fshl.i32(i32 %202, i32 %202, i32 17)
  %205 = mul i32 %204, 668265263
  %206 = load i32, ptr %203, align 4
  %207 = mul i32 %206, -1028477379
  %208 = add i32 %207, %205
  %209 = getelementptr inbounds nuw i8, ptr %187, i64 16
  %210 = call i32 @llvm.fshl.i32(i32 %208, i32 %208, i32 17)
  %211 = mul i32 %210, 668265263
  %212 = load i32, ptr %209, align 4
  %213 = mul i32 %212, -1028477379
  %214 = add i32 %213, %211
  %215 = getelementptr inbounds nuw i8, ptr %187, i64 20
  %216 = call i32 @llvm.fshl.i32(i32 %214, i32 %214, i32 17)
  %217 = mul i32 %216, 668265263
  %218 = load i32, ptr %215, align 4
  %219 = mul i32 %218, -1028477379
  %220 = add i32 %219, %217
  %221 = getelementptr inbounds nuw i8, ptr %187, i64 24
  %222 = call i32 @llvm.fshl.i32(i32 %220, i32 %220, i32 17)
  %223 = mul i32 %222, 668265263
  %224 = load i32, ptr %221, align 4
  %225 = mul i32 %224, -1028477379
  %226 = add i32 %225, %223
  %227 = getelementptr inbounds nuw i8, ptr %187, i64 28
  %228 = call i32 @llvm.fshl.i32(i32 %226, i32 %226, i32 17)
  %229 = mul i32 %228, 668265263
  %230 = load i32, ptr %227, align 4
  %231 = mul i32 %230, -1028477379
  %232 = add i32 %231, %229
  %233 = getelementptr inbounds nuw i8, ptr %187, i64 32
  %234 = call i32 @llvm.fshl.i32(i32 %232, i32 %232, i32 17)
  %235 = mul i32 %234, 668265263
  %236 = add nsw i64 %186, -32
  %237 = icmp ugt i64 %236, 3
  br i1 %237, label %184, label %155

238:                                              ; preds = %178, %238
  %239 = phi i32 [ %297, %238 ], [ %180, %178 ]
  %240 = phi i64 [ %298, %238 ], [ %181, %178 ]
  %241 = phi ptr [ %291, %238 ], [ %182, %178 ]
  %242 = getelementptr inbounds nuw i8, ptr %241, i64 1
  %243 = load i8, ptr %241, align 1
  %244 = zext i8 %243 to i32
  %245 = mul i32 %244, 374761393
  %246 = add i32 %245, %239
  %247 = call i32 @llvm.fshl.i32(i32 %246, i32 %246, i32 11)
  %248 = mul i32 %247, -1640531535
  %249 = getelementptr inbounds nuw i8, ptr %241, i64 2
  %250 = load i8, ptr %242, align 1
  %251 = zext i8 %250 to i32
  %252 = mul i32 %251, 374761393
  %253 = add i32 %252, %248
  %254 = call i32 @llvm.fshl.i32(i32 %253, i32 %253, i32 11)
  %255 = mul i32 %254, -1640531535
  %256 = getelementptr inbounds nuw i8, ptr %241, i64 3
  %257 = load i8, ptr %249, align 1
  %258 = zext i8 %257 to i32
  %259 = mul i32 %258, 374761393
  %260 = add i32 %259, %255
  %261 = call i32 @llvm.fshl.i32(i32 %260, i32 %260, i32 11)
  %262 = mul i32 %261, -1640531535
  %263 = getelementptr inbounds nuw i8, ptr %241, i64 4
  %264 = load i8, ptr %256, align 1
  %265 = zext i8 %264 to i32
  %266 = mul i32 %265, 374761393
  %267 = add i32 %266, %262
  %268 = call i32 @llvm.fshl.i32(i32 %267, i32 %267, i32 11)
  %269 = mul i32 %268, -1640531535
  %270 = getelementptr inbounds nuw i8, ptr %241, i64 5
  %271 = load i8, ptr %263, align 1
  %272 = zext i8 %271 to i32
  %273 = mul i32 %272, 374761393
  %274 = add i32 %273, %269
  %275 = call i32 @llvm.fshl.i32(i32 %274, i32 %274, i32 11)
  %276 = mul i32 %275, -1640531535
  %277 = getelementptr inbounds nuw i8, ptr %241, i64 6
  %278 = load i8, ptr %270, align 1
  %279 = zext i8 %278 to i32
  %280 = mul i32 %279, 374761393
  %281 = add i32 %280, %276
  %282 = call i32 @llvm.fshl.i32(i32 %281, i32 %281, i32 11)
  %283 = mul i32 %282, -1640531535
  %284 = getelementptr inbounds nuw i8, ptr %241, i64 7
  %285 = load i8, ptr %277, align 1
  %286 = zext i8 %285 to i32
  %287 = mul i32 %286, 374761393
  %288 = add i32 %287, %283
  %289 = call i32 @llvm.fshl.i32(i32 %288, i32 %288, i32 11)
  %290 = mul i32 %289, -1640531535
  %291 = getelementptr inbounds nuw i8, ptr %241, i64 8
  %292 = load i8, ptr %284, align 1
  %293 = zext i8 %292 to i32
  %294 = mul i32 %293, 374761393
  %295 = add i32 %294, %290
  %296 = call i32 @llvm.fshl.i32(i32 %295, i32 %295, i32 11)
  %297 = mul i32 %296, -1640531535
  %298 = add nsw i64 %240, -8
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %300, label %238

300:                                              ; preds = %178, %238, %155
  %301 = phi i32 [ %158, %155 ], [ %179, %178 ], [ %297, %238 ]
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
define dso_local i32 @target_s32_31_0(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #5 {
  %18 = add i32 %16, 606290984
  %19 = add i32 %16, -2048144777
  %20 = add i32 %16, 1640531535
  %21 = trunc i64 %0 to i32
  %22 = mul i32 %21, -2048144777
  %23 = add i32 %22, %18
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 13)
  %25 = mul i32 %24, -1640531535
  %26 = freeze i32 %25
  %27 = lshr i64 %0, 32
  %28 = trunc nuw i64 %27 to i32
  %29 = mul i32 %28, -2048144777
  %30 = add i32 %29, %19
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 13)
  %32 = mul i32 %31, -1640531535
  %33 = freeze i32 %32
  %34 = trunc i64 %1 to i32
  %35 = mul i32 %34, -2048144777
  %36 = add i32 %35, %16
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 13)
  %38 = mul i32 %37, -1640531535
  %39 = freeze i32 %38
  %40 = lshr i64 %1, 32
  %41 = trunc nuw i64 %40 to i32
  %42 = mul i32 %41, -2048144777
  %43 = add i32 %42, %20
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 13)
  %45 = mul i32 %44, -1640531535
  %46 = freeze i32 %45
  %47 = lshr i64 %3, 32
  %48 = trunc nuw i64 %47 to i32
  %49 = lshr i64 %3, 40
  %50 = trunc nuw nsw i64 %49 to i32
  %51 = lshr i64 %3, 48
  %52 = trunc nuw nsw i64 %51 to i32
  %53 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 1)
  %54 = add i32 %53, 31
  %55 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 7)
  %56 = add i32 %54, %55
  %57 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 12)
  %58 = add i32 %56, %57
  %59 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 18)
  %60 = add i32 %58, %59
  %61 = trunc i64 %3 to i32
  %62 = lshr i64 %2, 32
  %63 = trunc nuw i64 %62 to i32
  %64 = trunc i64 %2 to i32
  %65 = mul i32 %64, -1028477379
  %66 = add i32 %65, %60
  %67 = tail call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 17)
  %68 = mul i32 %67, 668265263
  %69 = mul i32 %63, -1028477379
  %70 = add i32 %69, %68
  %71 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 17)
  %72 = mul i32 %71, 668265263
  %73 = mul i32 %61, -1028477379
  %74 = add i32 %73, %72
  %75 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 17)
  %76 = mul i32 %75, 668265263
  %77 = and i32 %48, 255
  %78 = mul i32 %77, 374761393
  %79 = add i32 %78, %76
  %80 = tail call i32 @llvm.fshl.i32(i32 %79, i32 %79, i32 11)
  %81 = mul i32 %80, -1640531535
  %82 = and i32 %50, 255
  %83 = mul i32 %82, 374761393
  %84 = add i32 %83, %81
  %85 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 11)
  %86 = mul i32 %85, -1640531535
  %87 = and i32 %52, 255
  %88 = mul i32 %87, 374761393
  %89 = add i32 %88, %86
  %90 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 11)
  %91 = mul i32 %90, -1640531535
  %92 = lshr i32 %91, 15
  %93 = xor i32 %92, %91
  %94 = mul i32 %93, -2048144777
  %95 = lshr i32 %94, 13
  %96 = xor i32 %95, %94
  %97 = mul i32 %96, -1028477379
  %98 = lshr i32 %97, 16
  %99 = xor i32 %98, %97
  ret i32 %99
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_17_30(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #5 {
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
  %121 = load i32, ptr %41, align 4
  %122 = load i32, ptr %40, align 8
  %123 = load i32, ptr %39, align 4
  %124 = load i32, ptr %38, align 8
  %125 = getelementptr inbounds nuw i8, ptr %18, i64 %118
  %126 = load i32, ptr %125, align 1
  %127 = mul i32 %126, -2048144777
  %128 = add i32 %127, %124
  %129 = tail call i32 @llvm.fshl.i32(i32 %128, i32 %128, i32 13)
  %130 = mul i32 %129, -1640531535
  %131 = freeze i32 %130
  %132 = getelementptr inbounds nuw i8, ptr %125, i64 4
  %133 = load i32, ptr %132, align 1
  %134 = mul i32 %133, -2048144777
  %135 = add i32 %134, %123
  %136 = tail call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 13)
  %137 = mul i32 %136, -1640531535
  %138 = freeze i32 %137
  %139 = getelementptr inbounds nuw i8, ptr %125, i64 8
  %140 = load i32, ptr %139, align 1
  %141 = mul i32 %140, -2048144777
  %142 = add i32 %141, %122
  %143 = tail call i32 @llvm.fshl.i32(i32 %142, i32 %142, i32 13)
  %144 = mul i32 %143, -1640531535
  %145 = freeze i32 %144
  %146 = getelementptr inbounds nuw i8, ptr %125, i64 12
  %147 = load i32, ptr %146, align 1
  %148 = mul i32 %147, -2048144777
  %149 = add i32 %148, %121
  %150 = tail call i32 @llvm.fshl.i32(i32 %149, i32 %149, i32 13)
  %151 = mul i32 %150, -1640531535
  %152 = freeze i32 %151
  %153 = add nuw nsw i64 %117, 33
  store i32 %131, ptr %38, align 8
  store i32 %138, ptr %39, align 4
  store i32 %145, ptr %40, align 8
  store i32 %152, ptr %41, align 4
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
  %185 = zext nneg i32 %184 to i64
  %186 = icmp samesign ugt i32 %184, 3
  br i1 %186, label %187, label %216

187:                                              ; preds = %179
  %188 = add nsw i64 %185, -4
  %189 = lshr i64 %188, 2
  %190 = add nuw nsw i64 %189, 1
  %191 = and i64 %190, 7
  %192 = and i64 %188, 28
  %193 = icmp eq i64 %192, 28
  br i1 %193, label %208, label %194

194:                                              ; preds = %187, %194
  %195 = phi i32 [ %204, %194 ], [ %182, %187 ]
  %196 = phi i64 [ %205, %194 ], [ %185, %187 ]
  %197 = phi ptr [ %202, %194 ], [ %42, %187 ]
  %198 = phi i64 [ %206, %194 ], [ 0, %187 ]
  %199 = load i32, ptr %197, align 4
  %200 = mul i32 %199, -1028477379
  %201 = add i32 %200, %195
  %202 = getelementptr inbounds nuw i8, ptr %197, i64 4
  %203 = tail call i32 @llvm.fshl.i32(i32 %201, i32 %201, i32 17)
  %204 = mul i32 %203, 668265263
  %205 = add nsw i64 %196, -4
  %206 = add i64 %198, 1
  %207 = icmp eq i64 %206, %191
  br i1 %207, label %208, label %194

208:                                              ; preds = %194, %187
  %209 = phi i32 [ %182, %187 ], [ %204, %194 ]
  %210 = phi i64 [ %185, %187 ], [ %205, %194 ]
  %211 = phi ptr [ %42, %187 ], [ %202, %194 ]
  %212 = phi ptr [ poison, %187 ], [ %202, %194 ]
  %213 = phi i32 [ poison, %187 ], [ %204, %194 ]
  %214 = phi i64 [ poison, %187 ], [ %205, %194 ]
  %215 = icmp ult i64 %188, 28
  br i1 %215, label %216, label %245

216:                                              ; preds = %208, %245, %179
  %217 = phi ptr [ %42, %179 ], [ %212, %208 ], [ %294, %245 ]
  %218 = phi i64 [ %185, %179 ], [ %214, %208 ], [ %297, %245 ]
  %219 = phi i32 [ %182, %179 ], [ %213, %208 ], [ %296, %245 ]
  %220 = icmp eq i64 %218, 0
  br i1 %220, label %361, label %221

221:                                              ; preds = %216
  %222 = and i64 %218, 7
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %239, label %224

224:                                              ; preds = %221, %224
  %225 = phi i32 [ %235, %224 ], [ %219, %221 ]
  %226 = phi i64 [ %236, %224 ], [ %218, %221 ]
  %227 = phi ptr [ %229, %224 ], [ %217, %221 ]
  %228 = phi i64 [ %237, %224 ], [ 0, %221 ]
  %229 = getelementptr inbounds nuw i8, ptr %227, i64 1
  %230 = load i8, ptr %227, align 1
  %231 = zext i8 %230 to i32
  %232 = mul i32 %231, 374761393
  %233 = add i32 %232, %225
  %234 = tail call i32 @llvm.fshl.i32(i32 %233, i32 %233, i32 11)
  %235 = mul i32 %234, -1640531535
  %236 = add nsw i64 %226, -1
  %237 = add i64 %228, 1
  %238 = icmp eq i64 %237, %222
  br i1 %238, label %239, label %224

239:                                              ; preds = %224, %221
  %240 = phi i32 [ poison, %221 ], [ %235, %224 ]
  %241 = phi i32 [ %219, %221 ], [ %235, %224 ]
  %242 = phi i64 [ %218, %221 ], [ %236, %224 ]
  %243 = phi ptr [ %217, %221 ], [ %229, %224 ]
  %244 = icmp ult i64 %218, 8
  br i1 %244, label %361, label %299

245:                                              ; preds = %208, %245
  %246 = phi i32 [ %296, %245 ], [ %209, %208 ]
  %247 = phi i64 [ %297, %245 ], [ %210, %208 ]
  %248 = phi ptr [ %294, %245 ], [ %211, %208 ]
  %249 = load i32, ptr %248, align 4
  %250 = mul i32 %249, -1028477379
  %251 = add i32 %250, %246
  %252 = getelementptr inbounds nuw i8, ptr %248, i64 4
  %253 = tail call i32 @llvm.fshl.i32(i32 %251, i32 %251, i32 17)
  %254 = mul i32 %253, 668265263
  %255 = load i32, ptr %252, align 4
  %256 = mul i32 %255, -1028477379
  %257 = add i32 %256, %254
  %258 = getelementptr inbounds nuw i8, ptr %248, i64 8
  %259 = tail call i32 @llvm.fshl.i32(i32 %257, i32 %257, i32 17)
  %260 = mul i32 %259, 668265263
  %261 = load i32, ptr %258, align 4
  %262 = mul i32 %261, -1028477379
  %263 = add i32 %262, %260
  %264 = getelementptr inbounds nuw i8, ptr %248, i64 12
  %265 = tail call i32 @llvm.fshl.i32(i32 %263, i32 %263, i32 17)
  %266 = mul i32 %265, 668265263
  %267 = load i32, ptr %264, align 4
  %268 = mul i32 %267, -1028477379
  %269 = add i32 %268, %266
  %270 = getelementptr inbounds nuw i8, ptr %248, i64 16
  %271 = tail call i32 @llvm.fshl.i32(i32 %269, i32 %269, i32 17)
  %272 = mul i32 %271, 668265263
  %273 = load i32, ptr %270, align 4
  %274 = mul i32 %273, -1028477379
  %275 = add i32 %274, %272
  %276 = getelementptr inbounds nuw i8, ptr %248, i64 20
  %277 = tail call i32 @llvm.fshl.i32(i32 %275, i32 %275, i32 17)
  %278 = mul i32 %277, 668265263
  %279 = load i32, ptr %276, align 4
  %280 = mul i32 %279, -1028477379
  %281 = add i32 %280, %278
  %282 = getelementptr inbounds nuw i8, ptr %248, i64 24
  %283 = tail call i32 @llvm.fshl.i32(i32 %281, i32 %281, i32 17)
  %284 = mul i32 %283, 668265263
  %285 = load i32, ptr %282, align 4
  %286 = mul i32 %285, -1028477379
  %287 = add i32 %286, %284
  %288 = getelementptr inbounds nuw i8, ptr %248, i64 28
  %289 = tail call i32 @llvm.fshl.i32(i32 %287, i32 %287, i32 17)
  %290 = mul i32 %289, 668265263
  %291 = load i32, ptr %288, align 4
  %292 = mul i32 %291, -1028477379
  %293 = add i32 %292, %290
  %294 = getelementptr inbounds nuw i8, ptr %248, i64 32
  %295 = tail call i32 @llvm.fshl.i32(i32 %293, i32 %293, i32 17)
  %296 = mul i32 %295, 668265263
  %297 = add nsw i64 %247, -32
  %298 = icmp ugt i64 %297, 3
  br i1 %298, label %245, label %216

299:                                              ; preds = %239, %299
  %300 = phi i32 [ %358, %299 ], [ %241, %239 ]
  %301 = phi i64 [ %359, %299 ], [ %242, %239 ]
  %302 = phi ptr [ %352, %299 ], [ %243, %239 ]
  %303 = getelementptr inbounds nuw i8, ptr %302, i64 1
  %304 = load i8, ptr %302, align 1
  %305 = zext i8 %304 to i32
  %306 = mul i32 %305, 374761393
  %307 = add i32 %306, %300
  %308 = tail call i32 @llvm.fshl.i32(i32 %307, i32 %307, i32 11)
  %309 = mul i32 %308, -1640531535
  %310 = getelementptr inbounds nuw i8, ptr %302, i64 2
  %311 = load i8, ptr %303, align 1
  %312 = zext i8 %311 to i32
  %313 = mul i32 %312, 374761393
  %314 = add i32 %313, %309
  %315 = tail call i32 @llvm.fshl.i32(i32 %314, i32 %314, i32 11)
  %316 = mul i32 %315, -1640531535
  %317 = getelementptr inbounds nuw i8, ptr %302, i64 3
  %318 = load i8, ptr %310, align 1
  %319 = zext i8 %318 to i32
  %320 = mul i32 %319, 374761393
  %321 = add i32 %320, %316
  %322 = tail call i32 @llvm.fshl.i32(i32 %321, i32 %321, i32 11)
  %323 = mul i32 %322, -1640531535
  %324 = getelementptr inbounds nuw i8, ptr %302, i64 4
  %325 = load i8, ptr %317, align 1
  %326 = zext i8 %325 to i32
  %327 = mul i32 %326, 374761393
  %328 = add i32 %327, %323
  %329 = tail call i32 @llvm.fshl.i32(i32 %328, i32 %328, i32 11)
  %330 = mul i32 %329, -1640531535
  %331 = getelementptr inbounds nuw i8, ptr %302, i64 5
  %332 = load i8, ptr %324, align 1
  %333 = zext i8 %332 to i32
  %334 = mul i32 %333, 374761393
  %335 = add i32 %334, %330
  %336 = tail call i32 @llvm.fshl.i32(i32 %335, i32 %335, i32 11)
  %337 = mul i32 %336, -1640531535
  %338 = getelementptr inbounds nuw i8, ptr %302, i64 6
  %339 = load i8, ptr %331, align 1
  %340 = zext i8 %339 to i32
  %341 = mul i32 %340, 374761393
  %342 = add i32 %341, %337
  %343 = tail call i32 @llvm.fshl.i32(i32 %342, i32 %342, i32 11)
  %344 = mul i32 %343, -1640531535
  %345 = getelementptr inbounds nuw i8, ptr %302, i64 7
  %346 = load i8, ptr %338, align 1
  %347 = zext i8 %346 to i32
  %348 = mul i32 %347, 374761393
  %349 = add i32 %348, %344
  %350 = tail call i32 @llvm.fshl.i32(i32 %349, i32 %349, i32 11)
  %351 = mul i32 %350, -1640531535
  %352 = getelementptr inbounds nuw i8, ptr %302, i64 8
  %353 = load i8, ptr %345, align 1
  %354 = zext i8 %353 to i32
  %355 = mul i32 %354, 374761393
  %356 = add i32 %355, %351
  %357 = tail call i32 @llvm.fshl.i32(i32 %356, i32 %356, i32 11)
  %358 = mul i32 %357, -1640531535
  %359 = add nsw i64 %301, -8
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %361, label %299

361:                                              ; preds = %239, %299, %216
  %362 = phi i32 [ %219, %216 ], [ %240, %239 ], [ %358, %299 ]
  %363 = lshr i32 %362, 15
  %364 = xor i32 %363, %362
  %365 = mul i32 %364, -2048144777
  %366 = lshr i32 %365, 13
  %367 = xor i32 %366, %365
  %368 = mul i32 %367, -1028477379
  %369 = lshr i32 %368, 16
  %370 = xor i32 %369, %368
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #7
  ret i32 %370
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 2148096980}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
