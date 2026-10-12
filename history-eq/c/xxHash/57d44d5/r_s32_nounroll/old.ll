; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/57d44d5/wrap_s32.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/57d44d5/wrap_s32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH32_state_s = type { i32, i32, [4 x i32], [4 x i32], i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_0_0(ptr noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, 374761393
  %4 = lshr i32 %3, 15
  %5 = xor i32 %4, %3
  %6 = mul i32 %5, -2048144777
  %7 = lshr i32 %6, 13
  %8 = xor i32 %7, %6
  %9 = mul i32 %8, -1028477379
  %10 = lshr i32 %9, 16
  %11 = xor i32 %10, %9
  ret i32 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_s32_1_0(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = add i32 %1, 374761393
  br label %14

6:                                                ; preds = %2
  %7 = load i8, ptr %0, align 1
  %8 = zext i8 %7 to i32
  %9 = mul i32 %8, 374761393
  %10 = add i32 %1, 374761394
  %11 = add i32 %9, %10
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 11)
  %13 = mul i32 %12, -1640531535
  br label %14

14:                                               ; preds = %4, %6
  %15 = phi i32 [ %13, %6 ], [ %5, %4 ]
  %16 = lshr i32 %15, 15
  %17 = xor i32 %16, %15
  %18 = mul i32 %17, -2048144777
  %19 = lshr i32 %18, 13
  %20 = xor i32 %19, %18
  %21 = mul i32 %20, -1028477379
  %22 = lshr i32 %21, 16
  %23 = xor i32 %22, %21
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @target_s32_7_8(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca [15 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %3, i8 0, i64 15, i1 false)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %7 = load i64, ptr %6, align 1
  store i64 %7, ptr %3, align 8
  %8 = add i32 %1, 374761401
  %9 = load i32, ptr %3, align 8
  %10 = mul i32 %9, -1028477379
  %11 = add i32 %10, %8
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 17)
  %13 = mul i32 %12, 668265263
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %15 = load i32, ptr %14, align 4
  %16 = mul i32 %15, -1028477379
  %17 = add i32 %16, %13
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 17)
  %19 = mul i32 %18, 668265263
  br label %63

20:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %3, ptr noundef nonnull align 1 dereferenceable(7) %0, i64 7, i1 false)
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %22 = load i64, ptr %21, align 1
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 7
  store i64 %22, ptr %23, align 1
  %24 = add i32 %1, 374761408
  %25 = load i32, ptr %3, align 8
  %26 = mul i32 %25, -1028477379
  %27 = add i32 %26, %24
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 17)
  %29 = mul i32 %28, 668265263
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 13
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = mul i32 %32, 374761393
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %35 = load i8, ptr %34, align 4
  %36 = zext i8 %35 to i32
  %37 = mul i32 %36, 374761393
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %39 = load i32, ptr %38, align 8
  %40 = mul i32 %39, -1028477379
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %42 = load i32, ptr %41, align 4
  %43 = mul i32 %42, -1028477379
  %44 = add i32 %43, %29
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 17)
  %46 = mul i32 %45, 668265263
  %47 = add i32 %40, %46
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 17)
  %49 = mul i32 %48, 668265263
  %50 = add i32 %37, %49
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 11)
  %52 = mul i32 %51, -1640531535
  %53 = add i32 %33, %52
  %54 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 11)
  %55 = mul i32 %54, -1640531535
  %56 = getelementptr inbounds nuw i8, ptr %3, i64 14
  %57 = load i8, ptr %56, align 2
  %58 = zext i8 %57 to i32
  %59 = mul i32 %58, 374761393
  %60 = add i32 %59, %55
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 11)
  %62 = mul i32 %61, -1640531535
  br label %63

63:                                               ; preds = %5, %20
  %64 = phi i32 [ %19, %5 ], [ %62, %20 ]
  %65 = lshr i32 %64, 15
  %66 = xor i32 %65, %64
  %67 = mul i32 %66, -2048144777
  %68 = lshr i32 %67, 13
  %69 = xor i32 %68, %67
  %70 = mul i32 %69, -1028477379
  %71 = lshr i32 %70, 16
  %72 = xor i32 %71, %70
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %3)
  ret i32 %72
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @target_s32_5_10(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %31

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %6 = load i32, ptr %5, align 1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %8 = load i32, ptr %7, align 1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %12 = load i8, ptr %11, align 1
  %13 = add i32 %1, 374761403
  %14 = mul i32 %6, -1028477379
  %15 = add i32 %14, %13
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 17)
  %17 = mul i32 %16, 668265263
  %18 = mul i32 %8, -1028477379
  %19 = add i32 %18, %17
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 17)
  %21 = mul i32 %20, 668265263
  %22 = zext i8 %10 to i32
  %23 = mul i32 %22, 374761393
  %24 = add i32 %21, %23
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 11)
  %26 = mul i32 %25, -1640531535
  %27 = zext i8 %12 to i32
  %28 = mul i32 %27, 374761393
  %29 = add i32 %26, %28
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 11)
  br label %76

31:                                               ; preds = %2
  %32 = load i32, ptr %0, align 1
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %37 = load i24, ptr %36, align 1
  %38 = zext i24 %37 to i32
  %39 = shl nuw i32 %38, 8
  %40 = or disjoint i32 %39, %35
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %42 = load i32, ptr %41, align 1
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %44 = load i8, ptr %43, align 1
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %46 = load i8, ptr %45, align 1
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %48 = load i8, ptr %47, align 1
  %49 = add i32 %1, 374761408
  %50 = mul i32 %32, -1028477379
  %51 = add i32 %50, %49
  %52 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 17)
  %53 = mul i32 %52, 668265263
  %54 = zext i8 %46 to i32
  %55 = mul i32 %54, 374761393
  %56 = zext i8 %44 to i32
  %57 = mul i32 %56, 374761393
  %58 = mul i32 %42, -1028477379
  %59 = mul i32 %40, -1028477379
  %60 = add i32 %59, %53
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 17)
  %62 = mul i32 %61, 668265263
  %63 = add i32 %58, %62
  %64 = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 17)
  %65 = mul i32 %64, 668265263
  %66 = add i32 %57, %65
  %67 = tail call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 11)
  %68 = mul i32 %67, -1640531535
  %69 = add i32 %55, %68
  %70 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 11)
  %71 = mul i32 %70, -1640531535
  %72 = zext i8 %48 to i32
  %73 = mul i32 %72, 374761393
  %74 = add i32 %73, %71
  %75 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 11)
  br label %76

76:                                               ; preds = %4, %31
  %77 = phi i32 [ %30, %4 ], [ %75, %31 ]
  %78 = mul i32 %77, -1640531535
  %79 = lshr i32 %78, 15
  %80 = xor i32 %79, %78
  %81 = mul i32 %80, -2048144777
  %82 = lshr i32 %81, 13
  %83 = xor i32 %82, %81
  %84 = mul i32 %83, -1028477379
  %85 = lshr i32 %84, 16
  %86 = xor i32 %85, %84
  ret i32 %86
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @target_s32_15_0(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = add i32 %1, 374761393
  br label %46

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %9 = load i32, ptr %8, align 1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %11 = load i32, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %13 = load i24, ptr %12, align 1
  %14 = zext i24 %13 to i32
  %15 = add i32 %1, 374761408
  %16 = mul i32 %7, -1028477379
  %17 = add i32 %16, %15
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 17)
  %19 = mul i32 %18, 668265263
  %20 = mul i32 %9, -1028477379
  %21 = add i32 %20, %19
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 17)
  %23 = mul i32 %22, 668265263
  %24 = mul i32 %11, -1028477379
  %25 = add i32 %24, %23
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 17)
  %27 = mul i32 %26, 668265263
  %28 = and i24 %13, 255
  %29 = zext nneg i24 %28 to i32
  %30 = mul i32 %29, 374761393
  %31 = add i32 %30, %27
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 11)
  %33 = mul i32 %32, -1640531535
  %34 = zext i24 %13 to i32
  %35 = lshr i32 %34, 8
  %36 = and i32 %35, 255
  %37 = mul i32 %36, 374761393
  %38 = add i32 %37, %33
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 11)
  %40 = mul i32 %39, -1640531535
  %41 = lshr i32 %14, 16
  %42 = mul i32 %41, 374761393
  %43 = add i32 %42, %40
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 11)
  %45 = mul i32 %44, -1640531535
  br label %46

