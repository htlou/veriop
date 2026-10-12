; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7bf3d9f/wrap_s64.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/7bf3d9f/wrap_s64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_INLINE_XXH64_state_s = type { i64, i64, i64, i64, i64, [4 x i64], i32, i32, i64 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64_0_0(ptr noundef readnone %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %1, 2870177450012600261
  %4 = lshr i64 %3, 33
  %5 = xor i64 %4, %3
  %6 = mul i64 %5, -4417276706812531889
  %7 = lshr i64 %6, 29
  %8 = xor i64 %7, %6
  %9 = mul i64 %8, 1609587929392839161
  %10 = lshr i64 %9, 32
  %11 = xor i64 %10, %9
  ret i64 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_s64_1_0(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = add i64 %1, 2870177450012600261
  br label %14

6:                                                ; preds = %2
  %7 = load i8, ptr %0, align 1
  %8 = zext i8 %7 to i64
  %9 = mul i64 %8, 2870177450012600261
  %10 = add i64 %1, 2870177450012600262
  %11 = xor i64 %9, %10
  %12 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 11)
  %13 = mul i64 %12, -7046029288634856825
  br label %14

14:                                               ; preds = %4, %6
  %15 = phi i64 [ %13, %6 ], [ %5, %4 ]
  %16 = lshr i64 %15, 33
  %17 = xor i64 %16, %15
  %18 = mul i64 %17, -4417276706812531889
  %19 = lshr i64 %18, 29
  %20 = xor i64 %19, %18
  %21 = mul i64 %20, 1609587929392839161
  %22 = lshr i64 %21, 32
  %23 = xor i64 %22, %21
  ret i64 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @target_s64_7_8(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = alloca [15 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %3, i8 0, i64 15, i1 false)
  %4 = icmp eq ptr %0, null
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 7
  br i1 %4, label %6, label %16

6:                                                ; preds = %2
  %7 = load i64, ptr %5, align 1
  store i64 %7, ptr %3, align 8
  %8 = add i64 %1, 2870177450012600269
  %9 = mul i64 %7, -4417276706812531889
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 31)
  %11 = mul i64 %10, -7046029288634856825
  %12 = xor i64 %11, %8
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 27)
  %14 = mul i64 %13, -7046029288634856825
  %15 = add i64 %14, -8796714831421723037
  br label %57

16:                                               ; preds = %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %3, ptr noundef nonnull align 1 dereferenceable(7) %0, i64 7, i1 false)
  %17 = load i64, ptr %5, align 1
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 7
  store i64 %17, ptr %18, align 1
  %19 = add i64 %1, 2870177450012600276
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 13
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i64
  %23 = mul i64 %22, 2870177450012600261
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i64
  %27 = mul i64 %26, 2870177450012600261
  %28 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %29 = load i32, ptr %28, align 8
  %30 = zext i32 %29 to i64
  %31 = mul i64 %30, -7046029288634856825
  %32 = load i64, ptr %3, align 8
  %33 = mul i64 %32, -4417276706812531889
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 31)
  %35 = mul i64 %34, -7046029288634856825
  %36 = xor i64 %35, %19
  %37 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 27)
  %38 = mul i64 %37, -7046029288634856825
  %39 = add i64 %38, -8796714831421723037
  %40 = xor i64 %31, %39
  %41 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 23)
  %42 = mul i64 %41, -4417276706812531889
  %43 = add i64 %42, 1609587929392839161
  %44 = xor i64 %27, %43
  %45 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 11)
  %46 = mul i64 %45, -7046029288634856825
  %47 = xor i64 %23, %46
  %48 = tail call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 11)
  %49 = mul i64 %48, -7046029288634856825
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 14
  %51 = load i8, ptr %50, align 2
  %52 = zext i8 %51 to i64
  %53 = mul i64 %52, 2870177450012600261
  %54 = xor i64 %53, %49
  %55 = tail call i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 11)
  %56 = mul i64 %55, -7046029288634856825
  br label %57

57:                                               ; preds = %6, %16
  %58 = phi i64 [ %15, %6 ], [ %56, %16 ]
  %59 = lshr i64 %58, 33
  %60 = xor i64 %59, %58
  %61 = mul i64 %60, -4417276706812531889
  %62 = lshr i64 %61, 29
  %63 = xor i64 %62, %61
  %64 = mul i64 %63, 1609587929392839161
  %65 = lshr i64 %64, 32
  %66 = xor i64 %65, %64
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %3)
  ret i64 %66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @target_s64_5_10(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 5
  br i1 %3, label %5, label %28

5:                                                ; preds = %2
  %6 = load i64, ptr %4, align 1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %10 = load i8, ptr %9, align 1
  %11 = add i64 %1, 2870177450012600271
  %12 = mul i64 %6, -4417276706812531889
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 31)
  %14 = mul i64 %13, -7046029288634856825
  %15 = xor i64 %14, %11
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 27)
  %17 = mul i64 %16, -7046029288634856825
  %18 = add i64 %17, -8796714831421723037
  %19 = zext i8 %8 to i64
  %20 = mul i64 %19, 2870177450012600261
  %21 = xor i64 %18, %20
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 11)
  %23 = mul i64 %22, -7046029288634856825
  %24 = zext i8 %10 to i64
  %25 = mul i64 %24, 2870177450012600261
  %26 = xor i64 %23, %25
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 11)
  br label %71

28:                                               ; preds = %2
  %29 = load i40, ptr %0, align 1
  %30 = zext i40 %29 to i64
  %31 = load i24, ptr %4, align 1
  %32 = zext i24 %31 to i64
  %33 = shl nuw i64 %32, 40
  %34 = or disjoint i64 %33, %30
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %36 = load i32, ptr %35, align 1
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %38 = load i8, ptr %37, align 1
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %40 = load i8, ptr %39, align 1
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %42 = load i8, ptr %41, align 1
  %43 = add i64 %1, 2870177450012600276
  %44 = zext i8 %40 to i64
  %45 = mul i64 %44, 2870177450012600261
  %46 = zext i8 %38 to i64
  %47 = mul i64 %46, 2870177450012600261
  %48 = zext i32 %36 to i64
  %49 = mul i64 %48, -7046029288634856825
  %50 = mul i64 %34, -4417276706812531889
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 31)
  %52 = mul i64 %51, -7046029288634856825
  %53 = xor i64 %52, %43
  %54 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 27)
  %55 = mul i64 %54, -7046029288634856825
  %56 = add i64 %55, -8796714831421723037
  %57 = xor i64 %49, %56
  %58 = tail call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 23)
  %59 = mul i64 %58, -4417276706812531889
  %60 = add i64 %59, 1609587929392839161
  %61 = xor i64 %47, %60
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 11)
  %63 = mul i64 %62, -7046029288634856825
  %64 = xor i64 %45, %63
  %65 = tail call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 11)
  %66 = mul i64 %65, -7046029288634856825
  %67 = zext i8 %42 to i64
  %68 = mul i64 %67, 2870177450012600261
  %69 = xor i64 %68, %66
  %70 = tail call i64 @llvm.fshl.i64(i64 %69, i64 %69, i64 11)
  br label %71

