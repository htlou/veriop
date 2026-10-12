; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/94e7193/wrapv_x86_o32.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/94e7193/wrapv_x86_o32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.XXH_INLINE_XXH32_state_s = type { i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len0(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
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
define dso_local i32 @target_xxh32_len3(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = trunc i64 %0 to i32
  %19 = and i32 %18, 255
  %20 = mul i32 %19, 374761393
  %21 = add i32 %20, 374761396
  %22 = add i32 %21, %16
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 11)
  %24 = mul i32 %23, -1640531535
  %25 = lshr i32 %18, 8
  %26 = and i32 %25, 255
  %27 = mul i32 %26, 374761393
  %28 = add i32 %24, %27
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 11)
  %30 = mul i32 %29, -1640531535
  %31 = lshr i32 %18, 16
  %32 = and i32 %31, 255
  %33 = mul i32 %32, 374761393
  %34 = add i32 %30, %33
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 11)
  %36 = mul i32 %35, -1640531535
  %37 = lshr i32 %36, 15
  %38 = xor i32 %37, %36
  %39 = mul i32 %38, -2048144777
  %40 = lshr i32 %39, 13
  %41 = xor i32 %40, %39
  %42 = mul i32 %41, -1028477379
  %43 = lshr i32 %42, 16
  %44 = xor i32 %43, %42
  ret i32 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len4(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = trunc i64 %0 to i32
  %19 = mul i32 %18, -1028477379
  %20 = add i32 %19, 374761397
  %21 = add i32 %20, %16
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 17)
  %23 = mul i32 %22, 668265263
  %24 = lshr i32 %23, 15
  %25 = xor i32 %24, %23
  %26 = mul i32 %25, -2048144777
  %27 = lshr i32 %26, 13
  %28 = xor i32 %27, %26
  %29 = mul i32 %28, -1028477379
  %30 = lshr i32 %29, 16
  %31 = xor i32 %30, %29
  ret i32 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len7(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = trunc i64 %0 to i32
  %19 = mul i32 %18, -1028477379
  %20 = add i32 %19, 374761400
  %21 = add i32 %20, %16
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 17)
  %23 = mul i32 %22, 668265263
  %24 = lshr i64 %0, 32
  %25 = trunc nuw i64 %24 to i32
  %26 = and i32 %25, 255
  %27 = mul i32 %26, 374761393
  %28 = add i32 %23, %27
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 11)
  %30 = mul i32 %29, -1640531535
  %31 = lshr i64 %0, 40
  %32 = trunc nuw nsw i64 %31 to i32
  %33 = and i32 %32, 255
  %34 = mul i32 %33, 374761393
  %35 = add i32 %30, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 11)
  %37 = mul i32 %36, -1640531535
  %38 = lshr i64 %0, 48
  %39 = trunc nuw nsw i64 %38 to i32
  %40 = and i32 %39, 255
  %41 = mul i32 %40, 374761393
  %42 = add i32 %37, %41
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 11)
  %44 = mul i32 %43, -1640531535
  %45 = lshr i32 %44, 15
  %46 = xor i32 %45, %44
  %47 = mul i32 %46, -2048144777
  %48 = lshr i32 %47, 13
  %49 = xor i32 %48, %47
  %50 = mul i32 %49, -1028477379
  %51 = lshr i32 %50, 16
  %52 = xor i32 %51, %50
  ret i32 %52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len15(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = trunc i64 %0 to i32
  %19 = mul i32 %18, -1028477379
  %20 = add i32 %19, 374761408
  %21 = add i32 %20, %16
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 17)
  %23 = mul i32 %22, 668265263
  %24 = lshr i64 %0, 32
  %25 = trunc nuw i64 %24 to i32
  %26 = mul i32 %25, -1028477379
  %27 = add i32 %23, %26
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 17)
  %29 = mul i32 %28, 668265263
  %30 = trunc i64 %1 to i32
  %31 = mul i32 %30, -1028477379
  %32 = add i32 %29, %31
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 17)
  %34 = mul i32 %33, 668265263
  %35 = lshr i64 %1, 32
  %36 = trunc nuw i64 %35 to i32
  %37 = and i32 %36, 255
  %38 = mul i32 %37, 374761393
  %39 = add i32 %34, %38
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 11)
  %41 = mul i32 %40, -1640531535
  %42 = lshr i64 %1, 40
  %43 = trunc nuw nsw i64 %42 to i32
  %44 = and i32 %43, 255
  %45 = mul i32 %44, 374761393
  %46 = add i32 %41, %45
  %47 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 11)
  %48 = mul i32 %47, -1640531535
  %49 = lshr i64 %1, 48
  %50 = trunc nuw nsw i64 %49 to i32
  %51 = and i32 %50, 255
  %52 = mul i32 %51, 374761393
  %53 = add i32 %48, %52
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

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_xxh32_len16(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
  %18 = add i32 %16, 606290984
  %19 = add i32 %16, -2048144777
  %20 = add i32 %16, 1640531535
  %21 = trunc i64 %0 to i32
  %22 = mul i32 %21, -2048144777
  %23 = add i32 %18, %22
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 13)
  %25 = mul i32 %24, -1640531535
  %26 = freeze i32 %25
  %27 = lshr i64 %0, 32
  %28 = trunc nuw i64 %27 to i32
  %29 = mul i32 %28, -2048144777
  %30 = add i32 %19, %29
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
  %43 = add i32 %20, %42
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 13)
  %45 = mul i32 %44, -1640531535
  %46 = freeze i32 %45
  %47 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 1)
  %48 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 7)
  %49 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 12)
  %50 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 18)
  %51 = add i32 %47, 16
  %52 = add i32 %51, %48
  %53 = add i32 %52, %49
  %54 = add i32 %53, %50
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

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_xxh32_len17(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
  %18 = add i32 %16, 606290984
  %19 = add i32 %16, -2048144777
  %20 = add i32 %16, 1640531535
  %21 = trunc i64 %0 to i32
  %22 = mul i32 %21, -2048144777
  %23 = add i32 %18, %22
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 13)
  %25 = mul i32 %24, -1640531535
  %26 = freeze i32 %25
  %27 = lshr i64 %0, 32
  %28 = trunc nuw i64 %27 to i32
  %29 = mul i32 %28, -2048144777
  %30 = add i32 %19, %29
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
  %43 = add i32 %20, %42
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 13)
  %45 = mul i32 %44, -1640531535
  %46 = freeze i32 %45
  %47 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 1)
  %48 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 7)
  %49 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 12)
  %50 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 18)
  %51 = trunc i64 %2 to i32
  %52 = and i32 %51, 255
  %53 = mul i32 %52, 374761393
  %54 = add i32 %47, 17
  %55 = add i32 %54, %48
  %56 = add i32 %55, %49
  %57 = add i32 %56, %50
  %58 = add i32 %57, %53
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

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_xxh32_len20(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
  %18 = add i32 %16, 606290984
  %19 = add i32 %16, -2048144777
  %20 = add i32 %16, 1640531535
  %21 = trunc i64 %0 to i32
  %22 = mul i32 %21, -2048144777
  %23 = add i32 %18, %22
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 13)
  %25 = mul i32 %24, -1640531535
  %26 = freeze i32 %25
  %27 = lshr i64 %0, 32
  %28 = trunc nuw i64 %27 to i32
  %29 = mul i32 %28, -2048144777
  %30 = add i32 %19, %29
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
  %43 = add i32 %20, %42
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 13)
  %45 = mul i32 %44, -1640531535
  %46 = freeze i32 %45
  %47 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 1)
  %48 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 7)
  %49 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 12)
  %50 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 18)
  %51 = trunc i64 %2 to i32
  %52 = mul i32 %51, -1028477379
  %53 = add i32 %47, 20
  %54 = add i32 %53, %48
  %55 = add i32 %54, %49
  %56 = add i32 %55, %50
  %57 = add i32 %56, %52
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 17)
  %59 = mul i32 %58, 668265263
  %60 = lshr i32 %59, 15
  %61 = xor i32 %60, %59
  %62 = mul i32 %61, -2048144777
  %63 = lshr i32 %62, 13
  %64 = xor i32 %63, %62
  %65 = mul i32 %64, -1028477379
  %66 = lshr i32 %65, 16
  %67 = xor i32 %66, %65
  ret i32 %67
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_xxh32_len31(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
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
  %47 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 1)
  %48 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 7)
  %49 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 12)
  %50 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 18)
  %51 = trunc i64 %2 to i32
  %52 = mul i32 %51, -1028477379
  %53 = add i32 %47, 31
  %54 = add i32 %53, %48
  %55 = add i32 %54, %49
  %56 = add i32 %55, %50
  %57 = add i32 %56, %52
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 17)
  %59 = mul i32 %58, 668265263
  %60 = lshr i64 %2, 32
  %61 = trunc nuw i64 %60 to i32
  %62 = mul i32 %61, -1028477379
  %63 = add i32 %59, %62
  %64 = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 17)
  %65 = mul i32 %64, 668265263
  %66 = trunc i64 %3 to i32
  %67 = mul i32 %66, -1028477379
  %68 = add i32 %65, %67
  %69 = tail call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 17)
  %70 = mul i32 %69, 668265263
  %71 = lshr i64 %3, 32
  %72 = trunc nuw i64 %71 to i32
  %73 = and i32 %72, 255
  %74 = mul i32 %73, 374761393
  %75 = add i32 %70, %74
  %76 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 11)
  %77 = mul i32 %76, -1640531535
  %78 = lshr i64 %3, 40
  %79 = trunc nuw nsw i64 %78 to i32
  %80 = and i32 %79, 255
  %81 = mul i32 %80, 374761393
  %82 = add i32 %77, %81
  %83 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 11)
  %84 = mul i32 %83, -1640531535
  %85 = lshr i64 %3, 48
  %86 = trunc nuw nsw i64 %85 to i32
  %87 = and i32 %86, 255
  %88 = mul i32 %87, 374761393
  %89 = add i32 %84, %88
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

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_xxh32_len32(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
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
  %47 = trunc i64 %2 to i32
  %48 = mul i32 %47, -2048144777
  %49 = add i32 %48, %26
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 13)
  %51 = mul i32 %50, -1640531535
  %52 = freeze i32 %51
  %53 = lshr i64 %2, 32
  %54 = trunc nuw i64 %53 to i32
  %55 = mul i32 %54, -2048144777
  %56 = add i32 %55, %33
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 13)
  %58 = mul i32 %57, -1640531535
  %59 = freeze i32 %58
  %60 = trunc i64 %3 to i32
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %61, %39
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13)
  %64 = mul i32 %63, -1640531535
  %65 = freeze i32 %64
  %66 = lshr i64 %3, 32
  %67 = trunc nuw i64 %66 to i32
  %68 = mul i32 %67, -2048144777
  %69 = add i32 %68, %46
  %70 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 13)
  %71 = mul i32 %70, -1640531535
  %72 = freeze i32 %71
  %73 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 1)
  %74 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 7)
  %75 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 12)
  %76 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 18)
  %77 = add i32 %73, 32
  %78 = add i32 %77, %74
  %79 = add i32 %78, %75
  %80 = add i32 %79, %76
  %81 = lshr i32 %80, 15
  %82 = xor i32 %81, %80
  %83 = mul i32 %82, -2048144777
  %84 = lshr i32 %83, 13
  %85 = xor i32 %84, %83
  %86 = mul i32 %85, -1028477379
  %87 = lshr i32 %86, 16
  %88 = xor i32 %87, %86
  ret i32 %88
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_xxh32_len47(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
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
  %47 = trunc i64 %2 to i32
  %48 = mul i32 %47, -2048144777
  %49 = add i32 %48, %26
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 13)
  %51 = mul i32 %50, -1640531535
  %52 = freeze i32 %51
  %53 = lshr i64 %2, 32
  %54 = trunc nuw i64 %53 to i32
  %55 = mul i32 %54, -2048144777
  %56 = add i32 %55, %33
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 13)
  %58 = mul i32 %57, -1640531535
  %59 = freeze i32 %58
  %60 = trunc i64 %3 to i32
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %61, %39
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13)
  %64 = mul i32 %63, -1640531535
  %65 = freeze i32 %64
  %66 = lshr i64 %3, 32
  %67 = trunc nuw i64 %66 to i32
  %68 = mul i32 %67, -2048144777
  %69 = add i32 %68, %46
  %70 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 13)
  %71 = mul i32 %70, -1640531535
  %72 = freeze i32 %71
  %73 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 1)
  %74 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 7)
  %75 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 12)
  %76 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 18)
  %77 = trunc i64 %4 to i32
  %78 = mul i32 %77, -1028477379
  %79 = add i32 %73, 47
  %80 = add i32 %79, %74
  %81 = add i32 %80, %75
  %82 = add i32 %81, %76
  %83 = add i32 %82, %78
  %84 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 17)
  %85 = mul i32 %84, 668265263
  %86 = lshr i64 %4, 32
  %87 = trunc nuw i64 %86 to i32
  %88 = mul i32 %87, -1028477379
  %89 = add i32 %85, %88
  %90 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 17)
  %91 = mul i32 %90, 668265263
  %92 = trunc i64 %5 to i32
  %93 = mul i32 %92, -1028477379
  %94 = add i32 %91, %93
  %95 = tail call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 17)
  %96 = mul i32 %95, 668265263
  %97 = lshr i64 %5, 32
  %98 = trunc nuw i64 %97 to i32
  %99 = and i32 %98, 255
  %100 = mul i32 %99, 374761393
  %101 = add i32 %96, %100
  %102 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 11)
  %103 = mul i32 %102, -1640531535
  %104 = lshr i64 %5, 40
  %105 = trunc nuw nsw i64 %104 to i32
  %106 = and i32 %105, 255
  %107 = mul i32 %106, 374761393
  %108 = add i32 %103, %107
  %109 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 11)
  %110 = mul i32 %109, -1640531535
  %111 = lshr i64 %5, 48
  %112 = trunc nuw nsw i64 %111 to i32
  %113 = and i32 %112, 255
  %114 = mul i32 %113, 374761393
  %115 = add i32 %110, %114
  %116 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 11)
  %117 = mul i32 %116, -1640531535
  %118 = lshr i32 %117, 15
  %119 = xor i32 %118, %117
  %120 = mul i32 %119, -2048144777
  %121 = lshr i32 %120, 13
  %122 = xor i32 %121, %120
  %123 = mul i32 %122, -1028477379
  %124 = lshr i32 %123, 16
  %125 = xor i32 %124, %123
  ret i32 %125
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_xxh32_len63(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
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
  %47 = trunc i64 %2 to i32
  %48 = mul i32 %47, -2048144777
  %49 = add i32 %48, %26
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 13)
  %51 = mul i32 %50, -1640531535
  %52 = freeze i32 %51
  %53 = lshr i64 %2, 32
  %54 = trunc nuw i64 %53 to i32
  %55 = mul i32 %54, -2048144777
  %56 = add i32 %55, %33
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 13)
  %58 = mul i32 %57, -1640531535
  %59 = freeze i32 %58
  %60 = trunc i64 %3 to i32
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %61, %39
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13)
  %64 = mul i32 %63, -1640531535
  %65 = freeze i32 %64
  %66 = lshr i64 %3, 32
  %67 = trunc nuw i64 %66 to i32
  %68 = mul i32 %67, -2048144777
  %69 = add i32 %68, %46
  %70 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 13)
  %71 = mul i32 %70, -1640531535
  %72 = freeze i32 %71
  %73 = trunc i64 %4 to i32
  %74 = mul i32 %73, -2048144777
  %75 = add i32 %74, %52
  %76 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 13)
  %77 = mul i32 %76, -1640531535
  %78 = freeze i32 %77
  %79 = lshr i64 %4, 32
  %80 = trunc nuw i64 %79 to i32
  %81 = mul i32 %80, -2048144777
  %82 = add i32 %81, %59
  %83 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 13)
  %84 = mul i32 %83, -1640531535
  %85 = freeze i32 %84
  %86 = trunc i64 %5 to i32
  %87 = mul i32 %86, -2048144777
  %88 = add i32 %87, %65
  %89 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 13)
  %90 = mul i32 %89, -1640531535
  %91 = freeze i32 %90
  %92 = lshr i64 %5, 32
  %93 = trunc nuw i64 %92 to i32
  %94 = mul i32 %93, -2048144777
  %95 = add i32 %94, %72
  %96 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 13)
  %97 = mul i32 %96, -1640531535
  %98 = freeze i32 %97
  %99 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 1)
  %100 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 7)
  %101 = tail call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 12)
  %102 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 18)
  %103 = trunc i64 %6 to i32
  %104 = mul i32 %103, -1028477379
  %105 = add i32 %99, 63
  %106 = add i32 %105, %100
  %107 = add i32 %106, %101
  %108 = add i32 %107, %102
  %109 = add i32 %108, %104
  %110 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 17)
  %111 = mul i32 %110, 668265263
  %112 = lshr i64 %6, 32
  %113 = trunc nuw i64 %112 to i32
  %114 = mul i32 %113, -1028477379
  %115 = add i32 %111, %114
  %116 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 17)
  %117 = mul i32 %116, 668265263
  %118 = trunc i64 %7 to i32
  %119 = mul i32 %118, -1028477379
  %120 = add i32 %117, %119
  %121 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 17)
  %122 = mul i32 %121, 668265263
  %123 = lshr i64 %7, 32
  %124 = trunc nuw i64 %123 to i32
  %125 = and i32 %124, 255
  %126 = mul i32 %125, 374761393
  %127 = add i32 %122, %126
  %128 = tail call i32 @llvm.fshl.i32(i32 %127, i32 %127, i32 11)
  %129 = mul i32 %128, -1640531535
  %130 = lshr i64 %7, 40
  %131 = trunc nuw nsw i64 %130 to i32
  %132 = and i32 %131, 255
  %133 = mul i32 %132, 374761393
  %134 = add i32 %129, %133
  %135 = tail call i32 @llvm.fshl.i32(i32 %134, i32 %134, i32 11)
  %136 = mul i32 %135, -1640531535
  %137 = lshr i64 %7, 48
  %138 = trunc nuw nsw i64 %137 to i32
  %139 = and i32 %138, 255
  %140 = mul i32 %139, 374761393
  %141 = add i32 %136, %140
  %142 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 11)
  %143 = mul i32 %142, -1640531535
  %144 = lshr i32 %143, 15
  %145 = xor i32 %144, %143
  %146 = mul i32 %145, -2048144777
  %147 = lshr i32 %146, 13
  %148 = xor i32 %147, %146
  %149 = mul i32 %148, -1028477379
  %150 = lshr i32 %149, 16
  %151 = xor i32 %150, %149
  ret i32 %151
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_xxh32_len64(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
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
  %47 = trunc i64 %2 to i32
  %48 = mul i32 %47, -2048144777
  %49 = add i32 %48, %26
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 13)
  %51 = mul i32 %50, -1640531535
  %52 = freeze i32 %51
  %53 = lshr i64 %2, 32
  %54 = trunc nuw i64 %53 to i32
  %55 = mul i32 %54, -2048144777
  %56 = add i32 %55, %33
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 13)
  %58 = mul i32 %57, -1640531535
  %59 = freeze i32 %58
  %60 = trunc i64 %3 to i32
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %61, %39
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13)
  %64 = mul i32 %63, -1640531535
  %65 = freeze i32 %64
  %66 = lshr i64 %3, 32
  %67 = trunc nuw i64 %66 to i32
  %68 = mul i32 %67, -2048144777
  %69 = add i32 %68, %46
  %70 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 13)
  %71 = mul i32 %70, -1640531535
  %72 = freeze i32 %71
  %73 = trunc i64 %4 to i32
  %74 = mul i32 %73, -2048144777
  %75 = add i32 %74, %52
  %76 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 13)
  %77 = mul i32 %76, -1640531535
  %78 = freeze i32 %77
  %79 = lshr i64 %4, 32
  %80 = trunc nuw i64 %79 to i32
  %81 = mul i32 %80, -2048144777
  %82 = add i32 %81, %59
  %83 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 13)
  %84 = mul i32 %83, -1640531535
  %85 = freeze i32 %84
  %86 = trunc i64 %5 to i32
  %87 = mul i32 %86, -2048144777
  %88 = add i32 %87, %65
  %89 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 13)
  %90 = mul i32 %89, -1640531535
  %91 = freeze i32 %90
  %92 = lshr i64 %5, 32
  %93 = trunc nuw i64 %92 to i32
  %94 = mul i32 %93, -2048144777
  %95 = add i32 %94, %72
  %96 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 13)
  %97 = mul i32 %96, -1640531535
  %98 = freeze i32 %97
  %99 = trunc i64 %6 to i32
  %100 = mul i32 %99, -2048144777
  %101 = add i32 %100, %78
  %102 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 13)
  %103 = mul i32 %102, -1640531535
  %104 = freeze i32 %103
  %105 = lshr i64 %6, 32
  %106 = trunc nuw i64 %105 to i32
  %107 = mul i32 %106, -2048144777
  %108 = add i32 %107, %85
  %109 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 13)
  %110 = mul i32 %109, -1640531535
  %111 = freeze i32 %110
  %112 = trunc i64 %7 to i32
  %113 = mul i32 %112, -2048144777
  %114 = add i32 %113, %91
  %115 = tail call i32 @llvm.fshl.i32(i32 %114, i32 %114, i32 13)
  %116 = mul i32 %115, -1640531535
  %117 = freeze i32 %116
  %118 = lshr i64 %7, 32
  %119 = trunc nuw i64 %118 to i32
  %120 = mul i32 %119, -2048144777
  %121 = add i32 %120, %98
  %122 = tail call i32 @llvm.fshl.i32(i32 %121, i32 %121, i32 13)
  %123 = mul i32 %122, -1640531535
  %124 = freeze i32 %123
  %125 = tail call i32 @llvm.fshl.i32(i32 %104, i32 %104, i32 1)
  %126 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 7)
  %127 = tail call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 12)
  %128 = tail call i32 @llvm.fshl.i32(i32 %124, i32 %124, i32 18)
  %129 = add i32 %125, 64
  %130 = add i32 %129, %126
  %131 = add i32 %130, %127
  %132 = add i32 %131, %128
  %133 = lshr i32 %132, 15
  %134 = xor i32 %133, %132
  %135 = mul i32 %134, -2048144777
  %136 = lshr i32 %135, 13
  %137 = xor i32 %136, %135
  %138 = mul i32 %137, -1028477379
  %139 = lshr i32 %138, 16
  %140 = xor i32 %139, %138
  ret i32 %140
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @target_s32_7_8(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #4 {
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

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_s32_10_10(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_INLINE_XXH32_state_s, align 8
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
  %75 = icmp ult i32 %74, 10
  br i1 %75, label %85, label %76

76:                                               ; preds = %17
  %77 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 7)
  %78 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 1)
  %79 = add i32 %77, %78
  %80 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 12)
  %81 = add i32 %79, %80
  %82 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 18)
  %83 = add i32 %81, %82
  %84 = add i32 %83, 20
  br label %251