46:                                               ; preds = %4, %6
  %47 = phi i32 [ %5, %4 ], [ %45, %6 ]
  %48 = lshr i32 %47, 15
  %49 = xor i32 %48, %47
  %50 = mul i32 %49, -2048144777
  %51 = lshr i32 %50, 13
  %52 = xor i32 %51, %50
  %53 = mul i32 %52, -1028477379
  %54 = lshr i32 %53, 16
  %55 = xor i32 %54, %53
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_10_10(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #8
  %4 = add i32 %1, 606290984
  %5 = add i32 %1, -2048144777
  %6 = add i32 %1, 1640531535
  store i64 0, ptr %3, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %4, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %5, ptr %8, align 4
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %1, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %6, ptr %10, align 4
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %11, i8 0, i64 20, i1 false)
  %12 = icmp eq ptr %0, null
  br i1 %12, label %68, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %11, ptr noundef nonnull readonly align 1 dereferenceable(10) %0, i64 10, i1 false)
  store i32 10, ptr %14, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i32 20, ptr %3, align 8
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %18, ptr noundef nonnull readonly align 1 dereferenceable(6) %15, i64 6, i1 false)
  %19 = load i32, ptr %11, align 8
  %20 = mul i32 %19, -2048144777
  %21 = add i32 %20, %4
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 13)
  %23 = mul i32 %22, -1640531535
  %24 = freeze i32 %23
  store i32 %24, ptr %7, align 8
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %26 = load i32, ptr %25, align 4
  %27 = mul i32 %26, -2048144777
  %28 = add i32 %27, %5
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13)
  %30 = mul i32 %29, -1640531535
  %31 = freeze i32 %30
  store i32 %31, ptr %8, align 4
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %33 = load i32, ptr %32, align 8
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %34, %1
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = freeze i32 %37
  store i32 %38, ptr %9, align 8
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %40 = load i32, ptr %39, align 4
  %41 = mul i32 %40, -2048144777
  %42 = add i32 %41, %6
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 13)
  %44 = mul i32 %43, -1640531535
  %45 = freeze i32 %44
  store i32 %45, ptr %10, align 4
  %46 = load i32, ptr %17, align 8
  %47 = sub i32 16, %46
  store i32 0, ptr %17, align 8
  %48 = icmp ult i32 %47, 10
  br i1 %48, label %49, label %59

49:                                               ; preds = %13
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %51 = zext nneg i32 %47 to i64
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 %51
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 10
  %54 = ptrtoint ptr %50 to i64
  %55 = ptrtoint ptr %53 to i64
  %56 = sub i64 %54, %55
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %11, ptr nonnull readonly align 1 %53, i64 %56, i1 false)
  %57 = trunc i64 %56 to i32
  store i32 %57, ptr %17, align 8
  %58 = and i32 %57, 15
  br label %59

59:                                               ; preds = %13, %49
  %60 = phi i32 [ %58, %49 ], [ 0, %13 ]
  %61 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 1)
  %62 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 7)
  %63 = add i32 %62, %61
  %64 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 12)
  %65 = add i32 %63, %64
  %66 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 18)
  %67 = add i32 %65, %66
  br label %76

68:                                               ; preds = %2
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i32 10, ptr %3, align 8
  %70 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %70, align 4
  %71 = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %11, ptr noundef nonnull readonly align 1 dereferenceable(10) %69, i64 10, i1 false)
  %72 = load i32, ptr %71, align 8
  %73 = add i32 %72, 10
  store i32 %73, ptr %71, align 8
  %74 = and i32 %73, 15
  %75 = add i32 %1, 374761393
  br label %76

76:                                               ; preds = %68, %59
  %77 = phi i32 [ %60, %59 ], [ %74, %68 ]
  %78 = phi i32 [ 20, %59 ], [ 10, %68 ]
  %79 = phi i32 [ %67, %59 ], [ %75, %68 ]
  %80 = add i32 %78, %79
  switch i32 %77, label %228 [
    i32 12, label %81
    i32 8, label %88
    i32 4, label %97
    i32 13, label %105
    i32 9, label %112
    i32 5, label %121
    i32 14, label %136
    i32 10, label %143
    i32 6, label %152
    i32 15, label %174
    i32 11, label %181
    i32 7, label %190
    i32 3, label %199
    i32 2, label %209
    i32 1, label %219
    i32 0, label %229
  ]

81:                                               ; preds = %76
  %82 = load i32, ptr %11, align 8
  %83 = mul i32 %82, -1028477379
  %84 = add i32 %83, %80
  %85 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %86 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 17)
  %87 = mul i32 %86, 668265263
  br label %88

88:                                               ; preds = %81, %76
  %89 = phi ptr [ %11, %76 ], [ %85, %81 ]
  %90 = phi i32 [ %80, %76 ], [ %87, %81 ]
  %91 = load i32, ptr %89, align 4
  %92 = mul i32 %91, -1028477379
  %93 = add i32 %92, %90
  %94 = getelementptr inbounds nuw i8, ptr %89, i64 4
  %95 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 17)
  %96 = mul i32 %95, 668265263
  br label %97

97:                                               ; preds = %88, %76
  %98 = phi ptr [ %11, %76 ], [ %94, %88 ]
  %99 = phi i32 [ %80, %76 ], [ %96, %88 ]
  %100 = load i32, ptr %98, align 4
  %101 = mul i32 %100, -1028477379
  %102 = add i32 %101, %99
  %103 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 17)
  %104 = mul i32 %103, 668265263
  br label %229

105:                                              ; preds = %76
  %106 = load i32, ptr %11, align 8
  %107 = mul i32 %106, -1028477379
  %108 = add i32 %107, %80
  %109 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %110 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 17)
  %111 = mul i32 %110, 668265263
  br label %112

112:                                              ; preds = %105, %76
  %113 = phi ptr [ %11, %76 ], [ %109, %105 ]
  %114 = phi i32 [ %80, %76 ], [ %111, %105 ]
  %115 = load i32, ptr %113, align 4
  %116 = mul i32 %115, -1028477379
  %117 = add i32 %116, %114
  %118 = getelementptr inbounds nuw i8, ptr %113, i64 4
  %119 = tail call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 17)
  %120 = mul i32 %119, 668265263
  br label %121

121:                                              ; preds = %112, %76
  %122 = phi ptr [ %11, %76 ], [ %118, %112 ]
  %123 = phi i32 [ %80, %76 ], [ %120, %112 ]
  %124 = load i32, ptr %122, align 4
  %125 = mul i32 %124, -1028477379
  %126 = add i32 %125, %123
  %127 = getelementptr inbounds nuw i8, ptr %122, i64 4
  %128 = tail call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 17)
  %129 = mul i32 %128, 668265263
  %130 = load i8, ptr %127, align 1
  %131 = zext i8 %130 to i32
  %132 = mul i32 %131, 374761393
  %133 = add i32 %129, %132
  %134 = tail call i32 @llvm.fshl.i32(i32 %133, i32 %133, i32 11)
  %135 = mul i32 %134, -1640531535
  br label %229

136:                                              ; preds = %76
  %137 = load i32, ptr %11, align 8
  %138 = mul i32 %137, -1028477379
  %139 = add i32 %138, %80
  %140 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %141 = tail call i32 @llvm.fshl.i32(i32 %139, i32 %139, i32 17)
  %142 = mul i32 %141, 668265263
  br label %143

143:                                              ; preds = %136, %76
  %144 = phi ptr [ %11, %76 ], [ %140, %136 ]
  %145 = phi i32 [ %80, %76 ], [ %142, %136 ]
  %146 = load i32, ptr %144, align 4
  %147 = mul i32 %146, -1028477379
  %148 = add i32 %147, %145
  %149 = getelementptr inbounds nuw i8, ptr %144, i64 4
  %150 = tail call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 17)
  %151 = mul i32 %150, 668265263
  br label %152

152:                                              ; preds = %143, %76
  %153 = phi ptr [ %11, %76 ], [ %149, %143 ]
  %154 = phi i32 [ %80, %76 ], [ %151, %143 ]
  %155 = load i32, ptr %153, align 4
  %156 = mul i32 %155, -1028477379
  %157 = add i32 %156, %154
  %158 = getelementptr inbounds nuw i8, ptr %153, i64 4
  %159 = tail call i32 @llvm.fshl.i32(i32 %157, i32 %157, i32 17)
  %160 = mul i32 %159, 668265263
  %161 = getelementptr inbounds nuw i8, ptr %153, i64 5
  %162 = load i8, ptr %158, align 1
  %163 = zext i8 %162 to i32
  %164 = mul i32 %163, 374761393
  %165 = add i32 %160, %164
  %166 = tail call i32 @llvm.fshl.i32(i32 %165, i32 %165, i32 11)
  %167 = mul i32 %166, -1640531535
  %168 = load i8, ptr %161, align 1
  %169 = zext i8 %168 to i32
  %170 = mul i32 %169, 374761393
  %171 = add i32 %167, %170
  %172 = tail call i32 @llvm.fshl.i32(i32 %171, i32 %171, i32 11)
  %173 = mul i32 %172, -1640531535
  br label %229

174:                                              ; preds = %76
  %175 = load i32, ptr %11, align 8
  %176 = mul i32 %175, -1028477379
  %177 = add i32 %176, %80
  %178 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %179 = tail call i32 @llvm.fshl.i32(i32 %177, i32 %177, i32 17)
  %180 = mul i32 %179, 668265263
  br label %181

181:                                              ; preds = %174, %76
  %182 = phi ptr [ %11, %76 ], [ %178, %174 ]
  %183 = phi i32 [ %80, %76 ], [ %180, %174 ]
  %184 = load i32, ptr %182, align 4
  %185 = mul i32 %184, -1028477379
  %186 = add i32 %185, %183
  %187 = getelementptr inbounds nuw i8, ptr %182, i64 4
  %188 = tail call i32 @llvm.fshl.i32(i32 %186, i32 %186, i32 17)
  %189 = mul i32 %188, 668265263
  br label %190

190:                                              ; preds = %181, %76
  %191 = phi ptr [ %11, %76 ], [ %187, %181 ]
  %192 = phi i32 [ %80, %76 ], [ %189, %181 ]
  %193 = load i32, ptr %191, align 4
  %194 = mul i32 %193, -1028477379
  %195 = add i32 %194, %192
  %196 = getelementptr inbounds nuw i8, ptr %191, i64 4
  %197 = tail call i32 @llvm.fshl.i32(i32 %195, i32 %195, i32 17)
  %198 = mul i32 %197, 668265263
  br label %199

