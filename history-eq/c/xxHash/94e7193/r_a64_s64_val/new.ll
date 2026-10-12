; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/94e7193/wrapv_s64.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/94e7193/wrapv_s64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64_7_8(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = alloca [16 x i8], align 8
  %19 = alloca [15 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18)
  store i64 %0, ptr %18, align 8
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %19)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %19, ptr noundef nonnull align 8 dereferenceable(7) %18, i64 7, i1 false)
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 7
  %22 = load i64, ptr %21, align 1
  %23 = getelementptr inbounds nuw i8, ptr %19, i64 7
  store i64 %22, ptr %23, align 1
  %24 = load i64, ptr %19, align 8
  %25 = getelementptr inbounds nuw i8, ptr %19, i64 14
  %26 = load i8, ptr %25, align 2
  %27 = zext i8 %26 to i64
  %28 = mul i64 %27, 2870177450012600261
  %29 = getelementptr inbounds nuw i8, ptr %19, i64 13
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i64
  %32 = mul i64 %31, 2870177450012600261
  %33 = getelementptr inbounds nuw i8, ptr %19, i64 12
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i64
  %36 = mul i64 %35, 2870177450012600261
  %37 = lshr i64 %22, 8
  %38 = and i64 %37, 4294967295
  %39 = mul i64 %38, -7046029288634856825
  %40 = mul i64 %24, -4417276706812531889
  %41 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 31)
  %42 = mul i64 %41, -7046029288634856825
  %43 = add i64 %16, 2870177450012600276
  %44 = xor i64 %42, %43
  %45 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 27)
  %46 = mul i64 %45, -7046029288634856825
  %47 = add i64 %46, -8796714831421723037
  %48 = xor i64 %39, %47
  %49 = tail call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 23)
  %50 = mul i64 %49, -4417276706812531889
  %51 = add i64 %50, 1609587929392839161
  %52 = xor i64 %36, %51
  %53 = tail call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 11)
  %54 = mul i64 %53, -7046029288634856825
  %55 = xor i64 %32, %54
  %56 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 11)
  %57 = mul i64 %56, -7046029288634856825
  %58 = xor i64 %28, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 11)
  %60 = mul i64 %59, -7046029288634856825
  %61 = lshr i64 %60, 33
  %62 = xor i64 %61, %60
  %63 = mul i64 %62, -4417276706812531889
  %64 = lshr i64 %63, 29
  %65 = xor i64 %64, %63
  %66 = mul i64 %65, 1609587929392839161
  %67 = lshr i64 %66, 32
  %68 = xor i64 %67, %66
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %19)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18)
  ret i64 %68
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64_13_18(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = lshr i64 %3, 32
  %19 = lshr i64 %3, 40
  %20 = lshr i64 %3, 48
  %21 = and i64 %20, 255
  %22 = mul i64 %21, 2870177450012600261
  %23 = and i64 %19, 255
  %24 = mul i64 %23, 2870177450012600261
  %25 = and i64 %18, 255
  %26 = mul i64 %25, 2870177450012600261
  %27 = and i64 %3, 4294967295
  %28 = mul i64 %27, -7046029288634856825
  %29 = mul i64 %2, -4417276706812531889
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %31 = mul i64 %30, -7046029288634856825
  %32 = mul i64 %1, -4417276706812531889
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  %35 = mul i64 %0, -4417276706812531889
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 31)
  %37 = mul i64 %36, -7046029288634856825
  %38 = add i64 %16, 2870177450012600292
  %39 = xor i64 %37, %38
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 27)
  %41 = mul i64 %40, -7046029288634856825
  %42 = add i64 %41, -8796714831421723037
  %43 = xor i64 %34, %42
  %44 = tail call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 27)
  %45 = mul i64 %44, -7046029288634856825
  %46 = add i64 %45, -8796714831421723037
  %47 = xor i64 %31, %46
  %48 = tail call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 27)
  %49 = mul i64 %48, -7046029288634856825
  %50 = add i64 %49, -8796714831421723037
  %51 = xor i64 %28, %50
  %52 = tail call i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 23)
  %53 = mul i64 %52, -4417276706812531889
  %54 = add i64 %53, 1609587929392839161
  %55 = xor i64 %26, %54
  %56 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 11)
  %57 = mul i64 %56, -7046029288634856825
  %58 = xor i64 %24, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 11)
  %60 = mul i64 %59, -7046029288634856825
  %61 = xor i64 %22, %60
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 11)
  %63 = mul i64 %62, -7046029288634856825
  %64 = lshr i64 %63, 33
  %65 = xor i64 %64, %63
  %66 = mul i64 %65, -4417276706812531889
  %67 = lshr i64 %66, 29
  %68 = xor i64 %67, %66
  %69 = mul i64 %68, 1609587929392839161
  %70 = lshr i64 %69, 32
  %71 = xor i64 %70, %69
  ret i64 %71
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64_10_30(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
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
  %37 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 1)
  %38 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 7)
  %39 = add i64 %38, %37
  %40 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 12)
  %41 = add i64 %39, %40
  %42 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 18)
  %43 = add i64 %41, %42
  %44 = mul i64 %23, -2381459717836149591
  %45 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 31)
  %46 = mul i64 %45, -7046029288634856825
  %47 = xor i64 %43, %46
  %48 = mul i64 %47, -7046029288634856825
  %49 = add i64 %48, -8796714831421723037
  %50 = mul i64 %27, -2381459717836149591
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 31)
  %52 = mul i64 %51, -7046029288634856825
  %53 = xor i64 %49, %52
  %54 = mul i64 %53, -7046029288634856825
  %55 = add i64 %54, -8796714831421723037
  %56 = mul i64 %31, -2381459717836149591
  %57 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 31)
  %58 = mul i64 %57, -7046029288634856825
  %59 = xor i64 %55, %58
  %60 = mul i64 %59, -7046029288634856825
  %61 = add i64 %60, -8796714831421723037
  %62 = mul i64 %35, -2381459717836149591
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 31)
  %64 = mul i64 %63, -7046029288634856825
  %65 = xor i64 %61, %64
  %66 = mul i64 %65, -7046029288634856825
  %67 = add i64 %66, -8796714831421722997
  %68 = mul i64 %4, -4417276706812531889
  %69 = tail call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 31)
  %70 = mul i64 %69, -7046029288634856825
  %71 = xor i64 %70, %67
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
define dso_local i64 @target_s64_40_23(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = add i64 %16, 6983438078262162902
  %19 = add i64 %16, -4417276706812531889
  %20 = add i64 %16, 7046029288634856825
  %21 = mul i64 %3, -4417276706812531889
  %22 = add i64 %21, %20
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = mul i64 %2, -4417276706812531889
  %26 = add i64 %25, %16
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = mul i64 %1, -4417276706812531889
  %30 = add i64 %29, %19
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  %33 = mul i64 %0, -4417276706812531889
  %34 = add i64 %33, %18
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 31)
  %36 = mul i64 %35, -7046029288634856825
  %37 = lshr i64 %7, 32
  %38 = lshr i64 %7, 40
  %39 = lshr i64 %7, 48
  %40 = mul i64 %4, -4417276706812531889
  %41 = mul i64 %5, -4417276706812531889
  %42 = mul i64 %6, -4417276706812531889
  %43 = and i64 %39, 255
  %44 = mul i64 %43, 2870177450012600261
  %45 = and i64 %38, 255
  %46 = mul i64 %45, 2870177450012600261
  %47 = and i64 %37, 255
  %48 = mul i64 %47, 2870177450012600261
  %49 = and i64 %7, 4294967295
  %50 = mul i64 %49, -7046029288634856825
  %51 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 31)
  %52 = mul i64 %51, -7046029288634856825
  %53 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 31)
  %54 = mul i64 %53, -7046029288634856825
  %55 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 31)
  %56 = mul i64 %55, -7046029288634856825
  %57 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 7)
  %58 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 1)
  %59 = add i64 %57, %58
  %60 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 12)
  %61 = add i64 %59, %60
  %62 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 18)
  %63 = add i64 %61, %62
  %64 = mul i64 %35, -2381459717836149591
  %65 = tail call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 31)
  %66 = mul i64 %65, -7046029288634856825
  %67 = xor i64 %63, %66
  %68 = mul i64 %67, -7046029288634856825
  %69 = add i64 %68, -8796714831421723037
  %70 = mul i64 %31, -2381459717836149591
  %71 = tail call i64 @llvm.fshl.i64(i64 %70, i64 %70, i64 31)
  %72 = mul i64 %71, -7046029288634856825
  %73 = xor i64 %69, %72
  %74 = mul i64 %73, -7046029288634856825
  %75 = add i64 %74, -8796714831421723037
  %76 = mul i64 %27, -2381459717836149591
  %77 = tail call i64 @llvm.fshl.i64(i64 %76, i64 %76, i64 31)
  %78 = mul i64 %77, -7046029288634856825
  %79 = xor i64 %75, %78
  %80 = mul i64 %79, -7046029288634856825
  %81 = add i64 %80, -8796714831421723037
  %82 = mul i64 %23, -2381459717836149591
  %83 = tail call i64 @llvm.fshl.i64(i64 %82, i64 %82, i64 31)
  %84 = mul i64 %83, -7046029288634856825
  %85 = xor i64 %81, %84
  %86 = mul i64 %85, -7046029288634856825
  %87 = add i64 %86, -8796714831421722974
  %88 = xor i64 %56, %87
  %89 = tail call i64 @llvm.fshl.i64(i64 %88, i64 %88, i64 27)
  %90 = mul i64 %89, -7046029288634856825
  %91 = add i64 %90, -8796714831421723037
  %92 = xor i64 %54, %91
  %93 = tail call i64 @llvm.fshl.i64(i64 %92, i64 %92, i64 27)
  %94 = mul i64 %93, -7046029288634856825
  %95 = add i64 %94, -8796714831421723037
  %96 = xor i64 %52, %95
  %97 = tail call i64 @llvm.fshl.i64(i64 %96, i64 %96, i64 27)
  %98 = mul i64 %97, -7046029288634856825
  %99 = add i64 %98, -8796714831421723037
  %100 = xor i64 %50, %99
  %101 = tail call i64 @llvm.fshl.i64(i64 %100, i64 %100, i64 23)
  %102 = mul i64 %101, -4417276706812531889
  %103 = add i64 %102, 1609587929392839161
  %104 = xor i64 %48, %103
  %105 = tail call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 11)
  %106 = mul i64 %105, -7046029288634856825
  %107 = xor i64 %46, %106
  %108 = tail call i64 @llvm.fshl.i64(i64 %107, i64 %107, i64 11)
  %109 = mul i64 %108, -7046029288634856825
  %110 = xor i64 %44, %109
  %111 = tail call i64 @llvm.fshl.i64(i64 %110, i64 %110, i64 11)
  %112 = mul i64 %111, -7046029288634856825
  %113 = lshr i64 %112, 33
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, -4417276706812531889
  %116 = lshr i64 %115, 29
  %117 = xor i64 %116, %115
  %118 = mul i64 %117, 1609587929392839161
  %119 = lshr i64 %118, 32
  %120 = xor i64 %119, %118
  ret i64 %120
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64_0_0(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = add i64 %16, 2870177450012600261
  %19 = lshr i64 %18, 33
  %20 = xor i64 %19, %18
  %21 = mul i64 %20, -4417276706812531889
  %22 = lshr i64 %21, 29
  %23 = xor i64 %22, %21
  %24 = mul i64 %23, 1609587929392839161
  %25 = lshr i64 %24, 32
  %26 = xor i64 %25, %24
  ret i64 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64_31_0(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = lshr i64 %3, 32
  %19 = lshr i64 %3, 40
  %20 = lshr i64 %3, 48
  %21 = and i64 %20, 255
  %22 = mul i64 %21, 2870177450012600261
  %23 = and i64 %19, 255
  %24 = mul i64 %23, 2870177450012600261
  %25 = and i64 %18, 255
  %26 = mul i64 %25, 2870177450012600261
  %27 = and i64 %3, 4294967295
  %28 = mul i64 %27, -7046029288634856825
  %29 = mul i64 %2, -4417276706812531889
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %31 = mul i64 %30, -7046029288634856825
  %32 = mul i64 %1, -4417276706812531889
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31)
  %34 = mul i64 %33, -7046029288634856825
  %35 = mul i64 %0, -4417276706812531889
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 31)
  %37 = mul i64 %36, -7046029288634856825
  %38 = add i64 %16, 2870177450012600292
  %39 = xor i64 %37, %38
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 27)
  %41 = mul i64 %40, -7046029288634856825
  %42 = add i64 %41, -8796714831421723037
  %43 = xor i64 %34, %42
  %44 = tail call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 27)
  %45 = mul i64 %44, -7046029288634856825
  %46 = add i64 %45, -8796714831421723037
  %47 = xor i64 %31, %46
  %48 = tail call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 27)
  %49 = mul i64 %48, -7046029288634856825
  %50 = add i64 %49, -8796714831421723037
  %51 = xor i64 %28, %50
  %52 = tail call i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 23)
  %53 = mul i64 %52, -4417276706812531889
  %54 = add i64 %53, 1609587929392839161
  %55 = xor i64 %26, %54
  %56 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 11)
  %57 = mul i64 %56, -7046029288634856825
  %58 = xor i64 %24, %57
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 11)
  %60 = mul i64 %59, -7046029288634856825
  %61 = xor i64 %22, %60
  %62 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 11)
  %63 = mul i64 %62, -7046029288634856825
  %64 = lshr i64 %63, 33
  %65 = xor i64 %64, %63
  %66 = mul i64 %65, -4417276706812531889
  %67 = lshr i64 %66, 29
  %68 = xor i64 %67, %66
  %69 = mul i64 %68, 1609587929392839161
  %70 = lshr i64 %69, 32
  %71 = xor i64 %70, %69
  ret i64 %71
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64_3_60(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
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
  %37 = lshr i64 %7, 48
  %38 = and i64 %37, 255
  %39 = mul i64 %38, 2870177450012600261
  %40 = lshr i64 %7, 40
  %41 = and i64 %40, 255
  %42 = mul i64 %41, 2870177450012600261
  %43 = lshr i64 %7, 32
  %44 = and i64 %43, 255
  %45 = mul i64 %44, 2870177450012600261
  %46 = and i64 %7, 4294967295
  %47 = mul i64 %46, -7046029288634856825
  %48 = mul i64 %6, -4417276706812531889
  %49 = tail call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 31)
  %50 = mul i64 %49, -7046029288634856825
  %51 = mul i64 %5, -4417276706812531889
  %52 = tail call i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 31)
  %53 = mul i64 %52, -7046029288634856825
  %54 = mul i64 %4, -4417276706812531889
  %55 = tail call i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 31)
  %56 = mul i64 %55, -7046029288634856825
  %57 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 7)
  %58 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 1)
  %59 = add i64 %57, %58
  %60 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 12)
  %61 = add i64 %59, %60
  %62 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 18)
  %63 = add i64 %61, %62
  %64 = mul i64 %23, -2381459717836149591
  %65 = tail call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 31)
  %66 = mul i64 %65, -7046029288634856825
  %67 = xor i64 %63, %66
  %68 = mul i64 %67, -7046029288634856825
  %69 = add i64 %68, -8796714831421723037
  %70 = mul i64 %27, -2381459717836149591
  %71 = tail call i64 @llvm.fshl.i64(i64 %70, i64 %70, i64 31)
  %72 = mul i64 %71, -7046029288634856825
  %73 = xor i64 %69, %72
  %74 = mul i64 %73, -7046029288634856825
  %75 = add i64 %74, -8796714831421723037
  %76 = mul i64 %31, -2381459717836149591
  %77 = tail call i64 @llvm.fshl.i64(i64 %76, i64 %76, i64 31)
  %78 = mul i64 %77, -7046029288634856825
  %79 = xor i64 %75, %78
  %80 = mul i64 %79, -7046029288634856825
  %81 = add i64 %80, -8796714831421723037
  %82 = mul i64 %35, -2381459717836149591
  %83 = tail call i64 @llvm.fshl.i64(i64 %82, i64 %82, i64 31)
  %84 = mul i64 %83, -7046029288634856825
  %85 = xor i64 %81, %84
  %86 = mul i64 %85, -7046029288634856825
  %87 = add i64 %86, -8796714831421722974
  %88 = xor i64 %56, %87
  %89 = tail call i64 @llvm.fshl.i64(i64 %88, i64 %88, i64 27)
  %90 = mul i64 %89, -7046029288634856825
  %91 = add i64 %90, -8796714831421723037
  %92 = xor i64 %53, %91
  %93 = tail call i64 @llvm.fshl.i64(i64 %92, i64 %92, i64 27)
  %94 = mul i64 %93, -7046029288634856825
  %95 = add i64 %94, -8796714831421723037
  %96 = xor i64 %50, %95
  %97 = tail call i64 @llvm.fshl.i64(i64 %96, i64 %96, i64 27)
  %98 = mul i64 %97, -7046029288634856825
  %99 = add i64 %98, -8796714831421723037
  %100 = xor i64 %47, %99
  %101 = tail call i64 @llvm.fshl.i64(i64 %100, i64 %100, i64 23)
  %102 = mul i64 %101, -4417276706812531889
  %103 = add i64 %102, 1609587929392839161
  %104 = xor i64 %45, %103
  %105 = tail call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 11)
  %106 = mul i64 %105, -7046029288634856825
  %107 = xor i64 %42, %106
  %108 = tail call i64 @llvm.fshl.i64(i64 %107, i64 %107, i64 11)
  %109 = mul i64 %108, -7046029288634856825
  %110 = xor i64 %39, %109
  %111 = tail call i64 @llvm.fshl.i64(i64 %110, i64 %110, i64 11)
  %112 = mul i64 %111, -7046029288634856825
  %113 = lshr i64 %112, 33
  %114 = xor i64 %113, %112
  %115 = mul i64 %114, -4417276706812531889
  %116 = lshr i64 %115, 29
  %117 = xor i64 %116, %115
  %118 = mul i64 %117, 1609587929392839161
  %119 = lshr i64 %118, 32
  %120 = xor i64 %119, %118
  ret i64 %120
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+v8a,-fmv" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