71:                                               ; preds = %5, %28
  %72 = phi i64 [ %27, %5 ], [ %70, %28 ]
  %73 = mul i64 %72, -7046029288634856825
  %74 = lshr i64 %73, 33
  %75 = xor i64 %74, %73
  %76 = mul i64 %75, -4417276706812531889
  %77 = lshr i64 %76, 29
  %78 = xor i64 %77, %76
  %79 = mul i64 %78, 1609587929392839161
  %80 = lshr i64 %79, 32
  %81 = xor i64 %80, %79
  ret i64 %81
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @target_s64_31_0(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = add i64 %1, 2870177450012600261
  br label %63

6:                                                ; preds = %2
  %7 = load i64, ptr %0, align 1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = load i64, ptr %8, align 1
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = load i64, ptr %10, align 1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %13 = load i32, ptr %12, align 1
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %19 = load i8, ptr %18, align 1
  %20 = add i64 %1, 2870177450012600292
  %21 = mul i64 %7, -4417276706812531889
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = xor i64 %23, %20
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 27)
  %26 = mul i64 %25, -7046029288634856825
  %27 = add i64 %26, -8796714831421723037
  %28 = mul i64 %9, -4417276706812531889
  %29 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 31)
  %30 = mul i64 %29, -7046029288634856825
  %31 = xor i64 %30, %27
  %32 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 27)
  %33 = mul i64 %32, -7046029288634856825
  %34 = add i64 %33, -8796714831421723037
  %35 = mul i64 %11, -4417276706812531889
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 31)
  %37 = mul i64 %36, -7046029288634856825
  %38 = xor i64 %37, %34
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 27)
  %40 = mul i64 %39, -7046029288634856825
  %41 = add i64 %40, -8796714831421723037
  %42 = zext i32 %13 to i64
  %43 = mul i64 %42, -7046029288634856825
  %44 = xor i64 %43, %41
  %45 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 23)
  %46 = mul i64 %45, -4417276706812531889
  %47 = add i64 %46, 1609587929392839161
  %48 = zext i8 %15 to i64
  %49 = mul i64 %48, 2870177450012600261
  %50 = xor i64 %49, %47
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 11)
  %52 = mul i64 %51, -7046029288634856825
  %53 = zext i8 %17 to i64
  %54 = mul i64 %53, 2870177450012600261
  %55 = xor i64 %54, %52
  %56 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 11)
  %57 = mul i64 %56, -7046029288634856825
  %58 = zext i8 %19 to i64
  %59 = mul i64 %58, 2870177450012600261
  %60 = xor i64 %59, %57
  %61 = tail call i64 @llvm.fshl.i64(i64 %60, i64 %60, i64 11)
  %62 = mul i64 %61, -7046029288634856825
  br label %63

63:                                               ; preds = %4, %6
  %64 = phi i64 [ %5, %4 ], [ %62, %6 ]
  %65 = lshr i64 %64, 33
  %66 = xor i64 %65, %64
  %67 = mul i64 %66, -4417276706812531889
  %68 = lshr i64 %67, 29
  %69 = xor i64 %68, %67
  %70 = mul i64 %69, 1609587929392839161
  %71 = lshr i64 %70, 32
  %72 = xor i64 %71, %70
  ret i64 %72
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @target_s64_13_18(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 13
  br i1 %3, label %5, label %37

5:                                                ; preds = %2
  %6 = load i64, ptr %4, align 1
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 21
  %8 = load i64, ptr %7, align 1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %12 = load i8, ptr %11, align 1
  %13 = add i64 %1, 2870177450012600279
  %14 = mul i64 %6, -4417276706812531889
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 31)
  %16 = mul i64 %15, -7046029288634856825
  %17 = xor i64 %16, %13
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 27)
  %19 = mul i64 %18, -7046029288634856825
  %20 = add i64 %19, -8796714831421723037
  %21 = mul i64 %8, -4417276706812531889
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = xor i64 %23, %20
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 27)
  %26 = mul i64 %25, -7046029288634856825
  %27 = add i64 %26, -8796714831421723037
  %28 = zext i8 %10 to i64
  %29 = mul i64 %28, 2870177450012600261
  %30 = xor i64 %27, %29
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 11)
  %32 = mul i64 %31, -7046029288634856825
  %33 = zext i8 %12 to i64
  %34 = mul i64 %33, 2870177450012600261
  %35 = xor i64 %32, %34
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 11)
  br label %98

37:                                               ; preds = %2
  %38 = load i64, ptr %0, align 1
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %40 = load i40, ptr %39, align 1
  %41 = zext i40 %40 to i64
  %42 = load i24, ptr %4, align 1
  %43 = zext i24 %42 to i64
  %44 = shl nuw i64 %43, 40
  %45 = or disjoint i64 %44, %41
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %47 = load i64, ptr %46, align 1
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %49 = load i32, ptr %48, align 1
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %51 = load i8, ptr %50, align 1
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %53 = load i8, ptr %52, align 1
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %55 = load i8, ptr %54, align 1
  %56 = add i64 %1, 2870177450012600292
  %57 = mul i64 %38, -4417276706812531889
  %58 = tail call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 31)
  %59 = mul i64 %58, -7046029288634856825
  %60 = xor i64 %59, %56
  %61 = tail call i64 @llvm.fshl.i64(i64 %60, i64 %60, i64 27)
  %62 = mul i64 %61, -7046029288634856825
  %63 = add i64 %62, -8796714831421723037
  %64 = zext i8 %53 to i64
  %65 = mul i64 %64, 2870177450012600261
  %66 = zext i8 %51 to i64
  %67 = mul i64 %66, 2870177450012600261
  %68 = zext i32 %49 to i64
  %69 = mul i64 %68, -7046029288634856825
  %70 = mul i64 %47, -4417276706812531889
  %71 = tail call i64 @llvm.fshl.i64(i64 %70, i64 %70, i64 31)
  %72 = mul i64 %71, -7046029288634856825
  %73 = mul i64 %45, -4417276706812531889
  %74 = tail call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 31)
  %75 = mul i64 %74, -7046029288634856825
  %76 = xor i64 %75, %63
  %77 = tail call i64 @llvm.fshl.i64(i64 %76, i64 %76, i64 27)
  %78 = mul i64 %77, -7046029288634856825
  %79 = add i64 %78, -8796714831421723037
  %80 = xor i64 %72, %79
  %81 = tail call i64 @llvm.fshl.i64(i64 %80, i64 %80, i64 27)
  %82 = mul i64 %81, -7046029288634856825
  %83 = add i64 %82, -8796714831421723037
  %84 = xor i64 %69, %83
  %85 = tail call i64 @llvm.fshl.i64(i64 %84, i64 %84, i64 23)
  %86 = mul i64 %85, -4417276706812531889
  %87 = add i64 %86, 1609587929392839161
  %88 = xor i64 %67, %87
  %89 = tail call i64 @llvm.fshl.i64(i64 %88, i64 %88, i64 11)
  %90 = mul i64 %89, -7046029288634856825
  %91 = xor i64 %65, %90
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 11)
  %93 = mul i64 %92, -7046029288634856825
  %94 = zext i8 %55 to i64
  %95 = mul i64 %94, 2870177450012600261
  %96 = xor i64 %95, %93
  %97 = tail call i64 @llvm.fshl.i64(i64 %96, i64 %96, i64 11)
  br label %98

