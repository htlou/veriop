; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/61041e5/wrapv_s64.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/61041e5/wrapv_s64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_s64_7_8(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = alloca [16 x i8], align 16
  %19 = alloca [15 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18)
  store i64 %0, ptr %18, align 16
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %1, ptr %20, align 8
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %19)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %19, ptr noundef nonnull align 16 dereferenceable(7) %18, i64 7, i1 false)
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
define dso_local i64 @target_s64_32_0(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
  %18 = mul i64 %0, -4417276706812531889
  %19 = add i64 %16, 6983438078262162902
  %20 = add i64 %18, %19
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = mul i64 %1, -4417276706812531889
  %24 = add i64 %16, -4417276706812531889
  %25 = add i64 %23, %24
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 31)
  %27 = mul i64 %26, -7046029288634856825
  %28 = mul i64 %2, -4417276706812531889
  %29 = add i64 %28, %16
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %31 = mul i64 %30, -7046029288634856825
  %32 = mul i64 %3, -4417276706812531889
  %33 = add i64 %16, 7046029288634856825
  %34 = add i64 %32, %33
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 31)
  %36 = mul i64 %35, -7046029288634856825
  %37 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 1)
  %38 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 7)
  %39 = add i64 %38, %37
  %40 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 12)
  %41 = add i64 %39, %40
  %42 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 18)
  %43 = add i64 %41, %42
  %44 = mul i64 %21, -2381459717836149591
  %45 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 31)
  %46 = mul i64 %45, -7046029288634856825
  %47 = xor i64 %43, %46
  %48 = mul i64 %47, -7046029288634856825
  %49 = add i64 %48, -8796714831421723037
  %50 = mul i64 %26, -2381459717836149591
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 31)
  %52 = mul i64 %51, -7046029288634856825
  %53 = xor i64 %49, %52
  %54 = mul i64 %53, -7046029288634856825
  %55 = add i64 %54, -8796714831421723037
  %56 = mul i64 %30, -2381459717836149591
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
define dso_local i64 @target_s64_20_13(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #0 {
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
  %67 = add i64 %66, -8796714831421723004
  %68 = and i64 %4, 255
  %69 = mul i64 %68, 2870177450012600261
  %70 = xor i64 %69, %67
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

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_s64_64_0(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #3 {
  %18 = add i64 %16, 7046029288634856825
  %19 = add i64 %16, -4417276706812531889
  %20 = add i64 %16, 6983438078262162902
  %21 = mul i64 %0, -4417276706812531889
  %22 = add i64 %21, %20
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
  %34 = add i64 %33, %18
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 31)
  %36 = mul i64 %35, -7046029288634856825
  %37 = mul i64 %4, -4417276706812531889
  %38 = add i64 %37, %24
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %40 = mul i64 %39, -7046029288634856825
  %41 = mul i64 %5, -4417276706812531889
  %42 = add i64 %41, %28
  %43 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 31)
  %44 = mul i64 %43, -7046029288634856825
  %45 = mul i64 %6, -4417276706812531889
  %46 = add i64 %45, %32
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 31)
  %48 = mul i64 %47, -7046029288634856825
  %49 = mul i64 %7, -4417276706812531889
  %50 = add i64 %49, %36
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 31)
  %52 = mul i64 %51, -7046029288634856825
  %53 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 1)
  %54 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 7)
  %55 = add i64 %54, %53
  %56 = tail call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 12)
  %57 = add i64 %55, %56
  %58 = tail call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 18)
  %59 = add i64 %57, %58
  %60 = mul i64 %39, -2381459717836149591
  %61 = tail call i64 @llvm.fshl.i64(i64 %60, i64 %60, i64 31)
  %62 = mul i64 %61, -7046029288634856825
  %63 = xor i64 %59, %62
  %64 = mul i64 %63, -7046029288634856825
  %65 = add i64 %64, -8796714831421723037
  %66 = mul i64 %43, -2381459717836149591
  %67 = tail call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 31)
  %68 = mul i64 %67, -7046029288634856825
  %69 = xor i64 %65, %68
  %70 = mul i64 %69, -7046029288634856825
  %71 = add i64 %70, -8796714831421723037
  %72 = mul i64 %47, -2381459717836149591
  %73 = tail call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 31)
  %74 = mul i64 %73, -7046029288634856825
  %75 = xor i64 %71, %74
  %76 = mul i64 %75, -7046029288634856825
  %77 = add i64 %76, -8796714831421723037
  %78 = mul i64 %51, -2381459717836149591
  %79 = tail call i64 @llvm.fshl.i64(i64 %78, i64 %78, i64 31)
  %80 = mul i64 %79, -7046029288634856825
  %81 = xor i64 %77, %80
  %82 = mul i64 %81, -7046029288634856825
  %83 = add i64 %82, -8796714831421722973
  %84 = lshr i64 %83, 33
  %85 = xor i64 %84, %83
  %86 = mul i64 %85, -4417276706812531889
  %87 = lshr i64 %86, 29
  %88 = xor i64 %87, %86
  %89 = mul i64 %88, 1609587929392839161
  %90 = lshr i64 %89, 32
  %91 = xor i64 %90, %89
  ret i64 %91
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_s64_1_95(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #3 {
  %18 = mul i64 %3, -4417276706812531889
  %19 = add i64 %16, 7046029288634856825
  %20 = add i64 %18, %19
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = mul i64 %2, -4417276706812531889
  %24 = add i64 %23, %16
  %25 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 31)
  %26 = mul i64 %25, -7046029288634856825
  %27 = mul i64 %1, -4417276706812531889
  %28 = add i64 %16, -4417276706812531889
  %29 = add i64 %27, %28
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31)
  %31 = mul i64 %30, -7046029288634856825
  %32 = mul i64 %0, -4417276706812531889
  %33 = add i64 %16, 6983438078262162902
  %34 = add i64 %32, %33
  %35 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 31)
  %36 = mul i64 %35, -7046029288634856825
  %37 = mul i64 %4, -4417276706812531889
  %38 = add i64 %37, %36
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31)
  %40 = mul i64 %39, -7046029288634856825
  %41 = mul i64 %5, -4417276706812531889
  %42 = add i64 %41, %31
  %43 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 31)
  %44 = mul i64 %43, -7046029288634856825
  %45 = mul i64 %6, -4417276706812531889
  %46 = add i64 %45, %26
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 31)
  %48 = mul i64 %47, -7046029288634856825
  %49 = mul i64 %7, -4417276706812531889
  %50 = add i64 %49, %22
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 31)
  %52 = mul i64 %51, -7046029288634856825
  %53 = mul i64 %8, -4417276706812531889
  %54 = add i64 %53, %40
  %55 = tail call i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 31)
  %56 = mul i64 %55, -7046029288634856825
  %57 = mul i64 %9, -4417276706812531889
  %58 = add i64 %57, %44
  %59 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 31)
  %60 = mul i64 %59, -7046029288634856825
  %61 = mul i64 %10, -4417276706812531889
  %62 = add i64 %61, %48
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 31)
  %64 = mul i64 %63, -7046029288634856825
  %65 = mul i64 %11, -4417276706812531889
  %66 = add i64 %65, %52
  %67 = tail call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 31)
  %68 = mul i64 %67, -7046029288634856825
  %69 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 1)
  %70 = tail call i64 @llvm.fshl.i64(i64 %60, i64 %60, i64 7)
  %71 = add i64 %70, %69
  %72 = tail call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 12)
  %73 = add i64 %71, %72
  %74 = tail call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 18)
  %75 = add i64 %73, %74
  %76 = mul i64 %55, -2381459717836149591
  %77 = tail call i64 @llvm.fshl.i64(i64 %76, i64 %76, i64 31)
  %78 = mul i64 %77, -7046029288634856825
  %79 = xor i64 %75, %78
  %80 = mul i64 %79, -7046029288634856825
  %81 = add i64 %80, -8796714831421723037
  %82 = mul i64 %59, -2381459717836149591
  %83 = tail call i64 @llvm.fshl.i64(i64 %82, i64 %82, i64 31)
  %84 = mul i64 %83, -7046029288634856825
  %85 = xor i64 %81, %84
  %86 = mul i64 %85, -7046029288634856825
  %87 = add i64 %86, -8796714831421723037
  %88 = mul i64 %63, -2381459717836149591
  %89 = tail call i64 @llvm.fshl.i64(i64 %88, i64 %88, i64 31)
  %90 = mul i64 %89, -7046029288634856825
  %91 = xor i64 %87, %90
  %92 = mul i64 %91, -7046029288634856825
  %93 = add i64 %92, -8796714831421723037
  %94 = mul i64 %67, -2381459717836149591
  %95 = tail call i64 @llvm.fshl.i64(i64 %94, i64 %94, i64 31)
  %96 = mul i64 %95, -7046029288634856825
  %97 = xor i64 %93, %96
  %98 = mul i64 %97, -7046029288634856825
  %99 = add i64 %98, -8796714831421722941
  %100 = lshr i64 %99, 33
  %101 = xor i64 %100, %99
  %102 = mul i64 %101, -4417276706812531889
  %103 = lshr i64 %102, 29
  %104 = xor i64 %103, %102
  %105 = mul i64 %104, 1609587929392839161
  %106 = lshr i64 %105, 32
  %107 = xor i64 %106, %105
  ret i64 %107
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @target_s64_65_63(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16) local_unnamed_addr #3 {
  %18 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #5
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
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 88
  %35 = load i64, ptr %34, align 8
  %36 = mul i64 %35, -4417276706812531889
  %37 = getelementptr inbounds nuw i8, ptr %18, i64 56
  %38 = load i64, ptr %37, align 8
  %39 = mul i64 %38, -4417276706812531889
  %40 = getelementptr inbounds nuw i8, ptr %18, i64 24
  %41 = load i64, ptr %40, align 8
  %42 = mul i64 %41, -4417276706812531889
  %43 = add i64 %16, 7046029288634856825
  %44 = add i64 %42, %43
  %45 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 31)
  %46 = mul i64 %45, -7046029288634856825
  %47 = add i64 %39, %46
  %48 = tail call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 31)
  %49 = mul i64 %48, -7046029288634856825
  %50 = add i64 %36, %49
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 31)
  %52 = mul i64 %51, -7046029288634856825
  %53 = getelementptr inbounds nuw i8, ptr %18, i64 80
  %54 = load i64, ptr %53, align 16
  %55 = mul i64 %54, -4417276706812531889
  %56 = getelementptr inbounds nuw i8, ptr %18, i64 48
  %57 = load i64, ptr %56, align 16
  %58 = mul i64 %57, -4417276706812531889
  %59 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %60 = load i64, ptr %59, align 16
  %61 = mul i64 %60, -4417276706812531889
  %62 = add i64 %61, %16
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 31)
  %64 = mul i64 %63, -7046029288634856825
  %65 = add i64 %58, %64
  %66 = tail call i64 @llvm.fshl.i64(i64 %65, i64 %65, i64 31)
  %67 = mul i64 %66, -7046029288634856825
  %68 = add i64 %55, %67
  %69 = tail call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 31)
  %70 = mul i64 %69, -7046029288634856825
  %71 = getelementptr inbounds nuw i8, ptr %18, i64 72
  %72 = load i64, ptr %71, align 8
  %73 = mul i64 %72, -4417276706812531889
  %74 = getelementptr inbounds nuw i8, ptr %18, i64 40
  %75 = load i64, ptr %74, align 8
  %76 = mul i64 %75, -4417276706812531889
  %77 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %78 = load i64, ptr %77, align 8
  %79 = mul i64 %78, -4417276706812531889
  %80 = add i64 %16, -4417276706812531889
  %81 = add i64 %79, %80
  %82 = tail call i64 @llvm.fshl.i64(i64 %81, i64 %81, i64 31)
  %83 = mul i64 %82, -7046029288634856825
  %84 = add i64 %76, %83
  %85 = tail call i64 @llvm.fshl.i64(i64 %84, i64 %84, i64 31)
  %86 = mul i64 %85, -7046029288634856825
  %87 = add i64 %73, %86
  %88 = tail call i64 @llvm.fshl.i64(i64 %87, i64 %87, i64 31)
  %89 = mul i64 %88, -7046029288634856825
  %90 = getelementptr inbounds nuw i8, ptr %18, i64 65
  %91 = load i56, ptr %90, align 1
  %92 = zext i56 %91 to i64
  %93 = shl nuw i64 %92, 8
  %94 = getelementptr inbounds nuw i8, ptr %18, i64 64
  %95 = load i8, ptr %94, align 16
  %96 = zext i8 %95 to i64
  %97 = or disjoint i64 %93, %96
  %98 = mul i64 %97, -4417276706812531889
  %99 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %100 = load i64, ptr %99, align 16
  %101 = mul i64 %100, -4417276706812531889
  %102 = load i64, ptr %18, align 16
  %103 = mul i64 %102, -4417276706812531889
  %104 = add i64 %16, 6983438078262162902
  %105 = add i64 %103, %104
  %106 = tail call i64 @llvm.fshl.i64(i64 %105, i64 %105, i64 31)
  %107 = mul i64 %106, -7046029288634856825
  %108 = add i64 %101, %107
  %109 = tail call i64 @llvm.fshl.i64(i64 %108, i64 %108, i64 31)
  %110 = mul i64 %109, -7046029288634856825
  %111 = add i64 %98, %110
  %112 = tail call i64 @llvm.fshl.i64(i64 %111, i64 %111, i64 31)
  %113 = mul i64 %112, -7046029288634856825
  %114 = getelementptr inbounds nuw i8, ptr %18, i64 96
  %115 = load i64, ptr %114, align 16
  %116 = mul i64 %115, -4417276706812531889
  %117 = add i64 %116, %113
  %118 = tail call i64 @llvm.fshl.i64(i64 %117, i64 %117, i64 31)
  %119 = mul i64 %118, -7046029288634856825
  %120 = getelementptr inbounds nuw i8, ptr %18, i64 104
  %121 = load i64, ptr %120, align 8
  %122 = mul i64 %121, -4417276706812531889
  %123 = add i64 %122, %89
  %124 = tail call i64 @llvm.fshl.i64(i64 %123, i64 %123, i64 31)
  %125 = mul i64 %124, -7046029288634856825
  %126 = getelementptr inbounds nuw i8, ptr %18, i64 112
  %127 = load i64, ptr %126, align 16
  %128 = mul i64 %127, -4417276706812531889
  %129 = add i64 %128, %70
  %130 = tail call i64 @llvm.fshl.i64(i64 %129, i64 %129, i64 31)
  %131 = mul i64 %130, -7046029288634856825
  %132 = getelementptr inbounds nuw i8, ptr %18, i64 120
  %133 = load i64, ptr %132, align 8
  %134 = mul i64 %133, -4417276706812531889
  %135 = add i64 %134, %52
  %136 = tail call i64 @llvm.fshl.i64(i64 %135, i64 %135, i64 31)
  %137 = mul i64 %136, -7046029288634856825
  %138 = tail call i64 @llvm.fshl.i64(i64 %119, i64 %119, i64 1)
  %139 = tail call i64 @llvm.fshl.i64(i64 %125, i64 %125, i64 7)
  %140 = add i64 %139, %138
  %141 = tail call i64 @llvm.fshl.i64(i64 %131, i64 %131, i64 12)
  %142 = add i64 %140, %141
  %143 = tail call i64 @llvm.fshl.i64(i64 %137, i64 %137, i64 18)
  %144 = add i64 %142, %143
  %145 = mul i64 %119, -4417276706812531889
  %146 = tail call i64 @llvm.fshl.i64(i64 %145, i64 %145, i64 31)
  %147 = mul i64 %146, -7046029288634856825
  %148 = xor i64 %144, %147
  %149 = mul i64 %148, -7046029288634856825
  %150 = add i64 %149, -8796714831421723037
  %151 = mul i64 %125, -4417276706812531889
  %152 = tail call i64 @llvm.fshl.i64(i64 %151, i64 %151, i64 31)
  %153 = mul i64 %152, -7046029288634856825
  %154 = xor i64 %150, %153
  %155 = mul i64 %154, -7046029288634856825
  %156 = add i64 %155, -8796714831421723037
  %157 = mul i64 %131, -4417276706812531889
  %158 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 31)
  %159 = mul i64 %158, -7046029288634856825
  %160 = xor i64 %156, %159
  %161 = mul i64 %160, -7046029288634856825
  %162 = add i64 %161, -8796714831421723037
  %163 = mul i64 %137, -4417276706812531889
  %164 = tail call i64 @llvm.fshl.i64(i64 %163, i64 %163, i64 31)
  %165 = mul i64 %164, -7046029288634856825
  %166 = xor i64 %162, %165
  %167 = mul i64 %166, -7046029288634856825
  %168 = add i64 %167, -8796714831421722909
  %169 = lshr i64 %168, 33
  %170 = xor i64 %169, %168
  %171 = mul i64 %170, -4417276706812531889
  %172 = lshr i64 %171, 29
  %173 = xor i64 %172, %171
  %174 = mul i64 %173, 1609587929392839161
  %175 = lshr i64 %174, 32
  %176 = xor i64 %175, %174
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #5
  ret i64 %176
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