199:                                              ; preds = %190, %76
  %200 = phi ptr [ %11, %76 ], [ %196, %190 ]
  %201 = phi i32 [ %80, %76 ], [ %198, %190 ]
  %202 = getelementptr inbounds nuw i8, ptr %200, i64 1
  %203 = load i8, ptr %200, align 1
  %204 = zext i8 %203 to i32
  %205 = mul i32 %204, 374761393
  %206 = add i32 %205, %201
  %207 = tail call i32 @llvm.fshl.i32(i32 %206, i32 %206, i32 11)
  %208 = mul i32 %207, -1640531535
  br label %209

209:                                              ; preds = %199, %76
  %210 = phi ptr [ %11, %76 ], [ %202, %199 ]
  %211 = phi i32 [ %80, %76 ], [ %208, %199 ]
  %212 = getelementptr inbounds nuw i8, ptr %210, i64 1
  %213 = load i8, ptr %210, align 1
  %214 = zext i8 %213 to i32
  %215 = mul i32 %214, 374761393
  %216 = add i32 %215, %211
  %217 = tail call i32 @llvm.fshl.i32(i32 %216, i32 %216, i32 11)
  %218 = mul i32 %217, -1640531535
  br label %219

219:                                              ; preds = %209, %76
  %220 = phi ptr [ %11, %76 ], [ %212, %209 ]
  %221 = phi i32 [ %80, %76 ], [ %218, %209 ]
  %222 = load i8, ptr %220, align 1
  %223 = zext i8 %222 to i32
  %224 = mul i32 %223, 374761393
  %225 = add i32 %224, %221
  %226 = tail call i32 @llvm.fshl.i32(i32 %225, i32 %225, i32 11)
  %227 = mul i32 %226, -1640531535
  br label %229

228:                                              ; preds = %76
  unreachable

229:                                              ; preds = %76, %97, %121, %152, %219
  %230 = phi i32 [ %173, %152 ], [ %135, %121 ], [ %104, %97 ], [ %80, %76 ], [ %227, %219 ]
  %231 = lshr i32 %230, 15
  %232 = xor i32 %231, %230
  %233 = mul i32 %232, -2048144777
  %234 = lshr i32 %233, 13
  %235 = xor i32 %234, %233
  %236 = mul i32 %235, -1028477379
  %237 = lshr i32 %236, 16
  %238 = xor i32 %237, %236
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #8
  ret i32 %238
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_3_20(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #8
  %4 = add i32 %1, 606290984
  %5 = add i32 %1, -2048144777
  %6 = add i32 %1, 1640531535
  store i64 0, ptr %3, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %11, i8 0, i64 20, i1 false)
  %12 = icmp eq ptr %0, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  store i32 20, ptr %3, align 8
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %14, align 4
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %54

16:                                               ; preds = %2
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %11, ptr noundef nonnull readonly align 1 dereferenceable(3) %0, i64 3, i1 false)
  store i32 3, ptr %17, align 8
  store i32 23, ptr %3, align 8
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %18, align 4
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %21, ptr noundef nonnull readonly align 1 dereferenceable(13) %20, i64 13, i1 false)
  %22 = load i32, ptr %11, align 8
  %23 = mul i32 %22, -2048144777
  %24 = add i32 %23, %4
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 13)
  %26 = mul i32 %25, -1640531535
  %27 = freeze i32 %26
  store i32 %27, ptr %7, align 8
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %29 = load i32, ptr %28, align 4
  %30 = mul i32 %29, -2048144777
  %31 = add i32 %30, %5
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 13)
  %33 = mul i32 %32, -1640531535
  %34 = freeze i32 %33
  store i32 %34, ptr %8, align 4
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %36 = load i32, ptr %35, align 8
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %1
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = freeze i32 %40
  store i32 %41, ptr %9, align 8
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %43 = load i32, ptr %42, align 4
  %44 = mul i32 %43, -2048144777
  %45 = add i32 %44, %6
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 13)
  %47 = mul i32 %46, -1640531535
  %48 = freeze i32 %47
  store i32 %48, ptr %10, align 4
  %49 = load i32, ptr %19, align 8
  %50 = sub i32 16, %49
  %51 = zext i32 %50 to i64
  %52 = add nuw nsw i64 %51, 3
  store i32 0, ptr %19, align 8
  %53 = icmp ugt i32 %50, 4
  br i1 %53, label %91, label %54

54:                                               ; preds = %13, %16
  %55 = phi ptr [ %19, %16 ], [ %15, %13 ]
  %56 = phi i32 [ 23, %16 ], [ 20, %13 ]
  %57 = phi i32 [ %48, %16 ], [ %6, %13 ]
  %58 = phi i32 [ %41, %16 ], [ %1, %13 ]
  %59 = phi i32 [ %34, %16 ], [ %5, %13 ]
  %60 = phi i32 [ %27, %16 ], [ %4, %13 ]
  %61 = phi i64 [ %52, %16 ], [ 3, %13 ]
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 %61
  %63 = load i32, ptr %62, align 1
  %64 = mul i32 %63, -2048144777
  %65 = add i32 %64, %60
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 13)
  %67 = mul i32 %66, -1640531535
  %68 = freeze i32 %67
  %69 = getelementptr inbounds nuw i8, ptr %62, i64 4
  %70 = load i32, ptr %69, align 1
  %71 = mul i32 %70, -2048144777
  %72 = add i32 %71, %59
  %73 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 13)
  %74 = mul i32 %73, -1640531535
  %75 = freeze i32 %74
  %76 = getelementptr inbounds nuw i8, ptr %62, i64 8
  %77 = load i32, ptr %76, align 1
  %78 = mul i32 %77, -2048144777
  %79 = add i32 %78, %58
  %80 = tail call i32 @llvm.fshl.i32(i32 %79, i32 %79, i32 13)
  %81 = mul i32 %80, -1640531535
  %82 = freeze i32 %81
  %83 = getelementptr inbounds nuw i8, ptr %62, i64 12
  %84 = load i32, ptr %83, align 1
  %85 = mul i32 %84, -2048144777
  %86 = add i32 %85, %57
  %87 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 13)
  %88 = mul i32 %87, -1640531535
  %89 = freeze i32 %88
  %90 = add nuw nsw i64 %61, 16
  store i32 %68, ptr %7, align 8
  store i32 %75, ptr %8, align 4
  store i32 %82, ptr %9, align 8
  store i32 %89, ptr %10, align 4
  br label %91

91:                                               ; preds = %54, %16
  %92 = phi ptr [ %19, %16 ], [ %55, %54 ]
  %93 = phi i32 [ 23, %16 ], [ %56, %54 ]
  %94 = phi i32 [ %48, %16 ], [ %89, %54 ]
  %95 = phi i32 [ %41, %16 ], [ %82, %54 ]
  %96 = phi i32 [ %34, %16 ], [ %75, %54 ]
  %97 = phi i32 [ %27, %16 ], [ %68, %54 ]
  %98 = phi i64 [ %52, %16 ], [ %90, %54 ]
  %99 = icmp samesign ult i64 %98, 23
  br i1 %99, label %109, label %100

100:                                              ; preds = %91
  %101 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 7)
  %102 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 1)
  %103 = add i32 %101, %102
  %104 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 12)
  %105 = add i32 %103, %104
  %106 = tail call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 18)
  %107 = add i32 %105, %106
  %108 = add i32 %93, %107
  br label %270

109:                                              ; preds = %91
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 %98
  %111 = sub nuw nsw i64 23, %98
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %11, ptr nonnull readonly align 1 %110, i64 %111, i1 false)
  %112 = trunc nuw nsw i64 %111 to i32
  store i32 %112, ptr %92, align 4
  %113 = and i32 %112, 15
  %114 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 7)
  %115 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 1)
  %116 = add i32 %114, %115
  %117 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 12)
  %118 = add i32 %116, %117
  %119 = tail call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 18)
  %120 = add i32 %118, %119
  %121 = add i32 %93, %120
  switch i32 %113, label %269 [
    i32 12, label %122
    i32 8, label %129
    i32 4, label %138
    i32 13, label %146
    i32 9, label %153
    i32 5, label %162
    i32 14, label %177
    i32 10, label %184
    i32 6, label %193
    i32 15, label %215
    i32 11, label %222
    i32 7, label %231
    i32 3, label %240
    i32 2, label %250
    i32 1, label %260
    i32 0, label %270
  ]

122:                                              ; preds = %109
  %123 = load i32, ptr %11, align 8
  %124 = mul i32 %123, -1028477379
  %125 = add i32 %124, %121
  %126 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %127 = tail call i32 @llvm.fshl.i32(i32 %125, i32 %125, i32 17)
  %128 = mul i32 %127, 668265263
  br label %129

129:                                              ; preds = %122, %109
  %130 = phi ptr [ %11, %109 ], [ %126, %122 ]
  %131 = phi i32 [ %121, %109 ], [ %128, %122 ]
  %132 = load i32, ptr %130, align 4
  %133 = mul i32 %132, -1028477379
  %134 = add i32 %133, %131
  %135 = getelementptr inbounds nuw i8, ptr %130, i64 4
  %136 = tail call i32 @llvm.fshl.i32(i32 %134, i32 %134, i32 17)
  %137 = mul i32 %136, 668265263
  br label %138