85:                                               ; preds = %17
  %86 = getelementptr inbounds nuw i8, ptr %18, i64 20
  %87 = zext nneg i32 %74 to i64
  %88 = getelementptr inbounds nuw i8, ptr %18, i64 %87
  %89 = getelementptr inbounds nuw i8, ptr %88, i64 10
  %90 = ptrtoint ptr %86 to i64
  %91 = ptrtoint ptr %89 to i64
  %92 = sub i64 %90, %91
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %89, i64 %92, i1 false)
  %93 = trunc i64 %92 to i32
  store i32 %93, ptr %44, align 8
  %94 = and i32 %93, 15
  %95 = call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 7)
  %96 = call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 1)
  %97 = add i32 %95, %96
  %98 = call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 12)
  %99 = add i32 %97, %98
  %100 = call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 18)
  %101 = add i32 %99, %100
  %102 = add i32 %101, 20
  switch i32 %94, label %250 [
    i32 12, label %103
    i32 8, label %110
    i32 4, label %119
    i32 13, label %127
    i32 9, label %134
    i32 5, label %143
    i32 14, label %158
    i32 10, label %165
    i32 6, label %174
    i32 15, label %196
    i32 11, label %203
    i32 7, label %212
    i32 3, label %221
    i32 2, label %231
    i32 1, label %241
    i32 0, label %251
  ]

