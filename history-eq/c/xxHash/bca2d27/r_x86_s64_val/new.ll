; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/bca2d27/wrapv_s64.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/bca2d27/wrapv_s64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_NAMESPACEXXH64_state_s = type { i64, [4 x i64], [32 x i8], i32, i32, i64 }

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_s64_7_8(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = alloca [16 x i8], align 16
  %19 = alloca [15 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18)
  store i64 %0, ptr %18, align 16
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %19)
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %21, i8 0, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %19, ptr noundef nonnull align 16 dereferenceable(7) %18, i64 7, i1 false)
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 7
  %23 = load i64, ptr %22, align 1
  %24 = getelementptr inbounds nuw i8, ptr %19, i64 7
  store i64 %23, ptr %24, align 1
  %25 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %26 = load i32, ptr %25, align 8
  %27 = zext i32 %26 to i64
  %28 = mul i64 %27, -7046029288634856825
  %29 = load i64, ptr %19, align 8
  %30 = mul i64 %29, -4417276706812531889
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  %33 = add i64 %16, 2870177450012600276
  %34 = xor i64 %32, %33
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 27)
  %36 = mul i64 %35, -7046029288634856825
  %37 = add i64 %36, -8796714831421723037
  %38 = xor i64 %28, %37
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 23)
  %40 = mul i64 %39, -4417276706812531889
  %41 = add i64 %40, 1609587929392839161
  %42 = getelementptr inbounds nuw i8, ptr %19, i64 12
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i64
  %45 = mul i64 %44, 2870177450012600261
  %46 = xor i64 %45, %41
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 11)
  %48 = mul i64 %47, -7046029288634856825
  %49 = getelementptr inbounds nuw i8, ptr %19, i64 13
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i64
  %52 = mul i64 %51, 2870177450012600261
  %53 = xor i64 %52, %48
  %54 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 11)
  %55 = mul i64 %54, -7046029288634856825
  %56 = getelementptr inbounds nuw i8, ptr %19, i64 14
  %57 = load i8, ptr %56, align 2
  %58 = zext i8 %57 to i64
  %59 = mul i64 %58, 2870177450012600261
  %60 = xor i64 %59, %55
  %61 = tail call i64 @llvm.fshl.i64(i64 %60, i64 %60, i64 11)
  %62 = mul i64 %61, -7046029288634856825
  %63 = lshr i64 %62, 33
  %64 = xor i64 %63, %62
  %65 = mul i64 %64, -4417276706812531889
  %66 = lshr i64 %65, 29
  %67 = xor i64 %66, %65
  %68 = mul i64 %67, 1609587929392839161
  %69 = lshr i64 %68, 32
  %70 = xor i64 %69, %68
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %19)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18)
  ret i64 %70
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_s64_13_18(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = alloca %struct.XXH_NAMESPACEXXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %18) #9
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %19, i8 0, i64 24, i1 false)
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %21 = add i64 %16, 6983438078262162902
  store i64 %21, ptr %20, align 8
  %22 = add i64 %16, -4417276706812531889
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %22, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %16, ptr %24, align 8
  %25 = add i64 %16, 7046029288634856825
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %25, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 72
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %0, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 48
  %30 = trunc i64 %1 to i40
  store i40 %30, ptr %29, align 8
  store i64 31, ptr %18, align 8
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 53
  %32 = lshr i64 %1, 40
  %33 = trunc nuw i64 %32 to i24
  store i24 %33, ptr %31, align 1
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %2, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %18, i64 64
  %36 = trunc i64 %3 to i56
  store i56 %36, ptr %35, align 8
  store i32 31, ptr %27, align 8
  %37 = getelementptr inbounds nuw i8, ptr %18, i64 56
  %38 = load i64, ptr %37, align 8
  %39 = mul i64 %38, -4417276706812531889
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 31)
  %41 = mul i64 %40, -7046029288634856825
  %42 = getelementptr inbounds nuw i8, ptr %18, i64 48
  %43 = load i64, ptr %42, align 8
  %44 = mul i64 %43, -4417276706812531889
  %45 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 31)
  %46 = mul i64 %45, -7046029288634856825
  %47 = getelementptr inbounds nuw i8, ptr %18, i64 40
  %48 = load i64, ptr %47, align 8
  %49 = mul i64 %48, -4417276706812531889
  %50 = tail call i64 @llvm.fshl.i64(i64 %49, i64 %49, i64 31)
  %51 = mul i64 %50, -7046029288634856825
  %52 = add i64 %16, 2870177450012600292
  %53 = xor i64 %51, %52
  %54 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 27)
  %55 = mul i64 %54, -7046029288634856825
  %56 = add i64 %55, -8796714831421723037
  %57 = xor i64 %46, %56
  %58 = tail call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 27)
  %59 = mul i64 %58, -7046029288634856825
  %60 = add i64 %59, -8796714831421723037
  %61 = xor i64 %41, %60
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 27)
  %63 = mul i64 %62, -7046029288634856825
  %64 = add i64 %63, -8796714831421723037
  %65 = getelementptr inbounds nuw i8, ptr %18, i64 64
  %66 = load i32, ptr %65, align 8
  %67 = zext i32 %66 to i64
  %68 = mul i64 %67, -7046029288634856825
  %69 = xor i64 %68, %64
  %70 = getelementptr inbounds nuw i8, ptr %18, i64 68
  %71 = tail call i64 @llvm.fshl.i64(i64 %69, i64 %69, i64 23)
  %72 = mul i64 %71, -4417276706812531889
  %73 = add i64 %72, 1609587929392839161
  %74 = getelementptr inbounds nuw i8, ptr %70, i64 1
  %75 = load i8, ptr %70, align 1
  %76 = zext i8 %75 to i64
  %77 = mul i64 %76, 2870177450012600261
  %78 = xor i64 %77, %73
  %79 = tail call i64 @llvm.fshl.i64(i64 %78, i64 %78, i64 11)
  %80 = mul i64 %79, -7046029288634856825
  %81 = getelementptr inbounds nuw i8, ptr %70, i64 2
  %82 = load i8, ptr %74, align 1
  %83 = zext i8 %82 to i64
  %84 = mul i64 %83, 2870177450012600261
  %85 = xor i64 %84, %80
  %86 = tail call i64 @llvm.fshl.i64(i64 %85, i64 %85, i64 11)
  %87 = mul i64 %86, -7046029288634856825
  %88 = load i8, ptr %81, align 1
  %89 = zext i8 %88 to i64
  %90 = mul i64 %89, 2870177450012600261
  %91 = xor i64 %90, %87
  %92 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 11)
  %93 = mul i64 %92, -7046029288634856825
  %94 = lshr i64 %93, 33
  %95 = xor i64 %94, %93
  %96 = mul i64 %95, -4417276706812531889
  %97 = lshr i64 %96, 29
  %98 = xor i64 %97, %96
  %99 = mul i64 %98, 1609587929392839161
  %100 = lshr i64 %99, 32
  %101 = xor i64 %100, %99
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %18) #9
  ret i64 %101
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64_10_30(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #3 {
  %18 = add i64 %16, 6983438078262162902
  %19 = add i64 %16, -4417276706812531889
  %20 = add i64 %16, 7046029288634856825
  %21 = mul i64 %0, -4417276706812531889
  %22 = add i64 %21, %18
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = mul i64 %1, -4417276706812531889
  %26 = add i64 %25, %19
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = mul i64 %2, -4417276706812531889
  %30 = add i64 %29, %16
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  %33 = mul i64 %3, -4417276706812531889
  %34 = add i64 %33, %20
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 31)
  %36 = mul i64 %35, -7046029288634856825
  %37 = mul i64 %4, -4417276706812531889
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 31)
  %39 = mul i64 %38, -7046029288634856825
  %40 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 7)
  %41 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 1)
  %42 = add i64 %40, %41
  %43 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 12)
  %44 = add i64 %42, %43
  %45 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 18)
  %46 = add i64 %44, %45
  %47 = mul i64 %23, -2381459717836149591
  %48 = tail call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 31)
  %49 = mul i64 %48, -7046029288634856825
  %50 = xor i64 %46, %49
  %51 = mul i64 %50, -7046029288634856825
  %52 = add i64 %51, -8796714831421723037
  %53 = mul i64 %27, -2381459717836149591
  %54 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 31)
  %55 = mul i64 %54, -7046029288634856825
  %56 = xor i64 %52, %55
  %57 = mul i64 %56, -7046029288634856825
  %58 = add i64 %57, -8796714831421723037
  %59 = mul i64 %31, -2381459717836149591
  %60 = tail call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 31)
  %61 = mul i64 %60, -7046029288634856825
  %62 = xor i64 %58, %61
  %63 = mul i64 %62, -7046029288634856825
  %64 = add i64 %63, -8796714831421723037
  %65 = mul i64 %35, -2381459717836149591
  %66 = tail call i64 @llvm.fshl.i64(i64 %65, i64 %65, i64 31)
  %67 = mul i64 %66, -7046029288634856825
  %68 = xor i64 %64, %67
  %69 = mul i64 %68, -7046029288634856825
  %70 = add i64 %69, -8796714831421722997
  %71 = xor i64 %39, %70
  %72 = tail call i64 @llvm.fshl.i64(i64 %71, i64 %71, i64 27)
  %73 = mul i64 %72, -7046029288634856825
  %74 = add i64 %73, -8796714831421723037
  %75 = lshr i64 %74, 33
  %76 = xor i64 %75, %74
  %77 = mul i64 %76, -4417276706812531889
  %78 = lshr i64 %77, 29
  %79 = xor i64 %78, %77
  %80 = mul i64 %79, 1609587929392839161
  %81 = lshr i64 %80, 32
  %82 = xor i64 %81, %80
  ret i64 %82
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64_32_0(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #3 {
  %18 = mul i64 %1, -4417276706812531889
  %19 = add i64 %16, -4417276706812531889
  %20 = add i64 %18, %19
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 7)
  %24 = mul i64 %0, -4417276706812531889
  %25 = add i64 %16, 6983438078262162902
  %26 = add i64 %24, %25
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 1)
  %30 = add i64 %23, %29
  %31 = mul i64 %2, -4417276706812531889
  %32 = add i64 %31, %16
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 12)
  %36 = add i64 %30, %35
  %37 = mul i64 %3, -4417276706812531889
  %38 = add i64 %16, 7046029288634856825
  %39 = add i64 %37, %38
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 31)
  %41 = mul i64 %40, -7046029288634856825
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 18)
  %43 = add i64 %36, %42
  %44 = mul i64 %27, -2381459717836149591
  %45 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 31)
  %46 = mul i64 %45, -7046029288634856825
  %47 = xor i64 %43, %46
  %48 = mul i64 %47, -7046029288634856825
  %49 = add i64 %48, -8796714831421723037
  %50 = mul i64 %21, -2381459717836149591
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 31)
  %52 = mul i64 %51, -7046029288634856825
  %53 = xor i64 %49, %52
  %54 = mul i64 %53, -7046029288634856825
  %55 = add i64 %54, -8796714831421723037
  %56 = mul i64 %33, -2381459717836149591
  %57 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 31)
  %58 = mul i64 %57, -7046029288634856825
  %59 = xor i64 %55, %58
  %60 = mul i64 %59, -7046029288634856825
  %61 = add i64 %60, -8796714831421723037
  %62 = mul i64 %40, -2381459717836149591
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 31)
  %64 = mul i64 %63, -7046029288634856825
  %65 = xor i64 %61, %64
  %66 = mul i64 %65, -7046029288634856825
  %67 = add i64 %66, -8796714831421723005
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64_20_13(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #3 {
  %18 = add i64 %16, 6983438078262162902
  %19 = add i64 %16, -4417276706812531889
  %20 = add i64 %16, 7046029288634856825
  %21 = mul i64 %0, -4417276706812531889
  %22 = add i64 %21, %18
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = mul i64 %1, -4417276706812531889
  %26 = add i64 %25, %19
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = mul i64 %2, -4417276706812531889
  %30 = add i64 %29, %16
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  %33 = mul i64 %3, -4417276706812531889
  %34 = add i64 %33, %20
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 31)
  %36 = mul i64 %35, -7046029288634856825
  %37 = and i64 %4, 255
  %38 = mul i64 %37, 2870177450012600261
  %39 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 7)
  %40 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 1)
  %41 = add i64 %39, %40
  %42 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 12)
  %43 = add i64 %41, %42
  %44 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 18)
  %45 = add i64 %43, %44
  %46 = mul i64 %23, -2381459717836149591
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 31)
  %48 = mul i64 %47, -7046029288634856825
  %49 = xor i64 %45, %48
  %50 = mul i64 %49, -7046029288634856825
  %51 = add i64 %50, -8796714831421723037
  %52 = mul i64 %27, -2381459717836149591
  %53 = tail call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 31)
  %54 = mul i64 %53, -7046029288634856825
  %55 = xor i64 %51, %54
  %56 = mul i64 %55, -7046029288634856825
  %57 = add i64 %56, -8796714831421723037
  %58 = mul i64 %31, -2381459717836149591
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 31)
  %60 = mul i64 %59, -7046029288634856825
  %61 = xor i64 %57, %60
  %62 = mul i64 %61, -7046029288634856825
  %63 = add i64 %62, -8796714831421723037
  %64 = mul i64 %35, -2381459717836149591
  %65 = tail call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 31)
  %66 = mul i64 %65, -7046029288634856825
  %67 = xor i64 %63, %66
  %68 = mul i64 %67, -7046029288634856825
  %69 = add i64 %68, -8796714831421723004
  %70 = xor i64 %38, %69
  %71 = tail call i64 @llvm.fshl.i64(i64 %70, i64 %70, i64 11)
  %72 = mul i64 %71, -7046029288634856825
  %73 = lshr i64 %72, 33
  %74 = xor i64 %73, %72
  %75 = mul i64 %74, -4417276706812531889
  %76 = lshr i64 %75, 29
  %77 = xor i64 %76, %75
  %78 = mul i64 %77, 1609587929392839161
  %79 = lshr i64 %78, 32
  %80 = xor i64 %79, %78
  ret i64 %80
}