138:                                              ; preds = %129, %109
  %139 = phi ptr [ %11, %109 ], [ %135, %129 ]
  %140 = phi i32 [ %121, %109 ], [ %137, %129 ]
  %141 = load i32, ptr %139, align 4
  %142 = mul i32 %141, -1028477379
  %143 = add i32 %142, %140
  %144 = tail call i32 @llvm.fshl.i32(i32 %143, i32 %143, i32 17)
  %145 = mul i32 %144, 668265263
  br label %270

146:                                              ; preds = %109
  %147 = load i32, ptr %11, align 8
  %148 = mul i32 %147, -1028477379
  %149 = add i32 %148, %121
  %150 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %151 = tail call i32 @llvm.fshl.i32(i32 %149, i32 %149, i32 17)
  %152 = mul i32 %151, 668265263
  br label %153

153:                                              ; preds = %146, %109
  %154 = phi ptr [ %11, %109 ], [ %150, %146 ]
  %155 = phi i32 [ %121, %109 ], [ %152, %146 ]
  %156 = load i32, ptr %154, align 4
  %157 = mul i32 %156, -1028477379
  %158 = add i32 %157, %155
  %159 = getelementptr inbounds nuw i8, ptr %154, i64 4
  %160 = tail call i32 @llvm.fshl.i32(i32 %158, i32 %158, i32 17)
  %161 = mul i32 %160, 668265263
  br label %162

162:                                              ; preds = %153, %109
  %163 = phi ptr [ %11, %109 ], [ %159, %153 ]
  %164 = phi i32 [ %121, %109 ], [ %161, %153 ]
  %165 = load i32, ptr %163, align 4
  %166 = mul i32 %165, -1028477379
  %167 = add i32 %166, %164
  %168 = getelementptr inbounds nuw i8, ptr %163, i64 4
  %169 = tail call i32 @llvm.fshl.i32(i32 %167, i32 %167, i32 17)
  %170 = mul i32 %169, 668265263
  %171 = load i8, ptr %168, align 1
  %172 = zext i8 %171 to i32
  %173 = mul i32 %172, 374761393
  %174 = add i32 %170, %173
  %175 = tail call i32 @llvm.fshl.i32(i32 %174, i32 %174, i32 11)
  %176 = mul i32 %175, -1640531535
  br label %270

177:                                              ; preds = %109
  %178 = load i32, ptr %11, align 8
  %179 = mul i32 %178, -1028477379
  %180 = add i32 %179, %121
  %181 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %182 = tail call i32 @llvm.fshl.i32(i32 %180, i32 %180, i32 17)
  %183 = mul i32 %182, 668265263
  br label %184

184:                                              ; preds = %177, %109
  %185 = phi ptr [ %11, %109 ], [ %181, %177 ]
  %186 = phi i32 [ %121, %109 ], [ %183, %177 ]
  %187 = load i32, ptr %185, align 4
  %188 = mul i32 %187, -1028477379
  %189 = add i32 %188, %186
  %190 = getelementptr inbounds nuw i8, ptr %185, i64 4
  %191 = tail call i32 @llvm.fshl.i32(i32 %189, i32 %189, i32 17)
  %192 = mul i32 %191, 668265263
  br label %193

193:                                              ; preds = %184, %109
  %194 = phi ptr [ %11, %109 ], [ %190, %184 ]
  %195 = phi i32 [ %121, %109 ], [ %192, %184 ]
  %196 = load i32, ptr %194, align 4
  %197 = mul i32 %196, -1028477379
  %198 = add i32 %197, %195
  %199 = getelementptr inbounds nuw i8, ptr %194, i64 4
  %200 = tail call i32 @llvm.fshl.i32(i32 %198, i32 %198, i32 17)
  %201 = mul i32 %200, 668265263
  %202 = getelementptr inbounds nuw i8, ptr %194, i64 5
  %203 = load i8, ptr %199, align 1
  %204 = zext i8 %203 to i32
  %205 = mul i32 %204, 374761393
  %206 = add i32 %201, %205
  %207 = tail call i32 @llvm.fshl.i32(i32 %206, i32 %206, i32 11)
  %208 = mul i32 %207, -1640531535
  %209 = load i8, ptr %202, align 1
  %210 = zext i8 %209 to i32
  %211 = mul i32 %210, 374761393
  %212 = add i32 %208, %211
  %213 = tail call i32 @llvm.fshl.i32(i32 %212, i32 %212, i32 11)
  %214 = mul i32 %213, -1640531535
  br label %270

215:                                              ; preds = %109
  %216 = load i32, ptr %11, align 8
  %217 = mul i32 %216, -1028477379
  %218 = add i32 %217, %121
  %219 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %220 = tail call i32 @llvm.fshl.i32(i32 %218, i32 %218, i32 17)
  %221 = mul i32 %220, 668265263
  br label %222

222:                                              ; preds = %215, %109
  %223 = phi ptr [ %11, %109 ], [ %219, %215 ]
  %224 = phi i32 [ %121, %109 ], [ %221, %215 ]
  %225 = load i32, ptr %223, align 4
  %226 = mul i32 %225, -1028477379
  %227 = add i32 %226, %224
  %228 = getelementptr inbounds nuw i8, ptr %223, i64 4
  %229 = tail call i32 @llvm.fshl.i32(i32 %227, i32 %227, i32 17)
  %230 = mul i32 %229, 668265263
  br label %231

231:                                              ; preds = %222, %109
  %232 = phi ptr [ %11, %109 ], [ %228, %222 ]
  %233 = phi i32 [ %121, %109 ], [ %230, %222 ]
  %234 = load i32, ptr %232, align 4
  %235 = mul i32 %234, -1028477379
  %236 = add i32 %235, %233
  %237 = getelementptr inbounds nuw i8, ptr %232, i64 4
  %238 = tail call i32 @llvm.fshl.i32(i32 %236, i32 %236, i32 17)
  %239 = mul i32 %238, 668265263
  br label %240

240:                                              ; preds = %231, %109
  %241 = phi ptr [ %11, %109 ], [ %237, %231 ]
  %242 = phi i32 [ %121, %109 ], [ %239, %231 ]
  %243 = getelementptr inbounds nuw i8, ptr %241, i64 1
  %244 = load i8, ptr %241, align 1
  %245 = zext i8 %244 to i32
  %246 = mul i32 %245, 374761393
  %247 = add i32 %246, %242
  %248 = tail call i32 @llvm.fshl.i32(i32 %247, i32 %247, i32 11)
  %249 = mul i32 %248, -1640531535
  br label %250

250:                                              ; preds = %240, %109
  %251 = phi ptr [ %11, %109 ], [ %243, %240 ]
  %252 = phi i32 [ %121, %109 ], [ %249, %240 ]
  %253 = getelementptr inbounds nuw i8, ptr %251, i64 1
  %254 = load i8, ptr %251, align 1
  %255 = zext i8 %254 to i32
  %256 = mul i32 %255, 374761393
  %257 = add i32 %256, %252
  %258 = tail call i32 @llvm.fshl.i32(i32 %257, i32 %257, i32 11)
  %259 = mul i32 %258, -1640531535
  br label %260

260:                                              ; preds = %250, %109
  %261 = phi ptr [ %11, %109 ], [ %253, %250 ]
  %262 = phi i32 [ %121, %109 ], [ %259, %250 ]
  %263 = load i8, ptr %261, align 1
  %264 = zext i8 %263 to i32
  %265 = mul i32 %264, 374761393
  %266 = add i32 %265, %262
  %267 = tail call i32 @llvm.fshl.i32(i32 %266, i32 %266, i32 11)
  %268 = mul i32 %267, -1640531535
  br label %270

269:                                              ; preds = %109
  unreachable

270:                                              ; preds = %100, %109, %138, %162, %193, %260
  %271 = phi i32 [ %214, %193 ], [ %176, %162 ], [ %145, %138 ], [ %121, %109 ], [ %268, %260 ], [ %108, %100 ]
  %272 = lshr i32 %271, 15
  %273 = xor i32 %272, %271
  %274 = mul i32 %273, -2048144777
  %275 = lshr i32 %274, 13
  %276 = xor i32 %275, %274
  %277 = mul i32 %276, -1028477379
  %278 = lshr i32 %277, 16
  %279 = xor i32 %278, %277
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #8
  ret i32 %279
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_16_0(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %42, label %4

4:                                                ; preds = %2
  %5 = add i32 %1, 1640531535
  %6 = add i32 %1, -2048144777
  %7 = add i32 %1, 606290984
  %8 = load i32, ptr %0, align 1
  %9 = mul i32 %8, -2048144777
  %10 = add i32 %9, %7
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 13)
  %12 = mul i32 %11, -1640531535
  %13 = freeze i32 %12
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %15 = load i32, ptr %14, align 1
  %16 = mul i32 %15, -2048144777
  %17 = add i32 %16, %6
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 13)
  %19 = mul i32 %18, -1640531535
  %20 = freeze i32 %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %22 = load i32, ptr %21, align 1
  %23 = mul i32 %22, -2048144777
  %24 = add i32 %23, %1
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 13)
  %26 = mul i32 %25, -1640531535
  %27 = freeze i32 %26
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %29 = load i32, ptr %28, align 1
  %30 = mul i32 %29, -2048144777
  %31 = add i32 %30, %5
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 13)
  %33 = mul i32 %32, -1640531535
  %34 = freeze i32 %33
  %35 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 1)
  %36 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 7)
  %37 = add i32 %36, %35
  %38 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 12)
  %39 = add i32 %37, %38
  %40 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 18)
  %41 = add i32 %39, %40
  br label %44