103:                                              ; preds = %85
  %104 = load i32, ptr %42, align 8
  %105 = mul i32 %104, -1028477379
  %106 = add i32 %105, %102
  %107 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %108 = call i32 @llvm.fshl.i32(i32 %106, i32 %106, i32 17)
  %109 = mul i32 %108, 668265263
  br label %110

110:                                              ; preds = %103, %85
  %111 = phi ptr [ %42, %85 ], [ %107, %103 ]
  %112 = phi i32 [ %102, %85 ], [ %109, %103 ]
  %113 = load i32, ptr %111, align 1
  %114 = mul i32 %113, -1028477379
  %115 = add i32 %114, %112
  %116 = getelementptr inbounds nuw i8, ptr %111, i64 4
  %117 = call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 17)
  %118 = mul i32 %117, 668265263
  br label %119

119:                                              ; preds = %110, %85
  %120 = phi ptr [ %42, %85 ], [ %116, %110 ]
  %121 = phi i32 [ %102, %85 ], [ %118, %110 ]
  %122 = load i32, ptr %120, align 1
  %123 = mul i32 %122, -1028477379
  %124 = add i32 %123, %121
  %125 = call i32 @llvm.fshl.i32(i32 %124, i32 %124, i32 17)
  %126 = mul i32 %125, 668265263
  br label %251