; Function Attrs: nofree norecurse nosync nounwind memory(inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_s64_40_23(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #4 {
  %18 = alloca %struct.XXH_NAMESPACEXXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %18) #9
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %19, i8 0, i64 24, i1 false)
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %21 = add i64 %16, 6983438078262162902
  %22 = add i64 %16, -4417276706812531889
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 24
  %25 = add i64 %16, 7046029288634856825
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 72
  %28 = mul i64 %0, -4417276706812531889
  %29 = add i64 %28, %21
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %31 = mul i64 %30, -7046029288634856825
  %32 = mul i64 %1, -4417276706812531889
  %33 = add i64 %32, %22
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 31)
  %35 = mul i64 %34, -7046029288634856825
  %36 = mul i64 %2, -4417276706812531889
  %37 = add i64 %36, %16
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 31)
  %39 = mul i64 %38, -7046029288634856825
  %40 = mul i64 %3, -4417276706812531889
  %41 = add i64 %40, %25
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 31)
  %43 = mul i64 %42, -7046029288634856825
  store i64 %31, ptr %20, align 8
  store i64 %35, ptr %23, align 8
  store i64 %39, ptr %24, align 8
  store i64 %43, ptr %26, align 8
  %44 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %4, ptr %44, align 8
  store i32 8, ptr %27, align 8
  store i64 63, ptr %18, align 8
  %45 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %5, ptr %45, align 8
  %46 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %6, ptr %46, align 8
  %47 = getelementptr inbounds nuw i8, ptr %18, i64 64
  %48 = trunc i64 %7 to i56
  store i56 %48, ptr %47, align 8
  store i32 31, ptr %27, align 8
  %49 = getelementptr inbounds nuw i8, ptr %18, i64 56
  %50 = load i64, ptr %49, align 8
  %51 = mul i64 %50, -4417276706812531889
  %52 = tail call i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 31)
  %53 = mul i64 %52, -7046029288634856825
  %54 = getelementptr inbounds nuw i8, ptr %18, i64 48
  %55 = load i64, ptr %54, align 8
  %56 = mul i64 %55, -4417276706812531889
  %57 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 31)
  %58 = mul i64 %57, -7046029288634856825
  %59 = getelementptr inbounds nuw i8, ptr %18, i64 40
  %60 = load i64, ptr %59, align 8
  %61 = mul i64 %60, -4417276706812531889
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 31)
  %63 = mul i64 %62, -7046029288634856825
  %64 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 7)
  %65 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 1)
  %66 = add i64 %64, %65
  %67 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 12)
  %68 = add i64 %66, %67
  %69 = tail call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 18)
  %70 = add i64 %68, %69
  %71 = mul i64 %30, -2381459717836149591
  %72 = tail call i64 @llvm.fshl.i64(i64 %71, i64 %71, i64 31)
  %73 = mul i64 %72, -7046029288634856825
  %74 = xor i64 %70, %73
  %75 = mul i64 %74, -7046029288634856825
  %76 = add i64 %75, -8796714831421723037
  %77 = mul i64 %34, -2381459717836149591
  %78 = tail call i64 @llvm.fshl.i64(i64 %77, i64 %77, i64 31)
  %79 = mul i64 %78, -7046029288634856825
  %80 = xor i64 %76, %79
  %81 = mul i64 %80, -7046029288634856825
  %82 = add i64 %81, -8796714831421723037
  %83 = mul i64 %38, -2381459717836149591
  %84 = tail call i64 @llvm.fshl.i64(i64 %83, i64 %83, i64 31)
  %85 = mul i64 %84, -7046029288634856825
  %86 = xor i64 %82, %85
  %87 = mul i64 %86, -7046029288634856825
  %88 = add i64 %87, -8796714831421723037
  %89 = mul i64 %42, -2381459717836149591
  %90 = tail call i64 @llvm.fshl.i64(i64 %89, i64 %89, i64 31)
  %91 = mul i64 %90, -7046029288634856825
  %92 = xor i64 %88, %91
  %93 = mul i64 %92, -7046029288634856825
  %94 = add i64 %93, -8796714831421722974
  %95 = xor i64 %63, %94
  %96 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 27)
  %97 = mul i64 %96, -7046029288634856825
  %98 = add i64 %97, -8796714831421723037
  %99 = xor i64 %58, %98
  %100 = tail call i64 @llvm.fshl.i64(i64 %99, i64 %99, i64 27)
  %101 = mul i64 %100, -7046029288634856825
  %102 = add i64 %101, -8796714831421723037
  %103 = xor i64 %53, %102
  %104 = tail call i64 @llvm.fshl.i64(i64 %103, i64 %103, i64 27)
  %105 = mul i64 %104, -7046029288634856825
  %106 = add i64 %105, -8796714831421723037
  %107 = getelementptr inbounds nuw i8, ptr %18, i64 64
  %108 = load i32, ptr %107, align 8
  %109 = zext i32 %108 to i64
  %110 = mul i64 %109, -7046029288634856825
  %111 = xor i64 %110, %106
  %112 = getelementptr inbounds nuw i8, ptr %18, i64 68
  %113 = tail call i64 @llvm.fshl.i64(i64 %111, i64 %111, i64 23)
  %114 = mul i64 %113, -4417276706812531889
  %115 = add i64 %114, 1609587929392839161
  %116 = getelementptr inbounds nuw i8, ptr %112, i64 1
  %117 = load i8, ptr %112, align 1
  %118 = zext i8 %117 to i64
  %119 = mul i64 %118, 2870177450012600261
  %120 = xor i64 %119, %115
  %121 = tail call i64 @llvm.fshl.i64(i64 %120, i64 %120, i64 11)
  %122 = mul i64 %121, -7046029288634856825
  %123 = getelementptr inbounds nuw i8, ptr %112, i64 2
  %124 = load i8, ptr %116, align 1
  %125 = zext i8 %124 to i64
  %126 = mul i64 %125, 2870177450012600261
  %127 = xor i64 %126, %122
  %128 = tail call i64 @llvm.fshl.i64(i64 %127, i64 %127, i64 11)
  %129 = mul i64 %128, -7046029288634856825
  %130 = load i8, ptr %123, align 1
  %131 = zext i8 %130 to i64
  %132 = mul i64 %131, 2870177450012600261
  %133 = xor i64 %132, %129
  %134 = tail call i64 @llvm.fshl.i64(i64 %133, i64 %133, i64 11)
  %135 = mul i64 %134, -7046029288634856825
  %136 = lshr i64 %135, 33
  %137 = xor i64 %136, %135
  %138 = mul i64 %137, -4417276706812531889
  %139 = lshr i64 %138, 29
  %140 = xor i64 %139, %138
  %141 = mul i64 %140, 1609587929392839161
  %142 = lshr i64 %141, 32
  %143 = xor i64 %142, %141
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %18) #9
  ret i64 %143
}