98:                                               ; preds = %5, %37
  %99 = phi i64 [ %36, %5 ], [ %97, %37 ]
  %100 = mul i64 %99, -7046029288634856825
  %101 = lshr i64 %100, 33
  %102 = xor i64 %101, %100
  %103 = mul i64 %102, -4417276706812531889
  %104 = lshr i64 %103, 29
  %105 = xor i64 %104, %103
  %106 = mul i64 %105, 1609587929392839161
  %107 = lshr i64 %106, 32
  %108 = xor i64 %107, %106
  ret i64 %108
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @target_s64_10_30(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = alloca { [4 x i64], i32, i32, i64 }, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %87, label %5

5:                                                ; preds = %2
  %6 = add i64 %1, 7046029288634856825
  %7 = add i64 %1, -4417276706812531889
  %8 = add i64 %1, 6983438078262162902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef nonnull align 1 dereferenceable(10) %0, i64 10, i1 false)
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 10, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %11, ptr noundef nonnull align 1 dereferenceable(22) %10, i64 22, i1 false)
  %12 = load i64, ptr %3, align 8
  %13 = mul i64 %12, -4417276706812531889
  %14 = add i64 %13, %8
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 31)
  %16 = mul i64 %15, -7046029288634856825
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %18 = load i64, ptr %17, align 8
  %19 = mul i64 %18, -4417276706812531889
  %20 = add i64 %19, %7
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %24 = load i64, ptr %23, align 8
  %25 = mul i64 %24, -4417276706812531889
  %26 = add i64 %25, %1
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %30 = load i64, ptr %29, align 8
  %31 = mul i64 %30, -4417276706812531889
  %32 = add i64 %31, %6
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %36 = load i32, ptr %35, align 8
  %37 = sub i32 32, %36
  %38 = icmp ult i32 %37, 30
  br i1 %38, label %39, label %47

39:                                               ; preds = %5
  %40 = zext nneg i32 %37 to i64
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 %40
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 10
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %44 = ptrtoint ptr %43 to i64
  %45 = ptrtoint ptr %42 to i64
  %46 = sub i64 %44, %45
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %3, ptr nonnull readonly align 1 %42, i64 %46, i1 false)
  br label %47

47:                                               ; preds = %5, %39
  %48 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 1)
  %49 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 7)
  %50 = add i64 %49, %48
  %51 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 12)
  %52 = add i64 %50, %51
  %53 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 18)
  %54 = add i64 %52, %53
  %55 = mul i64 %15, -2381459717836149591
  %56 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 31)
  %57 = mul i64 %56, -7046029288634856825
  %58 = xor i64 %54, %57
  %59 = mul i64 %58, -7046029288634856825
  %60 = add i64 %59, -8796714831421723037
  %61 = mul i64 %21, -2381459717836149591
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 31)
  %63 = mul i64 %62, -7046029288634856825
  %64 = xor i64 %60, %63
  %65 = mul i64 %64, -7046029288634856825
  %66 = add i64 %65, -8796714831421723037
  %67 = mul i64 %27, -2381459717836149591
  %68 = tail call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 31)
  %69 = mul i64 %68, -7046029288634856825
  %70 = xor i64 %66, %69
  %71 = mul i64 %70, -7046029288634856825
  %72 = add i64 %71, -8796714831421723037
  %73 = mul i64 %33, -2381459717836149591
  %74 = tail call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 31)
  %75 = mul i64 %74, -7046029288634856825
  %76 = xor i64 %72, %75
  %77 = mul i64 %76, -7046029288634856825
  %78 = add i64 %77, -8796714831421722997
  %79 = load i64, ptr %3, align 8
  %80 = mul i64 %79, -4417276706812531889
  %81 = tail call i64 @llvm.fshl.i64(i64 %80, i64 %80, i64 31)
  %82 = mul i64 %81, -7046029288634856825
  %83 = xor i64 %82, %78
  %84 = tail call i64 @llvm.fshl.i64(i64 %83, i64 %83, i64 27)
  %85 = mul i64 %84, -7046029288634856825
  %86 = add i64 %85, -8796714831421723037
  br label %138

87:                                               ; preds = %2
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(30) %3, ptr noundef nonnull align 1 dereferenceable(30) %88, i64 30, i1 false)
  %89 = add i64 %1, 2870177450012600291
  %90 = load i64, ptr %3, align 8
  %91 = mul i64 %90, -4417276706812531889
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 31)
  %93 = mul i64 %92, -7046029288634856825
  %94 = xor i64 %93, %89
  %95 = tail call i64 @llvm.fshl.i64(i64 %94, i64 %94, i64 27)
  %96 = mul i64 %95, -7046029288634856825
  %97 = add i64 %96, -8796714831421723037
  %98 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %99 = load i64, ptr %98, align 8
  %100 = mul i64 %99, -4417276706812531889
  %101 = tail call i64 @llvm.fshl.i64(i64 %100, i64 %100, i64 31)
  %102 = mul i64 %101, -7046029288634856825
  %103 = xor i64 %102, %97
  %104 = tail call i64 @llvm.fshl.i64(i64 %103, i64 %103, i64 27)
  %105 = mul i64 %104, -7046029288634856825
  %106 = add i64 %105, -8796714831421723037
  %107 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %108 = load i64, ptr %107, align 8
  %109 = mul i64 %108, -4417276706812531889
  %110 = tail call i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 31)
  %111 = mul i64 %110, -7046029288634856825
  %112 = xor i64 %111, %106
  %113 = tail call i64 @llvm.fshl.i64(i64 %112, i64 %112, i64 27)
  %114 = mul i64 %113, -7046029288634856825
  %115 = add i64 %114, -8796714831421723037
  %116 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %117 = load i32, ptr %116, align 8
  %118 = zext i32 %117 to i64
  %119 = mul i64 %118, -7046029288634856825
  %120 = xor i64 %119, %115
  %121 = tail call i64 @llvm.fshl.i64(i64 %120, i64 %120, i64 23)
  %122 = mul i64 %121, -4417276706812531889
  %123 = add i64 %122, 1609587929392839161
  %124 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %125 = load i8, ptr %124, align 4
  %126 = zext i8 %125 to i64
  %127 = mul i64 %126, 2870177450012600261
  %128 = xor i64 %123, %127
  %129 = tail call i64 @llvm.fshl.i64(i64 %128, i64 %128, i64 11)
  %130 = mul i64 %129, -7046029288634856825
  %131 = getelementptr inbounds nuw i8, ptr %3, i64 29
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i64
  %134 = mul i64 %133, 2870177450012600261
  %135 = xor i64 %130, %134
  %136 = tail call i64 @llvm.fshl.i64(i64 %135, i64 %135, i64 11)
  %137 = mul i64 %136, -7046029288634856825
  br label %138