127:                                              ; preds = %85
  %128 = load i32, ptr %42, align 8
  %129 = mul i32 %128, -1028477379
  %130 = add i32 %129, %102
  %131 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %132 = call i32 @llvm.fshl.i32(i32 %130, i32 %130, i32 17)
  %133 = mul i32 %132, 668265263
  br label %134

134:                                              ; preds = %127, %85
  %135 = phi ptr [ %42, %85 ], [ %131, %127 ]
  %136 = phi i32 [ %102, %85 ], [ %133, %127 ]
  %137 = load i32, ptr %135, align 1
  %138 = mul i32 %137, -1028477379
  %139 = add i32 %138, %136
  %140 = getelementptr inbounds nuw i8, ptr %135, i64 4
  %141 = call i32 @llvm.fshl.i32(i32 %139, i32 %139, i32 17)
  %142 = mul i32 %141, 668265263
  br label %143

143:                                              ; preds = %134, %85
  %144 = phi ptr [ %42, %85 ], [ %140, %134 ]
  %145 = phi i32 [ %102, %85 ], [ %142, %134 ]
  %146 = load i32, ptr %144, align 1
  %147 = mul i32 %146, -1028477379
  %148 = add i32 %147, %145
  %149 = getelementptr inbounds nuw i8, ptr %144, i64 4
  %150 = call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 17)
  %151 = mul i32 %150, 668265263
  %152 = load i8, ptr %149, align 1
  %153 = zext i8 %152 to i32
  %154 = mul i32 %153, 374761393
  %155 = add i32 %151, %154
  %156 = call i32 @llvm.fshl.i32(i32 %155, i32 %155, i32 11)
  %157 = mul i32 %156, -1640531535
  br label %251