; Function Attrs: nofree norecurse nosync nounwind memory(inaccessiblemem: readwrite) uwtable
define dso_local i64 @target_s64_3_60(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #4 {
  %18 = alloca %struct.XXH_NAMESPACEXXH64_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %18) #9
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %19, i8 0, i64 16, i1 false)
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %21 = add i64 %16, 6983438078262162902
  %22 = add i64 %16, -4417276706812531889
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 24
  %25 = add i64 %16, 7046029288634856825
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 72
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 40
  %29 = trunc i64 %0 to i24
  store i24 %29, ptr %28, align 8
  store i64 63, ptr %18, align 8
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 40
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 43
  %32 = lshr i64 %0, 24
  %33 = trunc nuw i64 %32 to i40
  store i40 %33, ptr %31, align 1
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %1, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %2, ptr %35, align 8
  %36 = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i64 %3, ptr %36, align 8
  %37 = load i64, ptr %30, align 8
  %38 = mul i64 %37, -4417276706812531889
  %39 = add i64 %38, %21
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 31)
  %41 = mul i64 %40, -7046029288634856825
  %42 = getelementptr inbounds nuw i8, ptr %18, i64 48
  %43 = load i64, ptr %42, align 8
  %44 = mul i64 %43, -4417276706812531889
  %45 = add i64 %44, %22
  %46 = tail call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 31)
  %47 = mul i64 %46, -7046029288634856825
  %48 = getelementptr inbounds nuw i8, ptr %18, i64 56
  %49 = load i64, ptr %48, align 8
  %50 = mul i64 %49, -4417276706812531889
  %51 = add i64 %50, %16
  %52 = tail call i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 31)
  %53 = mul i64 %52, -7046029288634856825
  %54 = getelementptr inbounds nuw i8, ptr %18, i64 64
  %55 = load i64, ptr %54, align 8
  %56 = mul i64 %55, -4417276706812531889
  %57 = add i64 %56, %25
  %58 = tail call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 31)
  %59 = mul i64 %58, -7046029288634856825
  store i64 %41, ptr %20, align 8
  store i64 %47, ptr %23, align 8
  store i64 %53, ptr %24, align 8
  store i64 %59, ptr %26, align 8
  %60 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %4, ptr %60, align 8
  %61 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %5, ptr %61, align 8
  %62 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %6, ptr %62, align 8
  %63 = getelementptr inbounds nuw i8, ptr %18, i64 64
  %64 = trunc i64 %7 to i56
  store i56 %64, ptr %63, align 8
  store i32 31, ptr %27, align 8
  %65 = getelementptr inbounds nuw i8, ptr %18, i64 56
  %66 = load i64, ptr %65, align 8
  %67 = mul i64 %66, -4417276706812531889
  %68 = tail call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 31)
  %69 = mul i64 %68, -7046029288634856825
  %70 = getelementptr inbounds nuw i8, ptr %18, i64 48
  %71 = load i64, ptr %70, align 8
  %72 = mul i64 %71, -4417276706812531889
  %73 = tail call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 31)
  %74 = mul i64 %73, -7046029288634856825
  %75 = getelementptr inbounds nuw i8, ptr %18, i64 40
  %76 = load i64, ptr %75, align 8
  %77 = mul i64 %76, -4417276706812531889
  %78 = tail call i64 @llvm.fshl.i64(i64 %77, i64 %77, i64 31)
  %79 = mul i64 %78, -7046029288634856825
  %80 = tail call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 7)
  %81 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 1)
  %82 = add i64 %80, %81
  %83 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 12)
  %84 = add i64 %82, %83
  %85 = tail call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 18)
  %86 = add i64 %84, %85
  %87 = mul i64 %40, -2381459717836149591
  %88 = tail call i64 @llvm.fshl.i64(i64 %87, i64 %87, i64 31)
  %89 = mul i64 %88, -7046029288634856825
  %90 = xor i64 %86, %89
  %91 = mul i64 %90, -7046029288634856825
  %92 = add i64 %91, -8796714831421723037
  %93 = mul i64 %46, -2381459717836149591
  %94 = tail call i64 @llvm.fshl.i64(i64 %93, i64 %93, i64 31)
  %95 = mul i64 %94, -7046029288634856825
  %96 = xor i64 %92, %95
  %97 = mul i64 %96, -7046029288634856825
  %98 = add i64 %97, -8796714831421723037
  %99 = mul i64 %52, -2381459717836149591
  %100 = tail call i64 @llvm.fshl.i64(i64 %99, i64 %99, i64 31)
  %101 = mul i64 %100, -7046029288634856825
  %102 = xor i64 %98, %101
  %103 = mul i64 %102, -7046029288634856825
  %104 = add i64 %103, -8796714831421723037
  %105 = mul i64 %58, -2381459717836149591
  %106 = tail call i64 @llvm.fshl.i64(i64 %105, i64 %105, i64 31)
  %107 = mul i64 %106, -7046029288634856825
  %108 = xor i64 %104, %107
  %109 = mul i64 %108, -7046029288634856825
  %110 = add i64 %109, -8796714831421722974
  %111 = xor i64 %79, %110
  %112 = tail call i64 @llvm.fshl.i64(i64 %111, i64 %111, i64 27)
  %113 = mul i64 %112, -7046029288634856825
  %114 = add i64 %113, -8796714831421723037
  %115 = xor i64 %74, %114
  %116 = tail call i64 @llvm.fshl.i64(i64 %115, i64 %115, i64 27)
  %117 = mul i64 %116, -7046029288634856825
  %118 = add i64 %117, -8796714831421723037
  %119 = xor i64 %69, %118
  %120 = tail call i64 @llvm.fshl.i64(i64 %119, i64 %119, i64 27)
  %121 = mul i64 %120, -7046029288634856825
  %122 = add i64 %121, -8796714831421723037
  %123 = getelementptr inbounds nuw i8, ptr %18, i64 64
  %124 = load i32, ptr %123, align 8
  %125 = zext i32 %124 to i64
  %126 = mul i64 %125, -7046029288634856825
  %127 = xor i64 %126, %122
  %128 = getelementptr inbounds nuw i8, ptr %18, i64 68
  %129 = tail call i64 @llvm.fshl.i64(i64 %127, i64 %127, i64 23)
  %130 = mul i64 %129, -4417276706812531889
  %131 = add i64 %130, 1609587929392839161
  %132 = getelementptr inbounds nuw i8, ptr %128, i64 1
  %133 = load i8, ptr %128, align 1
  %134 = zext i8 %133 to i64
  %135 = mul i64 %134, 2870177450012600261
  %136 = xor i64 %135, %131
  %137 = tail call i64 @llvm.fshl.i64(i64 %136, i64 %136, i64 11)
  %138 = mul i64 %137, -7046029288634856825
  %139 = getelementptr inbounds nuw i8, ptr %128, i64 2
  %140 = load i8, ptr %132, align 1
  %141 = zext i8 %140 to i64
  %142 = mul i64 %141, 2870177450012600261
  %143 = xor i64 %142, %138
  %144 = tail call i64 @llvm.fshl.i64(i64 %143, i64 %143, i64 11)
  %145 = mul i64 %144, -7046029288634856825
  %146 = load i8, ptr %139, align 1
  %147 = zext i8 %146 to i64
  %148 = mul i64 %147, 2870177450012600261
  %149 = xor i64 %148, %145
  %150 = tail call i64 @llvm.fshl.i64(i64 %149, i64 %149, i64 11)
  %151 = mul i64 %150, -7046029288634856825
  %152 = lshr i64 %151, 33
  %153 = xor i64 %152, %151
  %154 = mul i64 %153, -4417276706812531889
  %155 = lshr i64 %154, 29
  %156 = xor i64 %155, %154
  %157 = mul i64 %156, 1609587929392839161
  %158 = lshr i64 %157, 32
  %159 = xor i64 %158, %157
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %18) #9
  ret i64 %159
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_s64_64_64(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = mul i64 %7, -4417276706812531889
  %19 = mul i64 %3, -4417276706812531889
  %20 = add i64 %16, 7046029288634856825
  %21 = add i64 %19, %20
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = add i64 %18, %23
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 31)
  %26 = mul i64 %25, -7046029288634856825
  %27 = mul i64 %6, -4417276706812531889
  %28 = mul i64 %2, -4417276706812531889
  %29 = add i64 %28, %16
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %31 = mul i64 %30, -7046029288634856825
  %32 = add i64 %27, %31
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  %35 = mul i64 %5, -4417276706812531889
  %36 = mul i64 %1, -4417276706812531889
  %37 = add i64 %16, -4417276706812531889
  %38 = add i64 %36, %37
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %40 = mul i64 %39, -7046029288634856825
  %41 = add i64 %35, %40
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 31)
  %43 = mul i64 %42, -7046029288634856825
  %44 = mul i64 %4, -4417276706812531889
  %45 = mul i64 %0, -4417276706812531889
  %46 = add i64 %16, 6983438078262162902
  %47 = add i64 %45, %46
  %48 = tail call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 31)
  %49 = mul i64 %48, -7046029288634856825
  %50 = add i64 %44, %49
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 31)
  %52 = mul i64 %51, -7046029288634856825
  %53 = mul i64 %8, -4417276706812531889
  %54 = add i64 %53, %52
  %55 = tail call i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 31)
  %56 = mul i64 %55, -7046029288634856825
  %57 = mul i64 %9, -4417276706812531889
  %58 = add i64 %57, %43
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 31)
  %60 = mul i64 %59, -7046029288634856825
  %61 = mul i64 %10, -4417276706812531889
  %62 = add i64 %61, %34
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 31)
  %64 = mul i64 %63, -7046029288634856825
  %65 = mul i64 %11, -4417276706812531889
  %66 = add i64 %65, %26
  %67 = tail call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 31)
  %68 = mul i64 %67, -7046029288634856825
  %69 = mul i64 %12, -4417276706812531889
  %70 = add i64 %69, %56
  %71 = tail call i64 @llvm.fshl.i64(i64 %70, i64 %70, i64 31)
  %72 = mul i64 %71, -7046029288634856825
  %73 = mul i64 %13, -4417276706812531889
  %74 = add i64 %73, %60
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 31)
  %76 = mul i64 %75, -7046029288634856825
  %77 = mul i64 %14, -4417276706812531889
  %78 = add i64 %77, %64
  %79 = tail call i64 @llvm.fshl.i64(i64 %78, i64 %78, i64 31)
  %80 = mul i64 %79, -7046029288634856825
  %81 = mul i64 %15, -4417276706812531889
  %82 = add i64 %81, %68
  %83 = tail call i64 @llvm.fshl.i64(i64 %82, i64 %82, i64 31)
  %84 = mul i64 %83, -7046029288634856825
  %85 = tail call i64 @llvm.fshl.i64(i64 %76, i64 %76, i64 7)
  %86 = tail call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 1)
  %87 = add i64 %85, %86
  %88 = tail call i64 @llvm.fshl.i64(i64 %80, i64 %80, i64 12)
  %89 = add i64 %87, %88
  %90 = tail call i64 @llvm.fshl.i64(i64 %84, i64 %84, i64 18)
  %91 = add i64 %89, %90
  %92 = mul i64 %71, -2381459717836149591
  %93 = tail call i64 @llvm.fshl.i64(i64 %92, i64 %92, i64 31)
  %94 = mul i64 %93, -7046029288634856825
  %95 = xor i64 %91, %94
  %96 = mul i64 %95, -7046029288634856825
  %97 = add i64 %96, -8796714831421723037
  %98 = mul i64 %75, -2381459717836149591
  %99 = tail call i64 @llvm.fshl.i64(i64 %98, i64 %98, i64 31)
  %100 = mul i64 %99, -7046029288634856825
  %101 = xor i64 %97, %100
  %102 = mul i64 %101, -7046029288634856825
  %103 = add i64 %102, -8796714831421723037
  %104 = mul i64 %79, -2381459717836149591
  %105 = tail call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 31)
  %106 = mul i64 %105, -7046029288634856825
  %107 = xor i64 %103, %106
  %108 = mul i64 %107, -7046029288634856825
  %109 = add i64 %108, -8796714831421723037
  %110 = mul i64 %83, -2381459717836149591
  %111 = tail call i64 @llvm.fshl.i64(i64 %110, i64 %110, i64 31)
  %112 = mul i64 %111, -7046029288634856825
  %113 = xor i64 %109, %112
  %114 = mul i64 %113, -7046029288634856825
  %115 = add i64 %114, -8796714831421722909
  %116 = lshr i64 %115, 33
  %117 = xor i64 %116, %115
  %118 = mul i64 %117, -4417276706812531889
  %119 = lshr i64 %118, 29
  %120 = xor i64 %119, %118
  %121 = mul i64 %120, 1609587929392839161
  %122 = lshr i64 %121, 32
  %123 = xor i64 %122, %121
  ret i64 %123
}

