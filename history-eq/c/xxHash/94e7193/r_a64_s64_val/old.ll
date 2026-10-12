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
  %25 = lshr i64 %22, 56
  %26 = lshr i64 %22, 48
  %27 = lshr i64 %22, 40
  %28 = lshr i64 %22, 8
  %29 = add i64 %16, 2870177450012600276
  %30 = mul i64 %24, -4417276706812531889
  %31 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 31)
  %32 = mul i64 %31, -7046029288634856825
  %33 = xor i64 %32, %29
  %34 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 27)
  %35 = mul i64 %34, -7046029288634856825
  %36 = add i64 %35, -8796714831421723037
  %37 = and i64 %28, 4294967295
  %38 = mul i64 %37, -7046029288634856825
  %39 = xor i64 %36, %38
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 23)
  %41 = mul i64 %40, -4417276706812531889
  %42 = add i64 %41, 1609587929392839161
  %43 = and i64 %27, 255
  %44 = mul i64 %43, 2870177450012600261
  %45 = xor i64 %42, %44
  %46 = tail call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 11)
  %47 = mul i64 %46, -7046029288634856825
  %48 = and i64 %26, 255
  %49 = mul i64 %48, 2870177450012600261
  %50 = xor i64 %47, %49
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 11)
  %52 = mul i64 %51, -7046029288634856825
  %53 = mul i64 %25, 2870177450012600261
  %54 = xor i64 %52, %53
  %55 = tail call i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 11)
  %56 = mul i64 %55, -7046029288634856825
  %57 = lshr i64 %56, 33
  %58 = xor i64 %57, %56
  %59 = mul i64 %58, -4417276706812531889
  %60 = lshr i64 %59, 29
  %61 = xor i64 %60, %59
  %62 = mul i64 %61, 1609587929392839161
  %63 = lshr i64 %62, 32
  %64 = xor i64 %63, %62
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %19)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18)
  ret i64 %64
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
  %21 = add i64 %16, 2870177450012600292
  %22 = mul i64 %0, -4417276706812531889
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = xor i64 %24, %21
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 27)
  %27 = mul i64 %26, -7046029288634856825
  %28 = add i64 %27, -8796714831421723037
  %29 = mul i64 %1, -4417276706812531889
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %31 = mul i64 %30, -7046029288634856825
  %32 = xor i64 %28, %31
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 27)
  %34 = mul i64 %33, -7046029288634856825
  %35 = add i64 %34, -8796714831421723037
  %36 = mul i64 %2, -4417276706812531889
  %37 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 31)
  %38 = mul i64 %37, -7046029288634856825
  %39 = xor i64 %35, %38
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 27)
  %41 = mul i64 %40, -7046029288634856825
  %42 = add i64 %41, -8796714831421723037
  %43 = and i64 %3, 4294967295
  %44 = mul i64 %43, -7046029288634856825
  %45 = xor i64 %42, %44
  %46 = tail call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 23)
  %47 = mul i64 %46, -4417276706812531889
  %48 = add i64 %47, 1609587929392839161
  %49 = and i64 %18, 255
  %50 = mul i64 %49, 2870177450012600261
  %51 = xor i64 %48, %50
  %52 = tail call i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 11)
  %53 = mul i64 %52, -7046029288634856825
  %54 = and i64 %19, 255
  %55 = mul i64 %54, 2870177450012600261
  %56 = xor i64 %53, %55
  %57 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 11)
  %58 = mul i64 %57, -7046029288634856825
  %59 = and i64 %20, 255
  %60 = mul i64 %59, 2870177450012600261
  %61 = xor i64 %58, %60
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
  %71 = xor i64 %67, %70
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
  %43 = and i64 %7, 4294967295
  %44 = mul i64 %43, -7046029288634856825
  %45 = and i64 %37, 255
  %46 = mul i64 %45, 2870177450012600261
  %47 = and i64 %38, 255
  %48 = mul i64 %47, 2870177450012600261
  %49 = and i64 %39, 255
  %50 = mul i64 %49, 2870177450012600261
  %51 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 1)
  %52 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 7)
  %53 = add i64 %52, %51
  %54 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 12)
  %55 = add i64 %53, %54
  %56 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 18)
  %57 = add i64 %55, %56
  %58 = mul i64 %35, -2381459717836149591
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 31)
  %60 = mul i64 %59, -7046029288634856825
  %61 = xor i64 %57, %60
  %62 = mul i64 %61, -7046029288634856825
  %63 = add i64 %62, -8796714831421723037
  %64 = mul i64 %31, -2381459717836149591
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
  %76 = mul i64 %23, -2381459717836149591
  %77 = tail call i64 @llvm.fshl.i64(i64 %76, i64 %76, i64 31)
  %78 = mul i64 %77, -7046029288634856825
  %79 = xor i64 %75, %78
  %80 = mul i64 %79, -7046029288634856825
  %81 = add i64 %80, -8796714831421722974
  %82 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 31)
  %83 = mul i64 %82, -7046029288634856825
  %84 = xor i64 %81, %83
  %85 = tail call i64 @llvm.fshl.i64(i64 %84, i64 %84, i64 27)
  %86 = mul i64 %85, -7046029288634856825
  %87 = add i64 %86, -8796714831421723037
  %88 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 31)
  %89 = mul i64 %88, -7046029288634856825
  %90 = xor i64 %87, %89
  %91 = tail call i64 @llvm.fshl.i64(i64 %90, i64 %90, i64 27)
  %92 = mul i64 %91, -7046029288634856825
  %93 = add i64 %92, -8796714831421723037
  %94 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 31)
  %95 = mul i64 %94, -7046029288634856825
  %96 = xor i64 %93, %95
  %97 = tail call i64 @llvm.fshl.i64(i64 %96, i64 %96, i64 27)
  %98 = mul i64 %97, -7046029288634856825
  %99 = add i64 %98, -8796714831421723037
  %100 = xor i64 %99, %44
  %101 = tail call i64 @llvm.fshl.i64(i64 %100, i64 %100, i64 23)
  %102 = mul i64 %101, -4417276706812531889
  %103 = add i64 %102, 1609587929392839161
  %104 = xor i64 %103, %46
  %105 = tail call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 11)
  %106 = mul i64 %105, -7046029288634856825
  %107 = xor i64 %106, %48
  %108 = tail call i64 @llvm.fshl.i64(i64 %107, i64 %107, i64 11)
  %109 = mul i64 %108, -7046029288634856825
  %110 = xor i64 %109, %50
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
  %21 = add i64 %16, 2870177450012600292
  %22 = mul i64 %0, -4417276706812531889
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 31)
  %24 = mul i64 %23, -7046029288634856825
  %25 = xor i64 %24, %21
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 27)
  %27 = mul i64 %26, -7046029288634856825
  %28 = add i64 %27, -8796714831421723037
  %29 = mul i64 %1, -4417276706812531889
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %31 = mul i64 %30, -7046029288634856825
  %32 = xor i64 %28, %31
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 27)
  %34 = mul i64 %33, -7046029288634856825
  %35 = add i64 %34, -8796714831421723037
  %36 = mul i64 %2, -4417276706812531889
  %37 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 31)
  %38 = mul i64 %37, -7046029288634856825
  %39 = xor i64 %35, %38
  %40 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 27)
  %41 = mul i64 %40, -7046029288634856825
  %42 = add i64 %41, -8796714831421723037
  %43 = and i64 %3, 4294967295
  %44 = mul i64 %43, -7046029288634856825
  %45 = xor i64 %42, %44
  %46 = tail call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 23)
  %47 = mul i64 %46, -4417276706812531889
  %48 = add i64 %47, 1609587929392839161
  %49 = and i64 %18, 255
  %50 = mul i64 %49, 2870177450012600261
  %51 = xor i64 %48, %50
  %52 = tail call i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 11)
  %53 = mul i64 %52, -7046029288634856825
  %54 = and i64 %19, 255
  %55 = mul i64 %54, 2870177450012600261
  %56 = xor i64 %53, %55
  %57 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 11)
  %58 = mul i64 %57, -7046029288634856825
  %59 = and i64 %20, 255
  %60 = mul i64 %59, 2870177450012600261
  %61 = xor i64 %58, %60
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
  %38 = lshr i64 %7, 40
  %39 = lshr i64 %7, 32
  %40 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 1)
  %41 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 7)
  %42 = add i64 %41, %40
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
  %70 = add i64 %69, -8796714831421722974
  %71 = mul i64 %4, -4417276706812531889
  %72 = tail call i64 @llvm.fshl.i64(i64 %71, i64 %71, i64 31)
  %73 = mul i64 %72, -7046029288634856825
  %74 = xor i64 %70, %73
  %75 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 27)
  %76 = mul i64 %75, -7046029288634856825
  %77 = add i64 %76, -8796714831421723037
  %78 = mul i64 %5, -4417276706812531889
  %79 = tail call i64 @llvm.fshl.i64(i64 %78, i64 %78, i64 31)
  %80 = mul i64 %79, -7046029288634856825
  %81 = xor i64 %77, %80
  %82 = tail call i64 @llvm.fshl.i64(i64 %81, i64 %81, i64 27)
  %83 = mul i64 %82, -7046029288634856825
  %84 = add i64 %83, -8796714831421723037
  %85 = mul i64 %6, -4417276706812531889
  %86 = tail call i64 @llvm.fshl.i64(i64 %85, i64 %85, i64 31)
  %87 = mul i64 %86, -7046029288634856825
  %88 = xor i64 %84, %87
  %89 = tail call i64 @llvm.fshl.i64(i64 %88, i64 %88, i64 27)
  %90 = mul i64 %89, -7046029288634856825
  %91 = add i64 %90, -8796714831421723037
  %92 = and i64 %7, 4294967295
  %93 = mul i64 %92, -7046029288634856825
  %94 = xor i64 %91, %93
  %95 = tail call i64 @llvm.fshl.i64(i64 %94, i64 %94, i64 23)
  %96 = mul i64 %95, -4417276706812531889
  %97 = add i64 %96, 1609587929392839161
  %98 = and i64 %39, 255
  %99 = mul i64 %98, 2870177450012600261
  %100 = xor i64 %97, %99
  %101 = tail call i64 @llvm.fshl.i64(i64 %100, i64 %100, i64 11)
  %102 = mul i64 %101, -7046029288634856825
  %103 = and i64 %38, 255
  %104 = mul i64 %103, 2870177450012600261
  %105 = xor i64 %102, %104
  %106 = tail call i64 @llvm.fshl.i64(i64 %105, i64 %105, i64 11)
  %107 = mul i64 %106, -7046029288634856825
  %108 = and i64 %37, 255
  %109 = mul i64 %108, 2870177450012600261
  %110 = xor i64 %107, %109
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