158:                                              ; preds = %85
  %159 = load i32, ptr %42, align 8
  %160 = mul i32 %159, -1028477379
  %161 = add i32 %160, %102
  %162 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %163 = call i32 @llvm.fshl.i32(i32 %161, i32 %161, i32 17)
  %164 = mul i32 %163, 668265263
  br label %165

165:                                              ; preds = %158, %85
  %166 = phi ptr [ %42, %85 ], [ %162, %158 ]
  %167 = phi i32 [ %102, %85 ], [ %164, %158 ]
  %168 = load i32, ptr %166, align 1
  %169 = mul i32 %168, -1028477379
  %170 = add i32 %169, %167
  %171 = getelementptr inbounds nuw i8, ptr %166, i64 4
  %172 = call i32 @llvm.fshl.i32(i32 %170, i32 %170, i32 17)
  %173 = mul i32 %172, 668265263
  br label %174

174:                                              ; preds = %165, %85
  %175 = phi ptr [ %42, %85 ], [ %171, %165 ]
  %176 = phi i32 [ %102, %85 ], [ %173, %165 ]
  %177 = load i32, ptr %175, align 1
  %178 = mul i32 %177, -1028477379
  %179 = add i32 %178, %176
  %180 = getelementptr inbounds nuw i8, ptr %175, i64 4
  %181 = call i32 @llvm.fshl.i32(i32 %179, i32 %179, i32 17)
  %182 = mul i32 %181, 668265263
  %183 = getelementptr inbounds nuw i8, ptr %175, i64 5
  %184 = load i8, ptr %180, align 1
  %185 = zext i8 %184 to i32
  %186 = mul i32 %185, 374761393
  %187 = add i32 %182, %186
  %188 = call i32 @llvm.fshl.i32(i32 %187, i32 %187, i32 11)
  %189 = mul i32 %188, -1640531535
  %190 = load i8, ptr %183, align 1
  %191 = zext i8 %190 to i32
  %192 = mul i32 %191, 374761393
  %193 = add i32 %189, %192
  %194 = call i32 @llvm.fshl.i32(i32 %193, i32 %193, i32 11)
  %195 = mul i32 %194, -1640531535
  br label %251