42:                                               ; preds = %2
  %43 = add i32 %1, 374761393
  br label %44

44:                                               ; preds = %4, %42
  %45 = phi i32 [ 16, %4 ], [ 0, %42 ]
  %46 = phi i32 [ %41, %4 ], [ %43, %42 ]
  %47 = add i32 %45, %46
  %48 = lshr i32 %47, 15
  %49 = xor i32 %48, %47
  %50 = mul i32 %49, -2048144777
  %51 = lshr i32 %50, 13
  %52 = xor i32 %51, %50
  %53 = mul i32 %52, -1028477379
  %54 = lshr i32 %53, 16
  %55 = xor i32 %54, %53
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_20_13(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #8
  %4 = add i32 %1, 606290984
  %5 = add i32 %1, -2048144777
  %6 = add i32 %1, 1640531535
  store i64 0, ptr %3, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %4, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %5, ptr %8, align 4
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %1, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %6, ptr %10, align 4
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %11, i8 0, i64 20, i1 false)
  %12 = icmp ne ptr %0, null
  br i1 %12, label %13, label %91

13:                                               ; preds = %2
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %15 = load i32, ptr %0, align 1
  %16 = mul i32 %15, -2048144777
  %17 = add i32 %16, %4
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 13)
  %19 = mul i32 %18, -1640531535
  %20 = freeze i32 %19
  store i32 %20, ptr %7, align 8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %22 = load i32, ptr %21, align 1
  %23 = mul i32 %22, -2048144777
  %24 = add i32 %23, %5
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 13)
  %26 = mul i32 %25, -1640531535
  %27 = freeze i32 %26
  store i32 %27, ptr %8, align 4
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %29 = load i32, ptr %28, align 1
  %30 = mul i32 %29, -2048144777
  %31 = add i32 %30, %1
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 13)
  %33 = mul i32 %32, -1640531535
  %34 = freeze i32 %33
  store i32 %34, ptr %9, align 8
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %36 = load i32, ptr %35, align 1
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %6
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = freeze i32 %40
  store i32 %41, ptr %10, align 4
  %42 = getelementptr i8, ptr %0, i64 16
  %43 = icmp ult ptr %42, %14
  br i1 %43, label %44, label %91

44:                                               ; preds = %13
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %46 = load i32, ptr %42, align 1
  store i32 %46, ptr %11, align 8
  store i32 4, ptr %45, align 8
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 33, ptr %3, align 8
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %48, align 4
  %49 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %50, ptr noundef nonnull readonly align 1 dereferenceable(12) %47, i64 12, i1 false)
  %51 = load i32, ptr %11, align 8
  %52 = mul i32 %51, -2048144777
  %53 = add i32 %52, %20
  %54 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 13)
  %55 = mul i32 %54, -1640531535
  %56 = freeze i32 %55
  store i32 %56, ptr %7, align 8
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %58 = load i32, ptr %57, align 4
  %59 = mul i32 %58, -2048144777
  %60 = add i32 %59, %27
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 13)
  %62 = mul i32 %61, -1640531535
  %63 = freeze i32 %62
  store i32 %63, ptr %8, align 4
  %64 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %65 = load i32, ptr %64, align 8
  %66 = mul i32 %65, -2048144777
  %67 = add i32 %66, %34
  %68 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 13)
  %69 = mul i32 %68, -1640531535
  %70 = freeze i32 %69
  store i32 %70, ptr %9, align 8
  %71 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %72 = load i32, ptr %71, align 4
  %73 = mul i32 %72, -2048144777
  %74 = add i32 %73, %41
  %75 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 13)
  %76 = mul i32 %75, -1640531535
  %77 = freeze i32 %76
  store i32 %77, ptr %10, align 4
  %78 = load i32, ptr %49, align 8
  %79 = sub i32 16, %78
  store i32 0, ptr %49, align 8
  %80 = icmp ult i32 %79, 13
  br i1 %80, label %81, label %107

81:                                               ; preds = %44
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 33
  %83 = zext nneg i32 %79 to i64
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 %83
  %85 = getelementptr inbounds nuw i8, ptr %84, i64 20
  %86 = ptrtoint ptr %82 to i64
  %87 = ptrtoint ptr %85 to i64
  %88 = sub i64 %86, %87
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %11, ptr nonnull readonly align 1 %85, i64 %88, i1 false)
  %89 = trunc i64 %88 to i32
  store i32 %89, ptr %49, align 8
  %90 = and i32 %89, 15
  br label %107

91:                                               ; preds = %13, %2
  %92 = phi i32 [ %41, %13 ], [ %6, %2 ]
  %93 = phi i32 [ %34, %13 ], [ %1, %2 ]
  %94 = phi i32 [ %27, %13 ], [ %5, %2 ]
  %95 = phi i32 [ %20, %13 ], [ %4, %2 ]
  %96 = phi i32 [ 1, %13 ], [ 0, %2 ]
  %97 = phi i32 [ 33, %13 ], [ 13, %2 ]
  %98 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %97, ptr %3, align 8
  %99 = zext i1 %12 to i32
  %100 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %101 = or i32 %96, %99
  store i32 %101, ptr %100, align 4
  %102 = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %11, ptr noundef nonnull readonly align 1 dereferenceable(13) %98, i64 13, i1 false)
  %103 = load i32, ptr %102, align 8
  %104 = add i32 %103, 13
  store i32 %104, ptr %102, align 8
  %105 = and i32 %104, 15
  %106 = icmp eq i32 %101, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %44, %81, %91
  %108 = phi i32 [ %95, %91 ], [ %56, %81 ], [ %56, %44 ]
  %109 = phi i32 [ %94, %91 ], [ %63, %81 ], [ %63, %44 ]
  %110 = phi i32 [ %93, %91 ], [ %70, %81 ], [ %70, %44 ]
  %111 = phi i32 [ %92, %91 ], [ %77, %81 ], [ %77, %44 ]
  %112 = phi i32 [ %105, %91 ], [ %90, %81 ], [ 0, %44 ]
  %113 = phi i32 [ %97, %91 ], [ 33, %81 ], [ 33, %44 ]
  %114 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 1)
  %115 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 7)
  %116 = add i32 %115, %114
  %117 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 12)
  %118 = add i32 %116, %117
  %119 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 18)
  %120 = add i32 %118, %119
  br label %123

121:                                              ; preds = %91
  %122 = add i32 %93, 374761393
  br label %123

123:                                              ; preds = %121, %107
  %124 = phi i32 [ %112, %107 ], [ %105, %121 ]
  %125 = phi i32 [ %113, %107 ], [ %97, %121 ]
  %126 = phi i32 [ %120, %107 ], [ %122, %121 ]
  %127 = add i32 %125, %126
  switch i32 %124, label %275 [
    i32 12, label %128
    i32 8, label %135
    i32 4, label %144
    i32 13, label %152
    i32 9, label %159
    i32 5, label %168
    i32 14, label %183
    i32 10, label %190
    i32 6, label %199
    i32 15, label %221
    i32 11, label %228
    i32 7, label %237
    i32 3, label %246
    i32 2, label %256
    i32 1, label %266
    i32 0, label %276
  ]

128:                                              ; preds = %123
  %129 = load i32, ptr %11, align 8
  %130 = mul i32 %129, -1028477379
  %131 = add i32 %130, %127
  %132 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %133 = tail call i32 @llvm.fshl.i32(i32 %131, i32 %131, i32 17)
  %134 = mul i32 %133, 668265263
  br label %135

135:                                              ; preds = %128, %123
  %136 = phi ptr [ %11, %123 ], [ %132, %128 ]
  %137 = phi i32 [ %127, %123 ], [ %134, %128 ]
  %138 = load i32, ptr %136, align 4
  %139 = mul i32 %138, -1028477379
  %140 = add i32 %139, %137
  %141 = getelementptr inbounds nuw i8, ptr %136, i64 4
  %142 = tail call i32 @llvm.fshl.i32(i32 %140, i32 %140, i32 17)
  %143 = mul i32 %142, 668265263
  br label %144

144:                                              ; preds = %135, %123
  %145 = phi ptr [ %11, %123 ], [ %141, %135 ]
  %146 = phi i32 [ %127, %123 ], [ %143, %135 ]
  %147 = load i32, ptr %145, align 4
  %148 = mul i32 %147, -1028477379
  %149 = add i32 %148, %146
  %150 = tail call i32 @llvm.fshl.i32(i32 %149, i32 %149, i32 17)
  %151 = mul i32 %150, 668265263
  br label %276

152:                                              ; preds = %123
  %153 = load i32, ptr %11, align 8
  %154 = mul i32 %153, -1028477379
  %155 = add i32 %154, %127
  %156 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %157 = tail call i32 @llvm.fshl.i32(i32 %155, i32 %155, i32 17)
  %158 = mul i32 %157, 668265263
  br label %159

159:                                              ; preds = %152, %123
  %160 = phi ptr [ %11, %123 ], [ %156, %152 ]
  %161 = phi i32 [ %127, %123 ], [ %158, %152 ]
  %162 = load i32, ptr %160, align 4
  %163 = mul i32 %162, -1028477379
  %164 = add i32 %163, %161
  %165 = getelementptr inbounds nuw i8, ptr %160, i64 4
  %166 = tail call i32 @llvm.fshl.i32(i32 %164, i32 %164, i32 17)
  %167 = mul i32 %166, 668265263
  br label %168