138:                                              ; preds = %47, %87
  %139 = phi i64 [ %137, %87 ], [ %86, %47 ]
  %140 = lshr i64 %139, 33
  %141 = xor i64 %140, %139
  %142 = mul i64 %141, -4417276706812531889
  %143 = lshr i64 %142, 29
  %144 = xor i64 %143, %142
  %145 = mul i64 %144, 1609587929392839161
  %146 = lshr i64 %145, 32
  %147 = xor i64 %146, %145
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3)
  ret i64 %147
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_s64_32_0(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %62, label %4

4:                                                ; preds = %2
  %5 = add i64 %1, 7046029288634856825
  %6 = add i64 %1, -4417276706812531889
  %7 = add i64 %1, 6983438078262162902
  %8 = load i64, ptr %0, align 1
  %9 = mul i64 %8, -4417276706812531889
  %10 = add i64 %9, %7
  %11 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 31)
  %12 = mul i64 %11, -7046029288634856825
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = load i64, ptr %13, align 1
  %15 = mul i64 %14, -4417276706812531889
  %16 = add i64 %15, %6
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 31)
  %18 = mul i64 %17, -7046029288634856825
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %20 = load i64, ptr %19, align 1
  %21 = mul i64 %20, -4417276706812531889
  %22 = add i64 %21, %1
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %26 = load i64, ptr %25, align 1
  %27 = mul i64 %26, -4417276706812531889
  %28 = add i64 %27, %5
  %29 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 31)
  %30 = mul i64 %29, -7046029288634856825
  %31 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 1)
  %32 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 7)
  %33 = add i64 %32, %31
  %34 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 12)
  %35 = add i64 %33, %34
  %36 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 18)
  %37 = add i64 %35, %36
  %38 = mul i64 %11, -2381459717836149591
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %40 = mul i64 %39, -7046029288634856825
  %41 = xor i64 %37, %40
  %42 = mul i64 %41, -7046029288634856825
  %43 = add i64 %42, -8796714831421723037
  %44 = mul i64 %17, -2381459717836149591
  %45 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 31)
  %46 = mul i64 %45, -7046029288634856825
  %47 = xor i64 %43, %46
  %48 = mul i64 %47, -7046029288634856825
  %49 = add i64 %48, -8796714831421723037
  %50 = mul i64 %23, -2381459717836149591
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 31)
  %52 = mul i64 %51, -7046029288634856825
  %53 = xor i64 %49, %52
  %54 = mul i64 %53, -7046029288634856825
  %55 = add i64 %54, -8796714831421723037
  %56 = mul i64 %29, -2381459717836149591
  %57 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 31)
  %58 = mul i64 %57, -7046029288634856825
  %59 = xor i64 %55, %58
  %60 = mul i64 %59, -7046029288634856825
  %61 = add i64 %60, -8796714831421723037
  br label %64

62:                                               ; preds = %2
  %63 = add i64 %1, 2870177450012600261
  br label %64

64:                                               ; preds = %4, %62
  %65 = phi i64 [ 32, %4 ], [ 0, %62 ]
  %66 = phi i64 [ %61, %4 ], [ %63, %62 ]
  %67 = add i64 %66, %65
  %68 = lshr i64 %67, 33
  %69 = xor i64 %68, %67
  %70 = mul i64 %69, -4417276706812531889
  %71 = lshr i64 %70, 29
  %72 = xor i64 %71, %70
  %73 = mul i64 %72, 1609587929392839161
  %74 = lshr i64 %73, 32
  %75 = xor i64 %74, %73
  ret i64 %75
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @target_s64_20_13(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = alloca { [4 x i64], i32, i32, i64 }, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %2
  %6 = add i64 %1, 7046029288634856825
  %7 = add i64 %1, -4417276706812531889
  %8 = add i64 %1, 6983438078262162902
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 1 dereferenceable(20) %0, i64 20, i1 false)
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 20, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 1 dereferenceable(12) %10, i64 12, i1 false)
  %12 = load i64, ptr %3, align 8
  %13 = mul i64 %12, -4417276706812531889
  %14 = add i64 %13, %8
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 31)
  %16 = mul i64 %15, -7046029288634856825
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %18 = load i64, ptr %17, align 8
  %19 = mul i64 %18, -4417276706812531889
  %20 = add i64 %19, %7
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %24 = load i64, ptr %23, align 8
  %25 = mul i64 %24, -4417276706812531889
  %26 = add i64 %25, %1
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %30 = load i64, ptr %29, align 8
  %31 = mul i64 %30, -4417276706812531889
  %32 = add i64 %31, %6
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  %35 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %36 = load i32, ptr %35, align 8
  %37 = sub i32 32, %36
  %38 = icmp ult i32 %37, 13
  br i1 %38, label %39, label %72

39:                                               ; preds = %5
  %40 = zext nneg i32 %37 to i64
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 %40
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 20
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 33
  %44 = ptrtoint ptr %43 to i64
  %45 = ptrtoint ptr %42 to i64
  %46 = sub i64 %44, %45
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %3, ptr nonnull readonly align 1 %42, i64 %46, i1 false)
  br label %72

47:                                               ; preds = %2
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %3, ptr noundef nonnull align 1 dereferenceable(13) %48, i64 13, i1 false)
  %49 = add i64 %1, 2870177450012600274
  %50 = load i64, ptr %3, align 8
  %51 = mul i64 %50, -4417276706812531889
  %52 = tail call i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 31)
  %53 = mul i64 %52, -7046029288634856825
  %54 = xor i64 %53, %49
  %55 = tail call i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 27)
  %56 = mul i64 %55, -7046029288634856825
  %57 = add i64 %56, -8796714831421723037
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %59 = load i32, ptr %58, align 8
  %60 = zext i32 %59 to i64
  %61 = mul i64 %60, -7046029288634856825
  %62 = xor i64 %61, %57
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 23)
  %64 = mul i64 %63, -4417276706812531889
  %65 = add i64 %64, 1609587929392839161
  %66 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %67 = load i8, ptr %66, align 4
  %68 = zext i8 %67 to i64
  %69 = mul i64 %68, 2870177450012600261
  %70 = xor i64 %65, %69
  %71 = tail call i64 @llvm.fshl.i64(i64 %70, i64 %70, i64 11)
  br label %109