196:                                              ; preds = %85
  %197 = load i32, ptr %42, align 8
  %198 = mul i32 %197, -1028477379
  %199 = add i32 %198, %102
  %200 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %201 = call i32 @llvm.fshl.i32(i32 %199, i32 %199, i32 17)
  %202 = mul i32 %201, 668265263
  br label %203

203:                                              ; preds = %196, %85
  %204 = phi ptr [ %42, %85 ], [ %200, %196 ]
  %205 = phi i32 [ %102, %85 ], [ %202, %196 ]
  %206 = load i32, ptr %204, align 1
  %207 = mul i32 %206, -1028477379
  %208 = add i32 %207, %205
  %209 = getelementptr inbounds nuw i8, ptr %204, i64 4
  %210 = call i32 @llvm.fshl.i32(i32 %208, i32 %208, i32 17)
  %211 = mul i32 %210, 668265263
  br label %212

212:                                              ; preds = %203, %85
  %213 = phi ptr [ %42, %85 ], [ %209, %203 ]
  %214 = phi i32 [ %102, %85 ], [ %211, %203 ]
  %215 = load i32, ptr %213, align 1
  %216 = mul i32 %215, -1028477379
  %217 = add i32 %216, %214
  %218 = getelementptr inbounds nuw i8, ptr %213, i64 4
  %219 = call i32 @llvm.fshl.i32(i32 %217, i32 %217, i32 17)
  %220 = mul i32 %219, 668265263
  br label %221

221:                                              ; preds = %212, %85
  %222 = phi ptr [ %42, %85 ], [ %218, %212 ]
  %223 = phi i32 [ %102, %85 ], [ %220, %212 ]
  %224 = getelementptr inbounds nuw i8, ptr %222, i64 1
  %225 = load i8, ptr %222, align 1
  %226 = zext i8 %225 to i32
  %227 = mul i32 %226, 374761393
  %228 = add i32 %227, %223
  %229 = call i32 @llvm.fshl.i32(i32 %228, i32 %228, i32 11)
  %230 = mul i32 %229, -1640531535
  br label %231

231:                                              ; preds = %221, %85
  %232 = phi ptr [ %42, %85 ], [ %224, %221 ]
  %233 = phi i32 [ %102, %85 ], [ %230, %221 ]
  %234 = getelementptr inbounds nuw i8, ptr %232, i64 1
  %235 = load i8, ptr %232, align 1
  %236 = zext i8 %235 to i32
  %237 = mul i32 %236, 374761393
  %238 = add i32 %237, %233
  %239 = call i32 @llvm.fshl.i32(i32 %238, i32 %238, i32 11)
  %240 = mul i32 %239, -1640531535
  br label %241

241:                                              ; preds = %231, %85
  %242 = phi ptr [ %42, %85 ], [ %234, %231 ]
  %243 = phi i32 [ %102, %85 ], [ %240, %231 ]
  %244 = load i8, ptr %242, align 1
  %245 = zext i8 %244 to i32
  %246 = mul i32 %245, 374761393
  %247 = add i32 %246, %243
  %248 = call i32 @llvm.fshl.i32(i32 %247, i32 %247, i32 11)
  %249 = mul i32 %248, -1640531535
  br label %251

250:                                              ; preds = %85
  unreachable

251:                                              ; preds = %76, %85, %119, %143, %174, %241
  %252 = phi i32 [ %195, %174 ], [ %157, %143 ], [ %126, %119 ], [ %102, %85 ], [ %249, %241 ], [ %84, %76 ]
  %253 = lshr i32 %252, 15
  %254 = xor i32 %253, %252
  %255 = mul i32 %254, -2048144777
  %256 = lshr i32 %255, 13
  %257 = xor i32 %256, %255
  %258 = mul i32 %257, -1028477379
  %259 = lshr i32 %258, 16
  %260 = xor i32 %259, %258
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #7
  ret i32 %260
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_s32_3_20(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
  %18 = add i32 %16, 606290984
  %19 = add i32 %16, -2048144777
  %20 = add i32 %16, 1640531535
  %21 = trunc i64 %0 to i32
  %22 = and i32 %21, 16777215
  %23 = trunc i64 %0 to i32
  %24 = and i32 %23, -16777216
  %25 = or disjoint i32 %22, %24
  %26 = lshr i64 %0, 32
  %27 = trunc nuw i64 %26 to i32
  %28 = trunc i64 %1 to i32
  %29 = lshr i64 %1, 32
  %30 = trunc nuw i64 %29 to i32
  %31 = mul i32 %25, -2048144777
  %32 = add i32 %31, %18
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 13)
  %34 = mul i32 %33, -1640531535
  %35 = freeze i32 %34
  %36 = lshr i64 %0, 32
  %37 = trunc nuw i64 %36 to i32
  %38 = and i32 %37, -16777216
  %39 = lshr i64 %0, 32
  %40 = trunc nuw i64 %39 to i32
  %41 = and i32 %40, 16711680
  %42 = or disjoint i32 %38, %41
  %43 = lshr i64 %0, 32
  %44 = trunc nuw i64 %43 to i32
  %45 = and i32 %44, 65280
  %46 = or disjoint i32 %42, %45
  %47 = and i32 %27, 255
  %48 = or disjoint i32 %46, %47
  %49 = mul i32 %48, -2048144777
  %50 = add i32 %49, %19
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 13)
  %52 = mul i32 %51, -1640531535
  %53 = freeze i32 %52
  %54 = mul i32 %28, -2048144777
  %55 = add i32 %54, %16
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 13)
  %57 = mul i32 %56, -1640531535
  %58 = freeze i32 %57
  %59 = mul i32 %30, -2048144777
  %60 = add i32 %59, %20
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 13)
  %62 = mul i32 %61, -1640531535
  %63 = freeze i32 %62
  %64 = trunc i64 %2 to i32
  %65 = lshr i64 %2, 32
  %66 = trunc nuw i64 %65 to i32
  %67 = lshr i64 %2, 40
  %68 = trunc nuw nsw i64 %67 to i32
  %69 = lshr i64 %2, 48
  %70 = trunc nuw nsw i64 %69 to i32
  %71 = and i32 %70, 255
  %72 = mul i32 %71, 374761393
  %73 = and i32 %68, 255
  %74 = mul i32 %73, 374761393
  %75 = and i32 %66, 255
  %76 = mul i32 %75, 374761393
  %77 = mul i32 %64, -1028477379
  %78 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 1)
  %79 = add i32 %78, 23
  %80 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 7)
  %81 = add i32 %79, %80
  %82 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 12)
  %83 = add i32 %81, %82
  %84 = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 18)
  %85 = add i32 %83, %84
  %86 = add i32 %77, %85
  %87 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 17)
  %88 = mul i32 %87, 668265263
  %89 = add i32 %76, %88
  %90 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 11)
  %91 = mul i32 %90, -1640531535
  %92 = add i32 %74, %91
  %93 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 11)
  %94 = mul i32 %93, -1640531535
  %95 = add i32 %72, %94
  %96 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 11)
  %97 = mul i32 %96, -1640531535
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

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @target_s32_20_13(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_INLINE_XXH32_state_s, align 8
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
  %103 = icmp ult i32 %102, 13
  br i1 %103, label %113, label %104

104:                                              ; preds = %17
  %105 = tail call i32 @llvm.fshl.i32(i32 %79, i32 %79, i32 1)
  %106 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 7)
  %107 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 12)
  %108 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 18)
  %109 = add i32 %105, 33
  %110 = add i32 %109, %106
  %111 = add i32 %110, %107
  %112 = add i32 %111, %108
  br label %279