; Function Attrs: nofree norecurse nosync nounwind memory(inaccessiblemem: write) uwtable
define dso_local i64 @target_s64_33_31(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #5 {
  %18 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #9
  store i64 %0, ptr %18, align 16
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %2, ptr %20, align 16
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %3, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %4, ptr %22, align 16
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %5, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %6, ptr %24, align 16
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %7, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 64
  store i64 %8, ptr %26, align 16
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 %9, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 80
  store i64 %10, ptr %28, align 16
  %29 = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 %11, ptr %29, align 8
  %30 = getelementptr inbounds nuw i8, ptr %18, i64 96
  store i64 %12, ptr %30, align 16
  %31 = getelementptr inbounds nuw i8, ptr %18, i64 104
  store i64 %13, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %18, i64 112
  store i64 %14, ptr %32, align 16
  %33 = getelementptr inbounds nuw i8, ptr %18, i64 120
  store i64 %15, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 33
  %35 = load i64, ptr %18, align 16
  %36 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %39 = load i64, ptr %38, align 16
  %40 = getelementptr inbounds nuw i8, ptr %18, i64 24
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %43 = load i8, ptr %42, align 16
  %44 = load i56, ptr %34, align 1
  %45 = getelementptr inbounds nuw i8, ptr %18, i64 40
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds nuw i8, ptr %18, i64 48
  %48 = load i64, ptr %47, align 16
  %49 = getelementptr inbounds nuw i8, ptr %18, i64 56
  %50 = load i64, ptr %49, align 8
  %51 = zext i56 %44 to i64
  %52 = shl nuw i64 %51, 8
  %53 = zext i8 %43 to i64
  %54 = or disjoint i64 %52, %53
  %55 = mul i64 %54, -4417276706812531889
  %56 = mul i64 %35, -4417276706812531889
  %57 = add i64 %16, 6983438078262162902
  %58 = add i64 %56, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 31)
  %60 = mul i64 %59, -7046029288634856825
  %61 = add i64 %55, %60
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 31)
  %63 = mul i64 %62, -7046029288634856825
  %64 = mul i64 %46, -4417276706812531889
  %65 = mul i64 %37, -4417276706812531889
  %66 = add i64 %16, -4417276706812531889
  %67 = add i64 %65, %66
  %68 = tail call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 31)
  %69 = mul i64 %68, -7046029288634856825
  %70 = add i64 %64, %69
  %71 = tail call i64 @llvm.fshl.i64(i64 %70, i64 %70, i64 31)
  %72 = mul i64 %71, -7046029288634856825
  %73 = mul i64 %48, -4417276706812531889
  %74 = mul i64 %39, -4417276706812531889
  %75 = add i64 %74, %16
  %76 = tail call i64 @llvm.fshl.i64(i64 %75, i64 %75, i64 31)
  %77 = mul i64 %76, -7046029288634856825
  %78 = add i64 %73, %77
  %79 = tail call i64 @llvm.fshl.i64(i64 %78, i64 %78, i64 31)
  %80 = mul i64 %79, -7046029288634856825
  %81 = mul i64 %50, -4417276706812531889
  %82 = mul i64 %41, -4417276706812531889
  %83 = add i64 %16, 7046029288634856825
  %84 = add i64 %82, %83
  %85 = tail call i64 @llvm.fshl.i64(i64 %84, i64 %84, i64 31)
  %86 = mul i64 %85, -7046029288634856825
  %87 = add i64 %81, %86
  %88 = tail call i64 @llvm.fshl.i64(i64 %87, i64 %87, i64 31)
  %89 = mul i64 %88, -7046029288634856825
  %90 = tail call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 7)
  %91 = tail call i64 @llvm.fshl.i64(i64 %63, i64 %63, i64 1)
  %92 = add i64 %90, %91
  %93 = tail call i64 @llvm.fshl.i64(i64 %80, i64 %80, i64 12)
  %94 = add i64 %92, %93
  %95 = tail call i64 @llvm.fshl.i64(i64 %89, i64 %89, i64 18)
  %96 = add i64 %94, %95
  %97 = mul i64 %62, -2381459717836149591
  %98 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 31)
  %99 = mul i64 %98, -7046029288634856825
  %100 = xor i64 %96, %99
  %101 = mul i64 %100, -7046029288634856825
  %102 = add i64 %101, -8796714831421723037
  %103 = mul i64 %71, -2381459717836149591
  %104 = tail call i64 @llvm.fshl.i64(i64 %103, i64 %103, i64 31)
  %105 = mul i64 %104, -7046029288634856825
  %106 = xor i64 %102, %105
  %107 = mul i64 %106, -7046029288634856825
  %108 = add i64 %107, -8796714831421723037
  %109 = mul i64 %79, -2381459717836149591
  %110 = tail call i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 31)
  %111 = mul i64 %110, -7046029288634856825
  %112 = xor i64 %108, %111
  %113 = mul i64 %112, -7046029288634856825
  %114 = add i64 %113, -8796714831421723037
  %115 = mul i64 %88, -2381459717836149591
  %116 = tail call i64 @llvm.fshl.i64(i64 %115, i64 %115, i64 31)
  %117 = mul i64 %116, -7046029288634856825
  %118 = xor i64 %114, %117
  %119 = mul i64 %118, -7046029288634856825
  %120 = add i64 %119, -8796714831421722973
  %121 = lshr i64 %120, 33
  %122 = xor i64 %121, %120
  %123 = mul i64 %122, -4417276706812531889
  %124 = lshr i64 %123, 29
  %125 = xor i64 %124, %123
  %126 = mul i64 %125, 1609587929392839161
  %127 = lshr i64 %126, 32
  %128 = xor i64 %127, %126
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #9
  ret i64 %128
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { nofree norecurse nosync nounwind memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { nofree norecurse nosync nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"XXH64_consumeLong: argument 0"}
!7 = distinct !{!7, !"XXH64_consumeLong"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"XXH64_consumeLong: argument 1"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"XXH64_consumeLong: argument 0"}
!12 = distinct !{!12, !"XXH64_consumeLong"}
!13 = !{!14}
!14 = distinct !{!14, !12, !"XXH64_consumeLong: argument 1"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"XXH64_consumeLong: argument 1"}
!17 = distinct !{!17, !"XXH64_consumeLong"}
!18 = !{!19}
!19 = distinct !{!19, !17, !"XXH64_consumeLong: argument 0"}