72:                                               ; preds = %5, %39
  %73 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 1)
  %74 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 7)
  %75 = add i64 %74, %73
  %76 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 12)
  %77 = add i64 %75, %76
  %78 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 18)
  %79 = add i64 %77, %78
  %80 = mul i64 %15, -2381459717836149591
  %81 = tail call i64 @llvm.fshl.i64(i64 %80, i64 %80, i64 31)
  %82 = mul i64 %81, -7046029288634856825
  %83 = xor i64 %79, %82
  %84 = mul i64 %83, -7046029288634856825
  %85 = add i64 %84, -8796714831421723037
  %86 = mul i64 %21, -2381459717836149591
  %87 = tail call i64 @llvm.fshl.i64(i64 %86, i64 %86, i64 31)
  %88 = mul i64 %87, -7046029288634856825
  %89 = xor i64 %85, %88
  %90 = mul i64 %89, -7046029288634856825
  %91 = add i64 %90, -8796714831421723037
  %92 = mul i64 %27, -2381459717836149591
  %93 = tail call i64 @llvm.fshl.i64(i64 %92, i64 %92, i64 31)
  %94 = mul i64 %93, -7046029288634856825
  %95 = xor i64 %91, %94
  %96 = mul i64 %95, -7046029288634856825
  %97 = add i64 %96, -8796714831421723037
  %98 = mul i64 %33, -2381459717836149591
  %99 = tail call i64 @llvm.fshl.i64(i64 %98, i64 %98, i64 31)
  %100 = mul i64 %99, -7046029288634856825
  %101 = xor i64 %97, %100
  %102 = mul i64 %101, -7046029288634856825
  %103 = add i64 %102, -8796714831421723004
  %104 = load i8, ptr %3, align 8
  %105 = zext i8 %104 to i64
  %106 = mul i64 %105, 2870177450012600261
  %107 = xor i64 %106, %103
  %108 = tail call i64 @llvm.fshl.i64(i64 %107, i64 %107, i64 11)
  br label %109

109:                                              ; preds = %47, %72
  %110 = phi i64 [ %71, %47 ], [ %108, %72 ]
  %111 = mul i64 %110, -7046029288634856825
  %112 = lshr i64 %111, 33
  %113 = xor i64 %112, %111
  %114 = mul i64 %113, -4417276706812531889
  %115 = lshr i64 %114, 29
  %116 = xor i64 %115, %114
  %117 = mul i64 %116, 1609587929392839161
  %118 = lshr i64 %117, 32
  %119 = xor i64 %118, %117
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3)
  ret i64 %119
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @target_s64_40_23(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.XXH_INLINE_XXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #7
  %4 = add i64 %1, 6983438078262162902
  %5 = add i64 %1, -4417276706812531889
  %6 = add i64 %1, 7046029288634856825
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %4, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %5, ptr %8, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %1, ptr %9, align 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %6, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false)
  %12 = icmp eq ptr %0, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %16 = load i64, ptr %15, align 1
  %17 = mul i64 %16, -4417276706812531889
  %18 = add i64 %17, %6
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 31)
  %20 = mul i64 %19, -7046029288634856825
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %22 = load i64, ptr %21, align 1
  %23 = mul i64 %22, -4417276706812531889
  %24 = add i64 %23, %1
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 31)
  %26 = mul i64 %25, -7046029288634856825
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %28 = load i64, ptr %27, align 1
  %29 = mul i64 %28, -4417276706812531889
  %30 = add i64 %29, %5
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  %33 = load i64, ptr %0, align 1
  %34 = mul i64 %33, -4417276706812531889
  %35 = add i64 %34, %4
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 31)
  %37 = mul i64 %36, -7046029288634856825
  %38 = getelementptr i8, ptr %0, i64 32
  store i64 %37, ptr %7, align 8
  store i64 %32, ptr %8, align 8
  store i64 %26, ptr %9, align 8
  store i64 %20, ptr %10, align 8
  %39 = icmp ult ptr %38, %14
  br i1 %39, label %40, label %43

40:                                               ; preds = %13
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %42 = load i64, ptr %38, align 1
  store i64 %42, ptr %11, align 8
  store i32 8, ptr %41, align 8
  br label %43

43:                                               ; preds = %40, %13, %2
  %44 = phi i64 [ %6, %2 ], [ %20, %13 ], [ %20, %40 ]
  %45 = phi i64 [ %1, %2 ], [ %26, %13 ], [ %26, %40 ]
  %46 = phi i64 [ %5, %2 ], [ %32, %13 ], [ %32, %40 ]
  %47 = phi i64 [ %4, %2 ], [ %37, %13 ], [ %37, %40 ]
  %48 = phi i64 [ 0, %2 ], [ 0, %13 ], [ 8, %40 ]
  %49 = phi i64 [ 23, %2 ], [ 63, %13 ], [ 63, %40 ]
  store i64 %49, ptr %3, align 8
  %50 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %52 = getelementptr inbounds nuw i8, ptr %11, i64 %48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %52, ptr noundef nonnull readonly align 1 dereferenceable(23) %51, i64 23, i1 false)
  %53 = load i32, ptr %50, align 8
  %54 = add i32 %53, 23
  store i32 %54, ptr %50, align 8
  %55 = tail call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 1)
  %56 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 7)
  %57 = add i64 %56, %55
  %58 = tail call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 12)
  %59 = add i64 %57, %58
  %60 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 18)
  %61 = add i64 %59, %60
  %62 = mul i64 %47, -4417276706812531889
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 31)
  %64 = mul i64 %63, -7046029288634856825
  %65 = xor i64 %61, %64
  %66 = mul i64 %65, -7046029288634856825
  %67 = add i64 %66, -8796714831421723037
  %68 = mul i64 %46, -4417276706812531889
  %69 = tail call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 31)
  %70 = mul i64 %69, -7046029288634856825
  %71 = xor i64 %67, %70
  %72 = mul i64 %71, -7046029288634856825
  %73 = add i64 %72, -8796714831421723037
  %74 = mul i64 %45, -4417276706812531889
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 31)
  %76 = mul i64 %75, -7046029288634856825
  %77 = xor i64 %73, %76
  %78 = mul i64 %77, -7046029288634856825
  %79 = add i64 %78, -8796714831421723037
  %80 = mul i64 %44, -4417276706812531889
  %81 = tail call i64 @llvm.fshl.i64(i64 %80, i64 %80, i64 31)
  %82 = mul i64 %81, -7046029288634856825
  %83 = xor i64 %79, %82
  %84 = mul i64 %83, -7046029288634856825
  %85 = add i64 %84, -8796714831421723037
  %86 = add i64 %85, %49
  %87 = and i64 %49, 31
  %88 = icmp eq i64 %87, 23
  br i1 %88, label %99, label %89

89:                                               ; preds = %43
  %90 = load i64, ptr %11, align 8
  %91 = mul i64 %90, -4417276706812531889
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 31)
  %93 = mul i64 %92, -7046029288634856825
  %94 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %95 = xor i64 %93, %86
  %96 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 27)
  %97 = mul i64 %96, -7046029288634856825
  %98 = add i64 %97, -8796714831421723037
  br label %99