113:                                              ; preds = %17
  %114 = getelementptr inbounds nuw i8, ptr %18, i64 33
  %115 = zext nneg i32 %102 to i64
  %116 = getelementptr inbounds nuw i8, ptr %18, i64 %115
  %117 = getelementptr inbounds nuw i8, ptr %116, i64 20
  %118 = ptrtoint ptr %114 to i64
  %119 = ptrtoint ptr %117 to i64
  %120 = sub i64 %118, %119
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %117, i64 %120, i1 false)
  %121 = trunc i64 %120 to i32
  store i32 %121, ptr %44, align 8
  %122 = and i32 %121, 15
  %123 = call i32 @llvm.fshl.i32(i32 %79, i32 %79, i32 1)
  %124 = call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 7)
  %125 = call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 12)
  %126 = call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 18)
  %127 = add i32 %123, 33
  %128 = add i32 %127, %124
  %129 = add i32 %128, %125
  %130 = add i32 %129, %126
  switch i32 %122, label %278 [
    i32 12, label %131
    i32 8, label %138
    i32 4, label %147
    i32 13, label %155
    i32 9, label %162
    i32 5, label %171
    i32 14, label %186
    i32 10, label %193
    i32 6, label %202
    i32 15, label %224
    i32 11, label %231
    i32 7, label %240
    i32 3, label %249
    i32 2, label %259
    i32 1, label %269
    i32 0, label %279
  ]

131:                                              ; preds = %113
  %132 = load i32, ptr %42, align 8
  %133 = mul i32 %132, -1028477379
  %134 = add i32 %133, %130
  %135 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %136 = call i32 @llvm.fshl.i32(i32 %134, i32 %134, i32 17)
  %137 = mul i32 %136, 668265263
  br label %138

138:                                              ; preds = %131, %113
  %139 = phi ptr [ %42, %113 ], [ %135, %131 ]
  %140 = phi i32 [ %130, %113 ], [ %137, %131 ]
  %141 = load i32, ptr %139, align 1
  %142 = mul i32 %141, -1028477379
  %143 = add i32 %142, %140
  %144 = getelementptr inbounds nuw i8, ptr %139, i64 4
  %145 = call i32 @llvm.fshl.i32(i32 %143, i32 %143, i32 17)
  %146 = mul i32 %145, 668265263
  br label %147

147:                                              ; preds = %138, %113
  %148 = phi ptr [ %42, %113 ], [ %144, %138 ]
  %149 = phi i32 [ %130, %113 ], [ %146, %138 ]
  %150 = load i32, ptr %148, align 1
  %151 = mul i32 %150, -1028477379
  %152 = add i32 %151, %149
  %153 = call i32 @llvm.fshl.i32(i32 %152, i32 %152, i32 17)
  %154 = mul i32 %153, 668265263
  br label %279

155:                                              ; preds = %113
  %156 = load i32, ptr %42, align 8
  %157 = mul i32 %156, -1028477379
  %158 = add i32 %157, %130
  %159 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %160 = call i32 @llvm.fshl.i32(i32 %158, i32 %158, i32 17)
  %161 = mul i32 %160, 668265263
  br label %162

162:                                              ; preds = %155, %113
  %163 = phi ptr [ %42, %113 ], [ %159, %155 ]
  %164 = phi i32 [ %130, %113 ], [ %161, %155 ]
  %165 = load i32, ptr %163, align 1
  %166 = mul i32 %165, -1028477379
  %167 = add i32 %166, %164
  %168 = getelementptr inbounds nuw i8, ptr %163, i64 4
  %169 = call i32 @llvm.fshl.i32(i32 %167, i32 %167, i32 17)
  %170 = mul i32 %169, 668265263
  br label %171

171:                                              ; preds = %162, %113
  %172 = phi ptr [ %42, %113 ], [ %168, %162 ]
  %173 = phi i32 [ %130, %113 ], [ %170, %162 ]
  %174 = load i32, ptr %172, align 1
  %175 = mul i32 %174, -1028477379
  %176 = add i32 %175, %173
  %177 = getelementptr inbounds nuw i8, ptr %172, i64 4
  %178 = call i32 @llvm.fshl.i32(i32 %176, i32 %176, i32 17)
  %179 = mul i32 %178, 668265263
  %180 = load i8, ptr %177, align 1
  %181 = zext i8 %180 to i32
  %182 = mul i32 %181, 374761393
  %183 = add i32 %179, %182
  %184 = call i32 @llvm.fshl.i32(i32 %183, i32 %183, i32 11)
  %185 = mul i32 %184, -1640531535
  br label %279