168:                                              ; preds = %159, %123
  %169 = phi ptr [ %11, %123 ], [ %165, %159 ]
  %170 = phi i32 [ %127, %123 ], [ %167, %159 ]
  %171 = load i32, ptr %169, align 4
  %172 = mul i32 %171, -1028477379
  %173 = add i32 %172, %170
  %174 = getelementptr inbounds nuw i8, ptr %169, i64 4
  %175 = tail call i32 @llvm.fshl.i32(i32 %173, i32 %173, i32 17)
  %176 = mul i32 %175, 668265263
  %177 = load i8, ptr %174, align 1
  %178 = zext i8 %177 to i32
  %179 = mul i32 %178, 374761393
  %180 = add i32 %176, %179
  %181 = tail call i32 @llvm.fshl.i32(i32 %180, i32 %180, i32 11)
  %182 = mul i32 %181, -1640531535
  br label %276

183:                                              ; preds = %123
  %184 = load i32, ptr %11, align 8
  %185 = mul i32 %184, -1028477379
  %186 = add i32 %185, %127
  %187 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %188 = tail call i32 @llvm.fshl.i32(i32 %186, i32 %186, i32 17)
  %189 = mul i32 %188, 668265263
  br label %190

190:                                              ; preds = %183, %123
  %191 = phi ptr [ %11, %123 ], [ %187, %183 ]
  %192 = phi i32 [ %127, %123 ], [ %189, %183 ]
  %193 = load i32, ptr %191, align 4
  %194 = mul i32 %193, -1028477379
  %195 = add i32 %194, %192
  %196 = getelementptr inbounds nuw i8, ptr %191, i64 4
  %197 = tail call i32 @llvm.fshl.i32(i32 %195, i32 %195, i32 17)
  %198 = mul i32 %197, 668265263
  br label %199

199:                                              ; preds = %190, %123
  %200 = phi ptr [ %11, %123 ], [ %196, %190 ]
  %201 = phi i32 [ %127, %123 ], [ %198, %190 ]
  %202 = load i32, ptr %200, align 4
  %203 = mul i32 %202, -1028477379
  %204 = add i32 %203, %201
  %205 = getelementptr inbounds nuw i8, ptr %200, i64 4
  %206 = tail call i32 @llvm.fshl.i32(i32 %204, i32 %204, i32 17)
  %207 = mul i32 %206, 668265263
  %208 = getelementptr inbounds nuw i8, ptr %200, i64 5
  %209 = load i8, ptr %205, align 1
  %210 = zext i8 %209 to i32
  %211 = mul i32 %210, 374761393
  %212 = add i32 %207, %211
  %213 = tail call i32 @llvm.fshl.i32(i32 %212, i32 %212, i32 11)
  %214 = mul i32 %213, -1640531535
  %215 = load i8, ptr %208, align 1
  %216 = zext i8 %215 to i32
  %217 = mul i32 %216, 374761393
  %218 = add i32 %214, %217
  %219 = tail call i32 @llvm.fshl.i32(i32 %218, i32 %218, i32 11)
  %220 = mul i32 %219, -1640531535
  br label %276

221:                                              ; preds = %123
  %222 = load i32, ptr %11, align 8
  %223 = mul i32 %222, -1028477379
  %224 = add i32 %223, %127
  %225 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %226 = tail call i32 @llvm.fshl.i32(i32 %224, i32 %224, i32 17)
  %227 = mul i32 %226, 668265263
  br label %228

228:                                              ; preds = %221, %123
  %229 = phi ptr [ %11, %123 ], [ %225, %221 ]
  %230 = phi i32 [ %127, %123 ], [ %227, %221 ]
  %231 = load i32, ptr %229, align 4
  %232 = mul i32 %231, -1028477379
  %233 = add i32 %232, %230
  %234 = getelementptr inbounds nuw i8, ptr %229, i64 4
  %235 = tail call i32 @llvm.fshl.i32(i32 %233, i32 %233, i32 17)
  %236 = mul i32 %235, 668265263
  br label %237

237:                                              ; preds = %228, %123
  %238 = phi ptr [ %11, %123 ], [ %234, %228 ]
  %239 = phi i32 [ %127, %123 ], [ %236, %228 ]
  %240 = load i32, ptr %238, align 4
  %241 = mul i32 %240, -1028477379
  %242 = add i32 %241, %239
  %243 = getelementptr inbounds nuw i8, ptr %238, i64 4
  %244 = tail call i32 @llvm.fshl.i32(i32 %242, i32 %242, i32 17)
  %245 = mul i32 %244, 668265263
  br label %246

246:                                              ; preds = %237, %123
  %247 = phi ptr [ %11, %123 ], [ %243, %237 ]
  %248 = phi i32 [ %127, %123 ], [ %245, %237 ]
  %249 = getelementptr inbounds nuw i8, ptr %247, i64 1
  %250 = load i8, ptr %247, align 1
  %251 = zext i8 %250 to i32
  %252 = mul i32 %251, 374761393
  %253 = add i32 %252, %248
  %254 = tail call i32 @llvm.fshl.i32(i32 %253, i32 %253, i32 11)
  %255 = mul i32 %254, -1640531535
  br label %256

256:                                              ; preds = %246, %123
  %257 = phi ptr [ %11, %123 ], [ %249, %246 ]
  %258 = phi i32 [ %127, %123 ], [ %255, %246 ]
  %259 = getelementptr inbounds nuw i8, ptr %257, i64 1
  %260 = load i8, ptr %257, align 1
  %261 = zext i8 %260 to i32
  %262 = mul i32 %261, 374761393
  %263 = add i32 %262, %258
  %264 = tail call i32 @llvm.fshl.i32(i32 %263, i32 %263, i32 11)
  %265 = mul i32 %264, -1640531535
  br label %266

266:                                              ; preds = %256, %123
  %267 = phi ptr [ %11, %123 ], [ %259, %256 ]
  %268 = phi i32 [ %127, %123 ], [ %265, %256 ]
  %269 = load i8, ptr %267, align 1
  %270 = zext i8 %269 to i32
  %271 = mul i32 %270, 374761393
  %272 = add i32 %271, %268
  %273 = tail call i32 @llvm.fshl.i32(i32 %272, i32 %272, i32 11)
  %274 = mul i32 %273, -1640531535
  br label %276

275:                                              ; preds = %123
  unreachable

276:                                              ; preds = %123, %144, %168, %199, %266
  %277 = phi i32 [ %220, %199 ], [ %182, %168 ], [ %151, %144 ], [ %127, %123 ], [ %274, %266 ]
  %278 = lshr i32 %277, 15
  %279 = xor i32 %278, %277
  %280 = mul i32 %279, -2048144777
  %281 = lshr i32 %280, 13
  %282 = xor i32 %281, %280
  %283 = mul i32 %282, -1028477379
  %284 = lshr i32 %283, 16
  %285 = xor i32 %284, %283
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #8
  ret i32 %285
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_31_0(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %38, label %4

4:                                                ; preds = %2
  %5 = add i32 %1, 1640531535
  %6 = add i32 %1, -2048144777
  %7 = add i32 %1, 606290984
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 31
  %9 = load i32, ptr %0, align 1
  %10 = mul i32 %9, -2048144777
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 13)
  %13 = mul i32 %12, -1640531535
  %14 = freeze i32 %13
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %16 = load i32, ptr %15, align 1
  %17 = mul i32 %16, -2048144777
  %18 = add i32 %17, %6
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 13)
  %20 = mul i32 %19, -1640531535
  %21 = freeze i32 %20
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %23 = load i32, ptr %22, align 1
  %24 = mul i32 %23, -2048144777
  %25 = add i32 %24, %1
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 13)
  %27 = mul i32 %26, -1640531535
  %28 = freeze i32 %27
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %30 = load i32, ptr %29, align 1
  %31 = mul i32 %30, -2048144777
  %32 = add i32 %31, %5
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 13)
  %34 = mul i32 %33, -1640531535
  %35 = freeze i32 %34
  %36 = getelementptr i8, ptr %0, i64 16
  %37 = icmp ult ptr %36, %8
  br i1 %37, label %49, label %40

38:                                               ; preds = %2
  %39 = add i32 %1, 374761393
  br label %96

40:                                               ; preds = %4
  %41 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 1)
  %42 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 7)
  %43 = add i32 %42, %41
  %44 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 12)
  %45 = add i32 %43, %44
  %46 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 18)
  %47 = add i32 %45, %46
  %48 = add i32 %47, 31
  br label %96

49:                                               ; preds = %4
  %50 = load i32, ptr %36, align 1
  %51 = getelementptr i8, ptr %0, i64 20
  %52 = load i32, ptr %51, align 1
  %53 = getelementptr i8, ptr %0, i64 24
  %54 = load i32, ptr %53, align 1
  %55 = getelementptr i8, ptr %0, i64 28
  %56 = load i24, ptr %55, align 1
  %57 = zext i24 %56 to i32
  %58 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 1)
  %59 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 7)
  %60 = add i32 %59, %58
  %61 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 12)
  %62 = add i32 %60, %61
  %63 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 18)
  %64 = add i32 %62, %63
  %65 = add i32 %64, 31
  %66 = mul i32 %50, -1028477379
  %67 = add i32 %66, %65
  %68 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 17)
  %69 = mul i32 %68, 668265263
  %70 = mul i32 %52, -1028477379
  %71 = add i32 %70, %69
  %72 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 17)
  %73 = mul i32 %72, 668265263
  %74 = mul i32 %54, -1028477379
  %75 = add i32 %74, %73
  %76 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 17)
  %77 = mul i32 %76, 668265263
  %78 = and i24 %56, 255
  %79 = zext nneg i24 %78 to i32
  %80 = mul i32 %79, 374761393
  %81 = add i32 %80, %77
  %82 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 11)
  %83 = mul i32 %82, -1640531535
  %84 = zext i24 %56 to i32
  %85 = lshr i32 %84, 8
  %86 = and i32 %85, 255
  %87 = mul i32 %86, 374761393
  %88 = add i32 %87, %83
  %89 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 11)
  %90 = mul i32 %89, -1640531535
  %91 = lshr i32 %57, 16
  %92 = mul i32 %91, 374761393
  %93 = add i32 %92, %90
  %94 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 11)
  %95 = mul i32 %94, -1640531535
  br label %96