99:                                               ; preds = %43, %89
  %100 = phi ptr [ %11, %43 ], [ %94, %89 ]
  %101 = phi i64 [ %86, %43 ], [ %98, %89 ]
  %102 = load i64, ptr %100, align 8
  %103 = mul i64 %102, -4417276706812531889
  %104 = tail call i64 @llvm.fshl.i64(i64 %103, i64 %103, i64 31)
  %105 = mul i64 %104, -7046029288634856825
  %106 = getelementptr inbounds nuw i8, ptr %100, i64 8
  %107 = xor i64 %105, %101
  %108 = tail call i64 @llvm.fshl.i64(i64 %107, i64 %107, i64 27)
  %109 = mul i64 %108, -7046029288634856825
  %110 = add i64 %109, -8796714831421723037
  %111 = load i64, ptr %106, align 8
  %112 = mul i64 %111, -4417276706812531889
  %113 = tail call i64 @llvm.fshl.i64(i64 %112, i64 %112, i64 31)
  %114 = mul i64 %113, -7046029288634856825
  %115 = getelementptr inbounds nuw i8, ptr %100, i64 16
  %116 = xor i64 %114, %110
  %117 = tail call i64 @llvm.fshl.i64(i64 %116, i64 %116, i64 27)
  %118 = mul i64 %117, -7046029288634856825
  %119 = add i64 %118, -8796714831421723037
  %120 = load i32, ptr %115, align 4
  %121 = zext i32 %120 to i64
  %122 = mul i64 %121, -7046029288634856825
  %123 = xor i64 %122, %119
  %124 = getelementptr inbounds nuw i8, ptr %100, i64 20
  %125 = tail call i64 @llvm.fshl.i64(i64 %123, i64 %123, i64 23)
  %126 = mul i64 %125, -4417276706812531889
  %127 = add i64 %126, 1609587929392839161
  %128 = getelementptr inbounds nuw i8, ptr %100, i64 21
  %129 = load i8, ptr %124, align 1
  %130 = zext i8 %129 to i64
  %131 = mul i64 %130, 2870177450012600261
  %132 = xor i64 %131, %127
  %133 = tail call i64 @llvm.fshl.i64(i64 %132, i64 %132, i64 11)
  %134 = mul i64 %133, -7046029288634856825
  %135 = getelementptr inbounds nuw i8, ptr %100, i64 22
  %136 = load i8, ptr %128, align 1
  %137 = zext i8 %136 to i64
  %138 = mul i64 %137, 2870177450012600261
  %139 = xor i64 %138, %134
  %140 = tail call i64 @llvm.fshl.i64(i64 %139, i64 %139, i64 11)
  %141 = mul i64 %140, -7046029288634856825
  %142 = load i8, ptr %135, align 1
  %143 = zext i8 %142 to i64
  %144 = mul i64 %143, 2870177450012600261
  %145 = xor i64 %144, %141
  %146 = tail call i64 @llvm.fshl.i64(i64 %145, i64 %145, i64 11)
  %147 = mul i64 %146, -7046029288634856825
  %148 = lshr i64 %147, 33
  %149 = xor i64 %148, %147
  %150 = mul i64 %149, -4417276706812531889
  %151 = lshr i64 %150, 29
  %152 = xor i64 %151, %150
  %153 = mul i64 %152, 1609587929392839161
  %154 = lshr i64 %153, 32
  %155 = xor i64 %154, %153
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #7
  ret i64 %155
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @target_s64_3_60(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = alloca { [4 x i64], i32, i32, i64 }, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3)
  %4 = add i64 %1, 6983438078262162902
  %5 = add i64 %1, -4417276706812531889
  %6 = add i64 %1, 7046029288634856825
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %7 = icmp eq ptr %0, null
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 32
  br i1 %7, label %44, label %9

9:                                                ; preds = %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) %0, i64 3, i1 false)
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 3, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %14, ptr noundef nonnull align 1 dereferenceable(29) %13, i64 29, i1 false)
  %15 = load i64, ptr %3, align 8
  %16 = mul i64 %15, -4417276706812531889
  %17 = add i64 %16, %4
  %18 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 31)
  %19 = mul i64 %18, -7046029288634856825
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %21 = load i64, ptr %20, align 8
  %22 = mul i64 %21, -4417276706812531889
  %23 = add i64 %22, %5
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %27 = load i64, ptr %26, align 8
  %28 = mul i64 %27, -4417276706812531889
  %29 = add i64 %28, %1
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %31 = mul i64 %30, -7046029288634856825
  %32 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %33 = load i64, ptr %32, align 8
  %34 = mul i64 %33, -4417276706812531889
  %35 = add i64 %34, %6
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 31)
  %37 = mul i64 %36, -7046029288634856825
  %38 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %39 = load i32, ptr %38, align 8
  %40 = sub i32 32, %39
  %41 = zext i32 %40 to i64
  %42 = add nuw nsw i64 %41, 3
  %43 = icmp ugt i32 %40, 28
  br i1 %43, label %77, label %44

44:                                               ; preds = %2, %9
  %45 = phi i64 [ %42, %9 ], [ 3, %2 ]
  %46 = phi i64 [ %19, %9 ], [ %4, %2 ]
  %47 = phi i64 [ %25, %9 ], [ %5, %2 ]
  %48 = phi i64 [ %31, %9 ], [ %1, %2 ]
  %49 = phi i64 [ %37, %9 ], [ %6, %2 ]
  %50 = phi i64 [ 63, %9 ], [ 60, %2 ]
  %51 = phi ptr [ %12, %9 ], [ %8, %2 ]
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 %45
  %53 = load i64, ptr %52, align 1
  %54 = mul i64 %53, -4417276706812531889
  %55 = add i64 %54, %46
  %56 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 31)
  %57 = mul i64 %56, -7046029288634856825
  %58 = getelementptr inbounds nuw i8, ptr %52, i64 8
  %59 = load i64, ptr %58, align 1
  %60 = mul i64 %59, -4417276706812531889
  %61 = add i64 %60, %47
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 31)
  %63 = mul i64 %62, -7046029288634856825
  %64 = getelementptr inbounds nuw i8, ptr %52, i64 16
  %65 = load i64, ptr %64, align 1
  %66 = mul i64 %65, -4417276706812531889
  %67 = add i64 %66, %48
  %68 = tail call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 31)
  %69 = mul i64 %68, -7046029288634856825
  %70 = getelementptr inbounds nuw i8, ptr %52, i64 24
  %71 = load i64, ptr %70, align 1
  %72 = mul i64 %71, -4417276706812531889
  %73 = add i64 %72, %49
  %74 = tail call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 31)
  %75 = mul i64 %74, -7046029288634856825
  %76 = add nuw nsw i64 %45, 32
  br label %77