186:                                              ; preds = %113
  %187 = load i32, ptr %42, align 8
  %188 = mul i32 %187, -1028477379
  %189 = add i32 %188, %130
  %190 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %191 = call i32 @llvm.fshl.i32(i32 %189, i32 %189, i32 17)
  %192 = mul i32 %191, 668265263
  br label %193

193:                                              ; preds = %186, %113
  %194 = phi ptr [ %42, %113 ], [ %190, %186 ]
  %195 = phi i32 [ %130, %113 ], [ %192, %186 ]
  %196 = load i32, ptr %194, align 1
  %197 = mul i32 %196, -1028477379
  %198 = add i32 %197, %195
  %199 = getelementptr inbounds nuw i8, ptr %194, i64 4
  %200 = call i32 @llvm.fshl.i32(i32 %198, i32 %198, i32 17)
  %201 = mul i32 %200, 668265263
  br label %202

202:                                              ; preds = %193, %113
  %203 = phi ptr [ %42, %113 ], [ %199, %193 ]
  %204 = phi i32 [ %130, %113 ], [ %201, %193 ]
  %205 = load i32, ptr %203, align 1
  %206 = mul i32 %205, -1028477379
  %207 = add i32 %206, %204
  %208 = getelementptr inbounds nuw i8, ptr %203, i64 4
  %209 = call i32 @llvm.fshl.i32(i32 %207, i32 %207, i32 17)
  %210 = mul i32 %209, 668265263
  %211 = getelementptr inbounds nuw i8, ptr %203, i64 5
  %212 = load i8, ptr %208, align 1
  %213 = zext i8 %212 to i32
  %214 = mul i32 %213, 374761393
  %215 = add i32 %210, %214
  %216 = call i32 @llvm.fshl.i32(i32 %215, i32 %215, i32 11)
  %217 = mul i32 %216, -1640531535
  %218 = load i8, ptr %211, align 1
  %219 = zext i8 %218 to i32
  %220 = mul i32 %219, 374761393
  %221 = add i32 %217, %220
  %222 = call i32 @llvm.fshl.i32(i32 %221, i32 %221, i32 11)
  %223 = mul i32 %222, -1640531535
  br label %279

224:                                              ; preds = %113
  %225 = load i32, ptr %42, align 8
  %226 = mul i32 %225, -1028477379
  %227 = add i32 %226, %130
  %228 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %229 = call i32 @llvm.fshl.i32(i32 %227, i32 %227, i32 17)
  %230 = mul i32 %229, 668265263
  br label %231

231:                                              ; preds = %224, %113
  %232 = phi ptr [ %42, %113 ], [ %228, %224 ]
  %233 = phi i32 [ %130, %113 ], [ %230, %224 ]
  %234 = load i32, ptr %232, align 1
  %235 = mul i32 %234, -1028477379
  %236 = add i32 %235, %233
  %237 = getelementptr inbounds nuw i8, ptr %232, i64 4
  %238 = call i32 @llvm.fshl.i32(i32 %236, i32 %236, i32 17)
  %239 = mul i32 %238, 668265263
  br label %240

240:                                              ; preds = %231, %113
  %241 = phi ptr [ %42, %113 ], [ %237, %231 ]
  %242 = phi i32 [ %130, %113 ], [ %239, %231 ]
  %243 = load i32, ptr %241, align 1
  %244 = mul i32 %243, -1028477379
  %245 = add i32 %244, %242
  %246 = getelementptr inbounds nuw i8, ptr %241, i64 4
  %247 = call i32 @llvm.fshl.i32(i32 %245, i32 %245, i32 17)
  %248 = mul i32 %247, 668265263
  br label %249

249:                                              ; preds = %240, %113
  %250 = phi ptr [ %42, %113 ], [ %246, %240 ]
  %251 = phi i32 [ %130, %113 ], [ %248, %240 ]
  %252 = getelementptr inbounds nuw i8, ptr %250, i64 1
  %253 = load i8, ptr %250, align 1
  %254 = zext i8 %253 to i32
  %255 = mul i32 %254, 374761393
  %256 = add i32 %255, %251
  %257 = call i32 @llvm.fshl.i32(i32 %256, i32 %256, i32 11)
  %258 = mul i32 %257, -1640531535
  br label %259

259:                                              ; preds = %249, %113
  %260 = phi ptr [ %42, %113 ], [ %252, %249 ]
  %261 = phi i32 [ %130, %113 ], [ %258, %249 ]
  %262 = getelementptr inbounds nuw i8, ptr %260, i64 1
  %263 = load i8, ptr %260, align 1
  %264 = zext i8 %263 to i32
  %265 = mul i32 %264, 374761393
  %266 = add i32 %265, %261
  %267 = call i32 @llvm.fshl.i32(i32 %266, i32 %266, i32 11)
  %268 = mul i32 %267, -1640531535
  br label %269

269:                                              ; preds = %259, %113
  %270 = phi ptr [ %42, %113 ], [ %262, %259 ]
  %271 = phi i32 [ %130, %113 ], [ %268, %259 ]
  %272 = load i8, ptr %270, align 1
  %273 = zext i8 %272 to i32
  %274 = mul i32 %273, 374761393
  %275 = add i32 %274, %271
  %276 = call i32 @llvm.fshl.i32(i32 %275, i32 %275, i32 11)
  %277 = mul i32 %276, -1640531535
  br label %279

278:                                              ; preds = %113
  unreachable

279:                                              ; preds = %104, %113, %147, %171, %202, %269
  %280 = phi i32 [ %223, %202 ], [ %185, %171 ], [ %154, %147 ], [ %130, %113 ], [ %277, %269 ], [ %112, %104 ]
  %281 = lshr i32 %280, 15
  %282 = xor i32 %281, %280
  %283 = mul i32 %282, -2048144777
  %284 = lshr i32 %283, 13
  %285 = xor i32 %284, %283
  %286 = mul i32 %285, -1028477379
  %287 = lshr i32 %286, 16
  %288 = xor i32 %287, %286
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #7
  ret i32 %288
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 270571}