96:                                               ; preds = %40, %38, %49
  %97 = phi i32 [ %48, %40 ], [ %95, %49 ], [ %39, %38 ]
  %98 = lshr i32 %97, 15
  %99 = xor i32 %98, %97
  %100 = mul i32 %99, -2048144777
  %101 = lshr i32 %100, 13
  %102 = xor i32 %101, %100
  %103 = mul i32 %102, -1028477379
  %104 = lshr i32 %103, 16
  %105 = xor i32 %104, %103
  ret i32 %105
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_17_30(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #8
  %4 = add i32 %1, 606290984
  %5 = add i32 %1, -2048144777
  %6 = add i32 %1, 1640531535
  store i64 0, ptr %3, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %11, i8 0, i64 20, i1 false)
  %12 = icmp eq ptr %0, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 17
  %15 = load i32, ptr %0, align 1
  %16 = mul i32 %15, -2048144777
  %17 = add i32 %16, %4
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 13)
  %19 = mul i32 %18, -1640531535
  %20 = freeze i32 %19
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %22 = load i32, ptr %21, align 1
  %23 = mul i32 %22, -2048144777
  %24 = add i32 %23, %5
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 13)
  %26 = mul i32 %25, -1640531535
  %27 = freeze i32 %26
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %29 = load i32, ptr %28, align 1
  %30 = mul i32 %29, -2048144777
  %31 = add i32 %30, %1
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 13)
  %33 = mul i32 %32, -1640531535
  %34 = freeze i32 %33
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %36 = load i32, ptr %35, align 1
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %6
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = freeze i32 %40
  %42 = getelementptr i8, ptr %0, i64 16
  %43 = icmp ult ptr %42, %14
  br i1 %43, label %52, label %44

44:                                               ; preds = %2, %13
  %45 = phi i32 [ %41, %13 ], [ %6, %2 ]
  %46 = phi i32 [ %34, %13 ], [ %1, %2 ]
  %47 = phi i32 [ %27, %13 ], [ %5, %2 ]
  %48 = phi i32 [ %20, %13 ], [ %4, %2 ]
  %49 = phi i32 [ 47, %13 ], [ 30, %2 ]
  store i32 %49, ptr %3, align 8
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %50, align 4
  %51 = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %91

52:                                               ; preds = %13
  %53 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %54 = load i8, ptr %42, align 1
  store i8 %54, ptr %11, align 8
  store i32 1, ptr %53, align 8
  store i32 47, ptr %3, align 8
  %55 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %55, align 4
  %56 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 17
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %58, ptr noundef nonnull readonly align 1 dereferenceable(15) %57, i64 15, i1 false)
  %59 = load i32, ptr %11, align 8
  %60 = mul i32 %59, -2048144777
  %61 = add i32 %60, %20
  %62 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 13)
  %63 = mul i32 %62, -1640531535
  %64 = freeze i32 %63
  store i32 %64, ptr %7, align 8
  %65 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %66 = load i32, ptr %65, align 4
  %67 = mul i32 %66, -2048144777
  %68 = add i32 %67, %27
  %69 = tail call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 13)
  %70 = mul i32 %69, -1640531535
  %71 = freeze i32 %70
  store i32 %71, ptr %8, align 4
  %72 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %73 = load i32, ptr %72, align 8
  %74 = mul i32 %73, -2048144777
  %75 = add i32 %74, %34
  %76 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 13)
  %77 = mul i32 %76, -1640531535
  %78 = freeze i32 %77
  store i32 %78, ptr %9, align 8
  %79 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %80 = load i32, ptr %79, align 4
  %81 = mul i32 %80, -2048144777
  %82 = add i32 %81, %41
  %83 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 13)
  %84 = mul i32 %83, -1640531535
  %85 = freeze i32 %84
  store i32 %85, ptr %10, align 4
  %86 = load i32, ptr %56, align 8
  %87 = sub i32 16, %86
  %88 = zext i32 %87 to i64
  %89 = add nuw nsw i64 %88, 17
  store i32 0, ptr %56, align 8
  %90 = icmp ugt i32 %87, 14
  br i1 %90, label %128, label %91

91:                                               ; preds = %44, %52
  %92 = phi ptr [ %56, %52 ], [ %51, %44 ]
  %93 = phi i32 [ 47, %52 ], [ %49, %44 ]
  %94 = phi i32 [ %85, %52 ], [ %45, %44 ]
  %95 = phi i32 [ %78, %52 ], [ %46, %44 ]
  %96 = phi i32 [ %71, %52 ], [ %47, %44 ]
  %97 = phi i32 [ %64, %52 ], [ %48, %44 ]
  %98 = phi i64 [ %89, %52 ], [ 17, %44 ]
  %99 = getelementptr inbounds nuw i8, ptr %0, i64 %98
  %100 = load i32, ptr %99, align 1
  %101 = mul i32 %100, -2048144777
  %102 = add i32 %101, %97
  %103 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 13)
  %104 = mul i32 %103, -1640531535
  %105 = freeze i32 %104
  %106 = getelementptr inbounds nuw i8, ptr %99, i64 4
  %107 = load i32, ptr %106, align 1
  %108 = mul i32 %107, -2048144777
  %109 = add i32 %108, %96
  %110 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 13)
  %111 = mul i32 %110, -1640531535
  %112 = freeze i32 %111
  %113 = getelementptr inbounds nuw i8, ptr %99, i64 8
  %114 = load i32, ptr %113, align 1
  %115 = mul i32 %114, -2048144777
  %116 = add i32 %115, %95
  %117 = tail call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 13)
  %118 = mul i32 %117, -1640531535
  %119 = freeze i32 %118
  %120 = getelementptr inbounds nuw i8, ptr %99, i64 12
  %121 = load i32, ptr %120, align 1
  %122 = mul i32 %121, -2048144777
  %123 = add i32 %122, %94
  %124 = tail call i32 @llvm.fshl.i32(i32 %123, i32 %123, i32 13)
  %125 = mul i32 %124, -1640531535
  %126 = freeze i32 %125
  %127 = add nuw nsw i64 %98, 16
  store i32 %105, ptr %7, align 8
  store i32 %112, ptr %8, align 4
  store i32 %119, ptr %9, align 8
  store i32 %126, ptr %10, align 4
  br label %128

128:                                              ; preds = %91, %52
  %129 = phi ptr [ %56, %52 ], [ %92, %91 ]
  %130 = phi i32 [ 47, %52 ], [ %93, %91 ]
  %131 = phi i32 [ %85, %52 ], [ %126, %91 ]
  %132 = phi i32 [ %78, %52 ], [ %119, %91 ]
  %133 = phi i32 [ %71, %52 ], [ %112, %91 ]
  %134 = phi i32 [ %64, %52 ], [ %105, %91 ]
  %135 = phi i64 [ %89, %52 ], [ %127, %91 ]
  %136 = icmp samesign ult i64 %135, 47
  br i1 %136, label %146, label %137

137:                                              ; preds = %128
  %138 = tail call i32 @llvm.fshl.i32(i32 %133, i32 %133, i32 7)
  %139 = tail call i32 @llvm.fshl.i32(i32 %134, i32 %134, i32 1)
  %140 = add i32 %138, %139
  %141 = tail call i32 @llvm.fshl.i32(i32 %132, i32 %132, i32 12)
  %142 = add i32 %140, %141
  %143 = tail call i32 @llvm.fshl.i32(i32 %131, i32 %131, i32 18)
  %144 = add i32 %142, %143
  %145 = add i32 %130, %144
  br label %307

146:                                              ; preds = %128
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 %135
  %148 = sub nuw nsw i64 47, %135
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %11, ptr nonnull readonly align 1 %147, i64 %148, i1 false)
  %149 = trunc nuw nsw i64 %148 to i32
  store i32 %149, ptr %129, align 4
  %150 = and i32 %149, 15
  %151 = tail call i32 @llvm.fshl.i32(i32 %133, i32 %133, i32 7)
  %152 = tail call i32 @llvm.fshl.i32(i32 %134, i32 %134, i32 1)
  %153 = add i32 %151, %152
  %154 = tail call i32 @llvm.fshl.i32(i32 %132, i32 %132, i32 12)
  %155 = add i32 %153, %154
  %156 = tail call i32 @llvm.fshl.i32(i32 %131, i32 %131, i32 18)
  %157 = add i32 %155, %156
  %158 = add i32 %130, %157
  switch i32 %150, label %306 [
    i32 12, label %159
    i32 8, label %166
    i32 4, label %175
    i32 13, label %183
    i32 9, label %190
    i32 5, label %199
    i32 14, label %214
    i32 10, label %221
    i32 6, label %230
    i32 15, label %252
    i32 11, label %259
    i32 7, label %268
    i32 3, label %277
    i32 2, label %287
    i32 1, label %297
    i32 0, label %307
  ]