77:                                               ; preds = %44, %9
  %78 = phi i64 [ %50, %44 ], [ 63, %9 ]
  %79 = phi ptr [ %51, %44 ], [ %11, %9 ]
  %80 = phi i64 [ %75, %44 ], [ %37, %9 ]
  %81 = phi i64 [ %63, %44 ], [ %25, %9 ]
  %82 = phi i64 [ %57, %44 ], [ %19, %9 ]
  %83 = phi i64 [ %69, %44 ], [ %31, %9 ]
  %84 = phi i64 [ %76, %44 ], [ %42, %9 ]
  %85 = icmp samesign ult i64 %84, 63
  br i1 %85, label %86, label %90

86:                                               ; preds = %77
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 %84
  %88 = sub nuw nsw i64 63, %84
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %3, ptr nonnull readonly align 1 %87, i64 %88, i1 false)
  %89 = trunc nuw nsw i64 %88 to i32
  store i32 %89, ptr %79, align 8
  br label %90

90:                                               ; preds = %77, %86
  %91 = tail call i64 @llvm.fshl.i64(i64 %81, i64 %81, i64 7)
  %92 = tail call i64 @llvm.fshl.i64(i64 %82, i64 %82, i64 1)
  %93 = add i64 %91, %92
  %94 = tail call i64 @llvm.fshl.i64(i64 %83, i64 %83, i64 12)
  %95 = add i64 %93, %94
  %96 = tail call i64 @llvm.fshl.i64(i64 %80, i64 %80, i64 18)
  %97 = add i64 %95, %96
  %98 = mul i64 %82, -4417276706812531889
  %99 = tail call i64 @llvm.fshl.i64(i64 %98, i64 %98, i64 31)
  %100 = mul i64 %99, -7046029288634856825
  %101 = xor i64 %97, %100
  %102 = mul i64 %101, -7046029288634856825
  %103 = add i64 %102, -8796714831421723037
  %104 = mul i64 %81, -4417276706812531889
  %105 = tail call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 31)
  %106 = mul i64 %105, -7046029288634856825
  %107 = xor i64 %103, %106
  %108 = mul i64 %107, -7046029288634856825
  %109 = add i64 %108, -8796714831421723037
  %110 = mul i64 %83, -4417276706812531889
  %111 = tail call i64 @llvm.fshl.i64(i64 %110, i64 %110, i64 31)
  %112 = mul i64 %111, -7046029288634856825
  %113 = xor i64 %109, %112
  %114 = mul i64 %113, -7046029288634856825
  %115 = add i64 %114, -8796714831421723037
  %116 = mul i64 %80, -4417276706812531889
  %117 = tail call i64 @llvm.fshl.i64(i64 %116, i64 %116, i64 31)
  %118 = mul i64 %117, -7046029288634856825
  %119 = xor i64 %115, %118
  %120 = mul i64 %119, -7046029288634856825
  %121 = add i64 %120, -8796714831421723037
  %122 = add i64 %121, %78
  %123 = and i64 %78, 31
  switch i64 %123, label %306 [
    i64 31, label %250
    i64 30, label %201
    i64 29, label %159
    i64 28, label %124
  ]

124:                                              ; preds = %90
  %125 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %126 = load i64, ptr %125, align 8
  %127 = mul i64 %126, -4417276706812531889
  %128 = tail call i64 @llvm.fshl.i64(i64 %127, i64 %127, i64 31)
  %129 = mul i64 %128, -7046029288634856825
  %130 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %131 = load i64, ptr %130, align 8
  %132 = mul i64 %131, -4417276706812531889
  %133 = tail call i64 @llvm.fshl.i64(i64 %132, i64 %132, i64 31)
  %134 = mul i64 %133, -7046029288634856825
  %135 = load i64, ptr %3, align 8
  %136 = mul i64 %135, -4417276706812531889
  %137 = tail call i64 @llvm.fshl.i64(i64 %136, i64 %136, i64 31)
  %138 = mul i64 %137, -7046029288634856825
  %139 = xor i64 %138, %122
  %140 = tail call i64 @llvm.fshl.i64(i64 %139, i64 %139, i64 27)
  %141 = mul i64 %140, -7046029288634856825
  %142 = add i64 %141, -8796714831421723037
  %143 = xor i64 %134, %142
  %144 = tail call i64 @llvm.fshl.i64(i64 %143, i64 %143, i64 27)
  %145 = mul i64 %144, -7046029288634856825
  %146 = add i64 %145, -8796714831421723037
  %147 = xor i64 %129, %146
  %148 = tail call i64 @llvm.fshl.i64(i64 %147, i64 %147, i64 27)
  %149 = mul i64 %148, -7046029288634856825
  %150 = add i64 %149, -8796714831421723037
  %151 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %152 = load i32, ptr %151, align 8
  %153 = zext i32 %152 to i64
  %154 = mul i64 %153, -7046029288634856825
  %155 = xor i64 %154, %150
  %156 = tail call i64 @llvm.fshl.i64(i64 %155, i64 %155, i64 23)
  %157 = mul i64 %156, -4417276706812531889
  %158 = add i64 %157, 1609587929392839161
  br label %307

159:                                              ; preds = %90
  %160 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %161 = load i64, ptr %160, align 8
  %162 = mul i64 %161, -4417276706812531889
  %163 = tail call i64 @llvm.fshl.i64(i64 %162, i64 %162, i64 31)
  %164 = mul i64 %163, -7046029288634856825
  %165 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %166 = load i64, ptr %165, align 8
  %167 = mul i64 %166, -4417276706812531889
  %168 = tail call i64 @llvm.fshl.i64(i64 %167, i64 %167, i64 31)
  %169 = mul i64 %168, -7046029288634856825
  %170 = load i64, ptr %3, align 8
  %171 = mul i64 %170, -4417276706812531889
  %172 = tail call i64 @llvm.fshl.i64(i64 %171, i64 %171, i64 31)
  %173 = mul i64 %172, -7046029288634856825
  %174 = xor i64 %173, %122
  %175 = tail call i64 @llvm.fshl.i64(i64 %174, i64 %174, i64 27)
  %176 = mul i64 %175, -7046029288634856825
  %177 = add i64 %176, -8796714831421723037
  %178 = xor i64 %169, %177
  %179 = tail call i64 @llvm.fshl.i64(i64 %178, i64 %178, i64 27)
  %180 = mul i64 %179, -7046029288634856825
  %181 = add i64 %180, -8796714831421723037
  %182 = xor i64 %164, %181
  %183 = tail call i64 @llvm.fshl.i64(i64 %182, i64 %182, i64 27)
  %184 = mul i64 %183, -7046029288634856825
  %185 = add i64 %184, -8796714831421723037
  %186 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %187 = load i32, ptr %186, align 8
  %188 = zext i32 %187 to i64
  %189 = mul i64 %188, -7046029288634856825
  %190 = xor i64 %189, %185
  %191 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 23)
  %192 = mul i64 %191, -4417276706812531889
  %193 = add i64 %192, 1609587929392839161
  %194 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %195 = load i8, ptr %194, align 4
  %196 = zext i8 %195 to i64
  %197 = mul i64 %196, 2870177450012600261
  %198 = xor i64 %193, %197
  %199 = tail call i64 @llvm.fshl.i64(i64 %198, i64 %198, i64 11)
  %200 = mul i64 %199, -7046029288634856825
  br label %307

201:                                              ; preds = %90
  %202 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %203 = load i64, ptr %202, align 8
  %204 = mul i64 %203, -4417276706812531889
  %205 = tail call i64 @llvm.fshl.i64(i64 %204, i64 %204, i64 31)
  %206 = mul i64 %205, -7046029288634856825
  %207 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %208 = load i64, ptr %207, align 8
  %209 = mul i64 %208, -4417276706812531889
  %210 = tail call i64 @llvm.fshl.i64(i64 %209, i64 %209, i64 31)
  %211 = mul i64 %210, -7046029288634856825
  %212 = load i64, ptr %3, align 8
  %213 = mul i64 %212, -4417276706812531889
  %214 = tail call i64 @llvm.fshl.i64(i64 %213, i64 %213, i64 31)
  %215 = mul i64 %214, -7046029288634856825
  %216 = xor i64 %215, %122
  %217 = tail call i64 @llvm.fshl.i64(i64 %216, i64 %216, i64 27)
  %218 = mul i64 %217, -7046029288634856825
  %219 = add i64 %218, -8796714831421723037
  %220 = xor i64 %211, %219
  %221 = tail call i64 @llvm.fshl.i64(i64 %220, i64 %220, i64 27)
  %222 = mul i64 %221, -7046029288634856825
  %223 = add i64 %222, -8796714831421723037
  %224 = xor i64 %206, %223
  %225 = tail call i64 @llvm.fshl.i64(i64 %224, i64 %224, i64 27)
  %226 = mul i64 %225, -7046029288634856825
  %227 = add i64 %226, -8796714831421723037
  %228 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %229 = load i32, ptr %228, align 8
  %230 = zext i32 %229 to i64
  %231 = mul i64 %230, -7046029288634856825
  %232 = xor i64 %231, %227
  %233 = tail call i64 @llvm.fshl.i64(i64 %232, i64 %232, i64 23)
  %234 = mul i64 %233, -4417276706812531889
  %235 = add i64 %234, 1609587929392839161
  %236 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %237 = load i8, ptr %236, align 4
  %238 = zext i8 %237 to i64
  %239 = mul i64 %238, 2870177450012600261
  %240 = xor i64 %235, %239
  %241 = tail call i64 @llvm.fshl.i64(i64 %240, i64 %240, i64 11)
  %242 = mul i64 %241, -7046029288634856825
  %243 = getelementptr inbounds nuw i8, ptr %3, i64 29
  %244 = load i8, ptr %243, align 1
  %245 = zext i8 %244 to i64
  %246 = mul i64 %245, 2870177450012600261
  %247 = xor i64 %242, %246
  %248 = tail call i64 @llvm.fshl.i64(i64 %247, i64 %247, i64 11)
  %249 = mul i64 %248, -7046029288634856825
  br label %307

250:                                              ; preds = %90
  %251 = getelementptr inbounds nuw i8, ptr %3, i64 29
  %252 = load i8, ptr %251, align 1
  %253 = zext i8 %252 to i64
  %254 = mul i64 %253, 2870177450012600261
  %255 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %256 = load i8, ptr %255, align 4
  %257 = zext i8 %256 to i64
  %258 = mul i64 %257, 2870177450012600261
  %259 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %260 = load i32, ptr %259, align 8
  %261 = zext i32 %260 to i64
  %262 = mul i64 %261, -7046029288634856825
  %263 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %264 = load i64, ptr %263, align 8
  %265 = mul i64 %264, -4417276706812531889
  %266 = tail call i64 @llvm.fshl.i64(i64 %265, i64 %265, i64 31)
  %267 = mul i64 %266, -7046029288634856825
  %268 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %269 = load i64, ptr %268, align 8
  %270 = mul i64 %269, -4417276706812531889
  %271 = tail call i64 @llvm.fshl.i64(i64 %270, i64 %270, i64 31)
  %272 = mul i64 %271, -7046029288634856825
  %273 = load i64, ptr %3, align 8
  %274 = mul i64 %273, -4417276706812531889
  %275 = tail call i64 @llvm.fshl.i64(i64 %274, i64 %274, i64 31)
  %276 = mul i64 %275, -7046029288634856825
  %277 = xor i64 %276, %122
  %278 = tail call i64 @llvm.fshl.i64(i64 %277, i64 %277, i64 27)
  %279 = mul i64 %278, -7046029288634856825
  %280 = add i64 %279, -8796714831421723037
  %281 = xor i64 %272, %280
  %282 = tail call i64 @llvm.fshl.i64(i64 %281, i64 %281, i64 27)
  %283 = mul i64 %282, -7046029288634856825
  %284 = add i64 %283, -8796714831421723037
  %285 = xor i64 %267, %284
  %286 = tail call i64 @llvm.fshl.i64(i64 %285, i64 %285, i64 27)
  %287 = mul i64 %286, -7046029288634856825
  %288 = add i64 %287, -8796714831421723037
  %289 = xor i64 %262, %288
  %290 = tail call i64 @llvm.fshl.i64(i64 %289, i64 %289, i64 23)
  %291 = mul i64 %290, -4417276706812531889
  %292 = add i64 %291, 1609587929392839161
  %293 = xor i64 %258, %292
  %294 = tail call i64 @llvm.fshl.i64(i64 %293, i64 %293, i64 11)
  %295 = mul i64 %294, -7046029288634856825
  %296 = xor i64 %254, %295
  %297 = tail call i64 @llvm.fshl.i64(i64 %296, i64 %296, i64 11)
  %298 = mul i64 %297, -7046029288634856825
  %299 = getelementptr inbounds nuw i8, ptr %3, i64 30
  %300 = load i8, ptr %299, align 2
  %301 = zext i8 %300 to i64
  %302 = mul i64 %301, 2870177450012600261
  %303 = xor i64 %302, %298
  %304 = tail call i64 @llvm.fshl.i64(i64 %303, i64 %303, i64 11)
  %305 = mul i64 %304, -7046029288634856825
  br label %307

306:                                              ; preds = %90
  unreachable

307:                                              ; preds = %124, %159, %201, %250
  %308 = phi i64 [ %249, %201 ], [ %200, %159 ], [ %158, %124 ], [ %305, %250 ]
  %309 = lshr i64 %308, 33
  %310 = xor i64 %309, %308
  %311 = mul i64 %310, -4417276706812531889
  %312 = lshr i64 %311, 29
  %313 = xor i64 %312, %311
  %314 = mul i64 %313, 1609587929392839161
  %315 = lshr i64 %314, 32
  %316 = xor i64 %315, %314
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3)
  ret i64 %316
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