159:                                              ; preds = %146
  %160 = load i32, ptr %11, align 8
  %161 = mul i32 %160, -1028477379
  %162 = add i32 %161, %158
  %163 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %164 = tail call i32 @llvm.fshl.i32(i32 %162, i32 %162, i32 17)
  %165 = mul i32 %164, 668265263
  br label %166

166:                                              ; preds = %159, %146
  %167 = phi ptr [ %11, %146 ], [ %163, %159 ]
  %168 = phi i32 [ %158, %146 ], [ %165, %159 ]
  %169 = load i32, ptr %167, align 4
  %170 = mul i32 %169, -1028477379
  %171 = add i32 %170, %168
  %172 = getelementptr inbounds nuw i8, ptr %167, i64 4
  %173 = tail call i32 @llvm.fshl.i32(i32 %171, i32 %171, i32 17)
  %174 = mul i32 %173, 668265263
  br label %175

175:                                              ; preds = %166, %146
  %176 = phi ptr [ %11, %146 ], [ %172, %166 ]
  %177 = phi i32 [ %158, %146 ], [ %174, %166 ]
  %178 = load i32, ptr %176, align 4
  %179 = mul i32 %178, -1028477379
  %180 = add i32 %179, %177
  %181 = tail call i32 @llvm.fshl.i32(i32 %180, i32 %180, i32 17)
  %182 = mul i32 %181, 668265263
  br label %307

183:                                              ; preds = %146
  %184 = load i32, ptr %11, align 8
  %185 = mul i32 %184, -1028477379
  %186 = add i32 %185, %158
  %187 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %188 = tail call i32 @llvm.fshl.i32(i32 %186, i32 %186, i32 17)
  %189 = mul i32 %188, 668265263
  br label %190

190:                                              ; preds = %183, %146
  %191 = phi ptr [ %11, %146 ], [ %187, %183 ]
  %192 = phi i32 [ %158, %146 ], [ %189, %183 ]
  %193 = load i32, ptr %191, align 4
  %194 = mul i32 %193, -1028477379
  %195 = add i32 %194, %192
  %196 = getelementptr inbounds nuw i8, ptr %191, i64 4
  %197 = tail call i32 @llvm.fshl.i32(i32 %195, i32 %195, i32 17)
  %198 = mul i32 %197, 668265263
  br label %199

199:                                              ; preds = %190, %146
  %200 = phi ptr [ %11, %146 ], [ %196, %190 ]
  %201 = phi i32 [ %158, %146 ], [ %198, %190 ]
  %202 = load i32, ptr %200, align 4
  %203 = mul i32 %202, -1028477379
  %204 = add i32 %203, %201
  %205 = getelementptr inbounds nuw i8, ptr %200, i64 4
  %206 = tail call i32 @llvm.fshl.i32(i32 %204, i32 %204, i32 17)
  %207 = mul i32 %206, 668265263
  %208 = load i8, ptr %205, align 1
  %209 = zext i8 %208 to i32
  %210 = mul i32 %209, 374761393
  %211 = add i32 %207, %210
  %212 = tail call i32 @llvm.fshl.i32(i32 %211, i32 %211, i32 11)
  %213 = mul i32 %212, -1640531535
  br label %307

214:                                              ; preds = %146
  %215 = load i32, ptr %11, align 8
  %216 = mul i32 %215, -1028477379
  %217 = add i32 %216, %158
  %218 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %219 = tail call i32 @llvm.fshl.i32(i32 %217, i32 %217, i32 17)
  %220 = mul i32 %219, 668265263
  br label %221

221:                                              ; preds = %214, %146
  %222 = phi ptr [ %11, %146 ], [ %218, %214 ]
  %223 = phi i32 [ %158, %146 ], [ %220, %214 ]
  %224 = load i32, ptr %222, align 4
  %225 = mul i32 %224, -1028477379
  %226 = add i32 %225, %223
  %227 = getelementptr inbounds nuw i8, ptr %222, i64 4
  %228 = tail call i32 @llvm.fshl.i32(i32 %226, i32 %226, i32 17)
  %229 = mul i32 %228, 668265263
  br label %230

230:                                              ; preds = %221, %146
  %231 = phi ptr [ %11, %146 ], [ %227, %221 ]
  %232 = phi i32 [ %158, %146 ], [ %229, %221 ]
  %233 = load i32, ptr %231, align 4
  %234 = mul i32 %233, -1028477379
  %235 = add i32 %234, %232
  %236 = getelementptr inbounds nuw i8, ptr %231, i64 4
  %237 = tail call i32 @llvm.fshl.i32(i32 %235, i32 %235, i32 17)
  %238 = mul i32 %237, 668265263
  %239 = getelementptr inbounds nuw i8, ptr %231, i64 5
  %240 = load i8, ptr %236, align 1
  %241 = zext i8 %240 to i32
  %242 = mul i32 %241, 374761393
  %243 = add i32 %238, %242
  %244 = tail call i32 @llvm.fshl.i32(i32 %243, i32 %243, i32 11)
  %245 = mul i32 %244, -1640531535
  %246 = load i8, ptr %239, align 1
  %247 = zext i8 %246 to i32
  %248 = mul i32 %247, 374761393
  %249 = add i32 %245, %248
  %250 = tail call i32 @llvm.fshl.i32(i32 %249, i32 %249, i32 11)
  %251 = mul i32 %250, -1640531535
  br label %307

252:                                              ; preds = %146
  %253 = load i32, ptr %11, align 8
  %254 = mul i32 %253, -1028477379
  %255 = add i32 %254, %158
  %256 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %257 = tail call i32 @llvm.fshl.i32(i32 %255, i32 %255, i32 17)
  %258 = mul i32 %257, 668265263
  br label %259

259:                                              ; preds = %252, %146
  %260 = phi ptr [ %11, %146 ], [ %256, %252 ]
  %261 = phi i32 [ %158, %146 ], [ %258, %252 ]
  %262 = load i32, ptr %260, align 4
  %263 = mul i32 %262, -1028477379
  %264 = add i32 %263, %261
  %265 = getelementptr inbounds nuw i8, ptr %260, i64 4
  %266 = tail call i32 @llvm.fshl.i32(i32 %264, i32 %264, i32 17)
  %267 = mul i32 %266, 668265263
  br label %268

268:                                              ; preds = %259, %146
  %269 = phi ptr [ %11, %146 ], [ %265, %259 ]
  %270 = phi i32 [ %158, %146 ], [ %267, %259 ]
  %271 = load i32, ptr %269, align 4
  %272 = mul i32 %271, -1028477379
  %273 = add i32 %272, %270
  %274 = getelementptr inbounds nuw i8, ptr %269, i64 4
  %275 = tail call i32 @llvm.fshl.i32(i32 %273, i32 %273, i32 17)
  %276 = mul i32 %275, 668265263
  br label %277

277:                                              ; preds = %268, %146
  %278 = phi ptr [ %11, %146 ], [ %274, %268 ]
  %279 = phi i32 [ %158, %146 ], [ %276, %268 ]
  %280 = getelementptr inbounds nuw i8, ptr %278, i64 1
  %281 = load i8, ptr %278, align 1
  %282 = zext i8 %281 to i32
  %283 = mul i32 %282, 374761393
  %284 = add i32 %283, %279
  %285 = tail call i32 @llvm.fshl.i32(i32 %284, i32 %284, i32 11)
  %286 = mul i32 %285, -1640531535
  br label %287

287:                                              ; preds = %277, %146
  %288 = phi ptr [ %11, %146 ], [ %280, %277 ]
  %289 = phi i32 [ %158, %146 ], [ %286, %277 ]
  %290 = getelementptr inbounds nuw i8, ptr %288, i64 1
  %291 = load i8, ptr %288, align 1
  %292 = zext i8 %291 to i32
  %293 = mul i32 %292, 374761393
  %294 = add i32 %293, %289
  %295 = tail call i32 @llvm.fshl.i32(i32 %294, i32 %294, i32 11)
  %296 = mul i32 %295, -1640531535
  br label %297

297:                                              ; preds = %287, %146
  %298 = phi ptr [ %11, %146 ], [ %290, %287 ]
  %299 = phi i32 [ %158, %146 ], [ %296, %287 ]
  %300 = load i8, ptr %298, align 1
  %301 = zext i8 %300 to i32
  %302 = mul i32 %301, 374761393
  %303 = add i32 %302, %299
  %304 = tail call i32 @llvm.fshl.i32(i32 %303, i32 %303, i32 11)
  %305 = mul i32 %304, -1640531535
  br label %307

306:                                              ; preds = %146
  unreachable

307:                                              ; preds = %137, %146, %175, %199, %230, %297
  %308 = phi i32 [ %251, %230 ], [ %213, %199 ], [ %182, %175 ], [ %158, %146 ], [ %305, %297 ], [ %145, %137 ]
  %309 = lshr i32 %308, 15
  %310 = xor i32 %309, %308
  %311 = mul i32 %310, -2048144777
  %312 = lshr i32 %311, 13
  %313 = xor i32 %312, %311
  %314 = mul i32 %313, -1028477379
  %315 = lshr i32 %314, 16
  %316 = xor i32 %315, %314
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #8
  ret i32 %316
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 2148096316}
