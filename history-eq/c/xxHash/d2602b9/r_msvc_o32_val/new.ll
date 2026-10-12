; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/d2602b9/wrapv_o32.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/d2602b9/wrapv_o32.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.33.0"

%struct.XXH_NAMESPACEXXH32_state_s = type { i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32 }

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

; Function Attrs: nounwind uwtable
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

; Function Attrs: nounwind uwtable
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

; Function Attrs: nounwind uwtable
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

; Function Attrs: nounwind uwtable
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

; Function Attrs: nounwind uwtable
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

; Function Attrs: nounwind uwtable
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

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len48(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
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
  %103 = add i32 %99, 48
  %104 = add i32 %103, %100
  %105 = add i32 %104, %101
  %106 = add i32 %105, %102
  %107 = lshr i32 %106, 15
  %108 = xor i32 %107, %106
  %109 = mul i32 %108, -2048144777
  %110 = lshr i32 %109, 13
  %111 = xor i32 %110, %109
  %112 = mul i32 %111, -1028477379
  %113 = lshr i32 %112, 16
  %114 = xor i32 %113, %112
  ret i32 %114
}

; Function Attrs: nounwind uwtable
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

; Function Attrs: nounwind uwtable
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

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_10_10(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #6
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
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #6
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
  %54 = load i32, ptr %53, align 4
  %55 = load i32, ptr %39, align 4
  %56 = mul i32 %54, -2048144777
  %57 = add i32 %56, %55
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  %60 = freeze i32 %59
  store i32 %60, ptr %39, align 4
  %61 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %62 = load i32, ptr %61, align 8
  %63 = load i32, ptr %40, align 8
  %64 = mul i32 %62, -2048144777
  %65 = add i32 %64, %63
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 13)
  %67 = mul i32 %66, -1640531535
  %68 = freeze i32 %67
  store i32 %68, ptr %40, align 8
  %69 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %70 = load i32, ptr %69, align 4
  %71 = load i32, ptr %41, align 4
  %72 = mul i32 %70, -2048144777
  %73 = add i32 %72, %71
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
  %122 = load i32, ptr %120, align 1
  %123 = mul i32 %122, -1028477379
  %124 = add i32 %123, %121
  %125 = getelementptr inbounds nuw i8, ptr %120, i64 4
  %126 = call i32 @llvm.fshl.i32(i32 %124, i32 %124, i32 17)
  %127 = mul i32 %126, 668265263
  br label %128

128:                                              ; preds = %119, %108
  %129 = phi ptr [ %42, %108 ], [ %125, %119 ]
  %130 = phi i32 [ %111, %108 ], [ %127, %119 ]
  %131 = load i32, ptr %129, align 1
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
  %146 = load i32, ptr %144, align 1
  %147 = mul i32 %146, -1028477379
  %148 = add i32 %147, %145
  %149 = getelementptr inbounds nuw i8, ptr %144, i64 4
  %150 = call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 17)
  %151 = mul i32 %150, 668265263
  br label %152

152:                                              ; preds = %143, %108
  %153 = phi ptr [ %42, %108 ], [ %149, %143 ]
  %154 = phi i32 [ %111, %108 ], [ %151, %143 ]
  %155 = load i32, ptr %153, align 1
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
  %177 = load i32, ptr %175, align 1
  %178 = mul i32 %177, -1028477379
  %179 = add i32 %178, %176
  %180 = getelementptr inbounds nuw i8, ptr %175, i64 4
  %181 = call i32 @llvm.fshl.i32(i32 %179, i32 %179, i32 17)
  %182 = mul i32 %181, 668265263
  br label %183

183:                                              ; preds = %174, %108
  %184 = phi ptr [ %42, %108 ], [ %180, %174 ]
  %185 = phi i32 [ %111, %108 ], [ %182, %174 ]
  %186 = load i32, ptr %184, align 1
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
  %215 = load i32, ptr %213, align 1
  %216 = mul i32 %215, -1028477379
  %217 = add i32 %216, %214
  %218 = getelementptr inbounds nuw i8, ptr %213, i64 4
  %219 = call i32 @llvm.fshl.i32(i32 %217, i32 %217, i32 17)
  %220 = mul i32 %219, 668265263
  br label %221

221:                                              ; preds = %212, %108
  %222 = phi ptr [ %42, %108 ], [ %218, %212 ]
  %223 = phi i32 [ %111, %108 ], [ %220, %212 ]
  %224 = load i32, ptr %222, align 1
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
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #6
  ret i32 %269
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_3_20(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #6
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
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #6
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
  %54 = load i32, ptr %53, align 4
  %55 = load i32, ptr %39, align 4
  %56 = mul i32 %54, -2048144777
  %57 = add i32 %56, %55
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  %60 = freeze i32 %59
  store i32 %60, ptr %39, align 4
  %61 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %62 = load i32, ptr %61, align 8
  %63 = load i32, ptr %40, align 8
  %64 = mul i32 %62, -2048144777
  %65 = add i32 %64, %63
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 13)
  %67 = mul i32 %66, -1640531535
  %68 = freeze i32 %67
  store i32 %68, ptr %40, align 8
  %69 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %70 = load i32, ptr %69, align 4
  %71 = load i32, ptr %41, align 4
  %72 = mul i32 %70, -2048144777
  %73 = add i32 %72, %71
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
  br i1 %81, label %115, label %82

82:                                               ; preds = %17
  %83 = load i32, ptr %40, align 8
  %84 = load i32, ptr %39, align 4
  %85 = load i32, ptr %38, align 8
  %86 = getelementptr inbounds nuw i8, ptr %18, i64 %80
  %87 = load i32, ptr %86, align 1
  %88 = mul i32 %87, -2048144777
  %89 = add i32 %88, %85
  %90 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 13)
  %91 = mul i32 %90, -1640531535
  %92 = freeze i32 %91
  %93 = getelementptr inbounds nuw i8, ptr %86, i64 4
  %94 = load i32, ptr %93, align 1
  %95 = mul i32 %94, -2048144777
  %96 = add i32 %95, %84
  %97 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 13)
  %98 = mul i32 %97, -1640531535
  %99 = freeze i32 %98
  %100 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %101 = load i32, ptr %100, align 1
  %102 = mul i32 %101, -2048144777
  %103 = add i32 %102, %83
  %104 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 13)
  %105 = mul i32 %104, -1640531535
  %106 = freeze i32 %105
  %107 = getelementptr inbounds nuw i8, ptr %86, i64 12
  %108 = load i32, ptr %107, align 1
  %109 = mul i32 %108, -2048144777
  %110 = add i32 %109, %76
  %111 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 13)
  %112 = mul i32 %111, -1640531535
  %113 = freeze i32 %112
  %114 = add nuw nsw i64 %79, 19
  store i32 %92, ptr %38, align 8
  store i32 %99, ptr %39, align 4
  store i32 %106, ptr %40, align 8
  store i32 %113, ptr %41, align 4
  br label %115

115:                                              ; preds = %82, %17
  %116 = phi i32 [ %113, %82 ], [ %76, %17 ]
  %117 = phi i64 [ %114, %82 ], [ %80, %17 ]
  %118 = icmp samesign ult i64 %117, 23
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = getelementptr inbounds nuw i8, ptr %18, i64 %117
  %121 = sub nuw nsw i64 23, %117
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %120, i64 %121, i1 false)
  %122 = trunc nuw i64 %121 to i32
  store i32 %122, ptr %45, align 8
  br label %123

123:                                              ; preds = %115, %119
  %124 = load i32, ptr %44, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %123
  %127 = load i32, ptr %38, align 8
  %128 = tail call i32 @llvm.fshl.i32(i32 %127, i32 %127, i32 1)
  %129 = load i32, ptr %39, align 4
  %130 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 7)
  %131 = add i32 %130, %128
  %132 = load i32, ptr %40, align 8
  %133 = tail call i32 @llvm.fshl.i32(i32 %132, i32 %132, i32 12)
  %134 = add i32 %131, %133
  %135 = tail call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 18)
  %136 = add i32 %134, %135
  br label %140

137:                                              ; preds = %123
  %138 = load i32, ptr %40, align 8
  %139 = add i32 %138, 374761393
  br label %140

140:                                              ; preds = %137, %126
  %141 = phi i32 [ %136, %126 ], [ %139, %137 ]
  %142 = load i32, ptr %19, align 8
  %143 = add i32 %142, %141
  %144 = load i32, ptr %45, align 8
  %145 = and i32 %144, 15
  switch i32 %145, label %293 [
    i32 12, label %146
    i32 8, label %153
    i32 4, label %162
    i32 13, label %170
    i32 9, label %177
    i32 5, label %186
    i32 14, label %201
    i32 10, label %208
    i32 6, label %217
    i32 15, label %239
    i32 11, label %246
    i32 7, label %255
    i32 3, label %264
    i32 2, label %274
    i32 1, label %284
    i32 0, label %294
  ]

146:                                              ; preds = %140
  %147 = load i32, ptr %42, align 8
  %148 = mul i32 %147, -1028477379
  %149 = add i32 %148, %143
  %150 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %151 = tail call i32 @llvm.fshl.i32(i32 %149, i32 %149, i32 17)
  %152 = mul i32 %151, 668265263
  br label %153

153:                                              ; preds = %146, %140
  %154 = phi ptr [ %42, %140 ], [ %150, %146 ]
  %155 = phi i32 [ %143, %140 ], [ %152, %146 ]
  %156 = load i32, ptr %154, align 1
  %157 = mul i32 %156, -1028477379
  %158 = add i32 %157, %155
  %159 = getelementptr inbounds nuw i8, ptr %154, i64 4
  %160 = tail call i32 @llvm.fshl.i32(i32 %158, i32 %158, i32 17)
  %161 = mul i32 %160, 668265263
  br label %162

162:                                              ; preds = %153, %140
  %163 = phi ptr [ %42, %140 ], [ %159, %153 ]
  %164 = phi i32 [ %143, %140 ], [ %161, %153 ]
  %165 = load i32, ptr %163, align 1
  %166 = mul i32 %165, -1028477379
  %167 = add i32 %166, %164
  %168 = tail call i32 @llvm.fshl.i32(i32 %167, i32 %167, i32 17)
  %169 = mul i32 %168, 668265263
  br label %294

170:                                              ; preds = %140
  %171 = load i32, ptr %42, align 8
  %172 = mul i32 %171, -1028477379
  %173 = add i32 %172, %143
  %174 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %175 = tail call i32 @llvm.fshl.i32(i32 %173, i32 %173, i32 17)
  %176 = mul i32 %175, 668265263
  br label %177

177:                                              ; preds = %170, %140
  %178 = phi ptr [ %42, %140 ], [ %174, %170 ]
  %179 = phi i32 [ %143, %140 ], [ %176, %170 ]
  %180 = load i32, ptr %178, align 1
  %181 = mul i32 %180, -1028477379
  %182 = add i32 %181, %179
  %183 = getelementptr inbounds nuw i8, ptr %178, i64 4
  %184 = tail call i32 @llvm.fshl.i32(i32 %182, i32 %182, i32 17)
  %185 = mul i32 %184, 668265263
  br label %186

186:                                              ; preds = %177, %140
  %187 = phi ptr [ %42, %140 ], [ %183, %177 ]
  %188 = phi i32 [ %143, %140 ], [ %185, %177 ]
  %189 = load i32, ptr %187, align 1
  %190 = mul i32 %189, -1028477379
  %191 = add i32 %190, %188
  %192 = getelementptr inbounds nuw i8, ptr %187, i64 4
  %193 = tail call i32 @llvm.fshl.i32(i32 %191, i32 %191, i32 17)
  %194 = mul i32 %193, 668265263
  %195 = load i8, ptr %192, align 1
  %196 = zext i8 %195 to i32
  %197 = mul i32 %196, 374761393
  %198 = add i32 %194, %197
  %199 = tail call i32 @llvm.fshl.i32(i32 %198, i32 %198, i32 11)
  %200 = mul i32 %199, -1640531535
  br label %294

201:                                              ; preds = %140
  %202 = load i32, ptr %42, align 8
  %203 = mul i32 %202, -1028477379
  %204 = add i32 %203, %143
  %205 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %206 = tail call i32 @llvm.fshl.i32(i32 %204, i32 %204, i32 17)
  %207 = mul i32 %206, 668265263
  br label %208

208:                                              ; preds = %201, %140
  %209 = phi ptr [ %42, %140 ], [ %205, %201 ]
  %210 = phi i32 [ %143, %140 ], [ %207, %201 ]
  %211 = load i32, ptr %209, align 1
  %212 = mul i32 %211, -1028477379
  %213 = add i32 %212, %210
  %214 = getelementptr inbounds nuw i8, ptr %209, i64 4
  %215 = tail call i32 @llvm.fshl.i32(i32 %213, i32 %213, i32 17)
  %216 = mul i32 %215, 668265263
  br label %217

217:                                              ; preds = %208, %140
  %218 = phi ptr [ %42, %140 ], [ %214, %208 ]
  %219 = phi i32 [ %143, %140 ], [ %216, %208 ]
  %220 = load i32, ptr %218, align 1
  %221 = mul i32 %220, -1028477379
  %222 = add i32 %221, %219
  %223 = getelementptr inbounds nuw i8, ptr %218, i64 4
  %224 = tail call i32 @llvm.fshl.i32(i32 %222, i32 %222, i32 17)
  %225 = mul i32 %224, 668265263
  %226 = getelementptr inbounds nuw i8, ptr %218, i64 5
  %227 = load i8, ptr %223, align 1
  %228 = zext i8 %227 to i32
  %229 = mul i32 %228, 374761393
  %230 = add i32 %225, %229
  %231 = tail call i32 @llvm.fshl.i32(i32 %230, i32 %230, i32 11)
  %232 = mul i32 %231, -1640531535
  %233 = load i8, ptr %226, align 1
  %234 = zext i8 %233 to i32
  %235 = mul i32 %234, 374761393
  %236 = add i32 %232, %235
  %237 = tail call i32 @llvm.fshl.i32(i32 %236, i32 %236, i32 11)
  %238 = mul i32 %237, -1640531535
  br label %294

239:                                              ; preds = %140
  %240 = load i32, ptr %42, align 8
  %241 = mul i32 %240, -1028477379
  %242 = add i32 %241, %143
  %243 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %244 = tail call i32 @llvm.fshl.i32(i32 %242, i32 %242, i32 17)
  %245 = mul i32 %244, 668265263
  br label %246

246:                                              ; preds = %239, %140
  %247 = phi ptr [ %42, %140 ], [ %243, %239 ]
  %248 = phi i32 [ %143, %140 ], [ %245, %239 ]
  %249 = load i32, ptr %247, align 1
  %250 = mul i32 %249, -1028477379
  %251 = add i32 %250, %248
  %252 = getelementptr inbounds nuw i8, ptr %247, i64 4
  %253 = tail call i32 @llvm.fshl.i32(i32 %251, i32 %251, i32 17)
  %254 = mul i32 %253, 668265263
  br label %255

255:                                              ; preds = %246, %140
  %256 = phi ptr [ %42, %140 ], [ %252, %246 ]
  %257 = phi i32 [ %143, %140 ], [ %254, %246 ]
  %258 = load i32, ptr %256, align 1
  %259 = mul i32 %258, -1028477379
  %260 = add i32 %259, %257
  %261 = getelementptr inbounds nuw i8, ptr %256, i64 4
  %262 = tail call i32 @llvm.fshl.i32(i32 %260, i32 %260, i32 17)
  %263 = mul i32 %262, 668265263
  br label %264

264:                                              ; preds = %255, %140
  %265 = phi ptr [ %42, %140 ], [ %261, %255 ]
  %266 = phi i32 [ %143, %140 ], [ %263, %255 ]
  %267 = getelementptr inbounds nuw i8, ptr %265, i64 1
  %268 = load i8, ptr %265, align 1
  %269 = zext i8 %268 to i32
  %270 = mul i32 %269, 374761393
  %271 = add i32 %270, %266
  %272 = tail call i32 @llvm.fshl.i32(i32 %271, i32 %271, i32 11)
  %273 = mul i32 %272, -1640531535
  br label %274

274:                                              ; preds = %264, %140
  %275 = phi ptr [ %42, %140 ], [ %267, %264 ]
  %276 = phi i32 [ %143, %140 ], [ %273, %264 ]
  %277 = getelementptr inbounds nuw i8, ptr %275, i64 1
  %278 = load i8, ptr %275, align 1
  %279 = zext i8 %278 to i32
  %280 = mul i32 %279, 374761393
  %281 = add i32 %280, %276
  %282 = tail call i32 @llvm.fshl.i32(i32 %281, i32 %281, i32 11)
  %283 = mul i32 %282, -1640531535
  br label %284

284:                                              ; preds = %274, %140
  %285 = phi ptr [ %42, %140 ], [ %277, %274 ]
  %286 = phi i32 [ %143, %140 ], [ %283, %274 ]
  %287 = load i8, ptr %285, align 1
  %288 = zext i8 %287 to i32
  %289 = mul i32 %288, 374761393
  %290 = add i32 %289, %286
  %291 = tail call i32 @llvm.fshl.i32(i32 %290, i32 %290, i32 11)
  %292 = mul i32 %291, -1640531535
  br label %294

293:                                              ; preds = %140
  unreachable

294:                                              ; preds = %140, %162, %186, %217, %284
  %295 = phi i32 [ %238, %217 ], [ %200, %186 ], [ %169, %162 ], [ %143, %140 ], [ %292, %284 ]
  %296 = lshr i32 %295, 15
  %297 = xor i32 %296, %295
  %298 = mul i32 %297, -2048144777
  %299 = lshr i32 %298, 13
  %300 = xor i32 %299, %298
  %301 = mul i32 %300, -1028477379
  %302 = lshr i32 %301, 16
  %303 = xor i32 %302, %301
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #6
  ret i32 %303
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_s32_20_13(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #3 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #6
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
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #6
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
  %46 = load i32, ptr %18, align 16
  %47 = mul i32 %46, -2048144777
  %48 = add i32 %47, %35
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 13)
  %50 = mul i32 %49, -1640531535
  %51 = freeze i32 %50
  %52 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %53 = load i32, ptr %52, align 4
  %54 = mul i32 %53, -2048144777
  %55 = add i32 %54, %36
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 13)
  %57 = mul i32 %56, -1640531535
  %58 = freeze i32 %57
  %59 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %60 = load i32, ptr %59, align 8
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %61, %16
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13)
  %64 = mul i32 %63, -1640531535
  %65 = freeze i32 %64
  %66 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %67 = load i32, ptr %66, align 4
  %68 = mul i32 %67, -2048144777
  %69 = add i32 %68, %37
  %70 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 13)
  %71 = mul i32 %70, -1640531535
  %72 = freeze i32 %71
  store i32 %51, ptr %38, align 8
  store i32 %58, ptr %39, align 4
  store i32 %65, ptr %40, align 8
  store i32 %72, ptr %41, align 4
  %73 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %74 = load i32, ptr %73, align 16
  store i32 %74, ptr %42, align 8
  store i32 4, ptr %45, align 8
  %75 = load i32, ptr %19, align 8
  %76 = add i32 %75, 13
  store i32 %76, ptr %19, align 8
  %77 = icmp ugt i32 %76, 15
  %78 = zext i1 %77 to i32
  %79 = load i32, ptr %44, align 4
  %80 = or i32 %79, %78
  store i32 %80, ptr %44, align 4
  %81 = getelementptr inbounds nuw i8, ptr %19, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %81, ptr noundef nonnull readonly align 4 dereferenceable(12) %43, i64 12, i1 false)
  %82 = load i32, ptr %42, align 8
  %83 = mul i32 %82, -2048144777
  %84 = add i32 %83, %51
  %85 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 13)
  %86 = mul i32 %85, -1640531535
  %87 = freeze i32 %86
  store i32 %87, ptr %38, align 8
  %88 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %89 = load i32, ptr %88, align 4
  %90 = load i32, ptr %39, align 4
  %91 = mul i32 %89, -2048144777
  %92 = add i32 %91, %90
  %93 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 13)
  %94 = mul i32 %93, -1640531535
  %95 = freeze i32 %94
  store i32 %95, ptr %39, align 4
  %96 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %97 = load i32, ptr %96, align 8
  %98 = load i32, ptr %40, align 8
  %99 = mul i32 %97, -2048144777
  %100 = add i32 %99, %98
  %101 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 13)
  %102 = mul i32 %101, -1640531535
  %103 = freeze i32 %102
  store i32 %103, ptr %40, align 8
  %104 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %105 = load i32, ptr %104, align 4
  %106 = load i32, ptr %41, align 4
  %107 = mul i32 %105, -2048144777
  %108 = add i32 %107, %106
  %109 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 13)
  %110 = mul i32 %109, -1640531535
  %111 = freeze i32 %110
  store i32 %111, ptr %41, align 4
  %112 = load i32, ptr %45, align 8
  %113 = sub i32 16, %112
  store i32 0, ptr %45, align 8
  %114 = icmp ult i32 %113, 13
  br i1 %114, label %115, label %125

115:                                              ; preds = %17
  %116 = getelementptr inbounds nuw i8, ptr %18, i64 33
  %117 = zext nneg i32 %113 to i64
  %118 = getelementptr inbounds nuw i8, ptr %18, i64 %117
  %119 = getelementptr inbounds nuw i8, ptr %118, i64 20
  %120 = ptrtoint ptr %116 to i64
  %121 = ptrtoint ptr %119 to i64
  %122 = sub i64 %120, %121
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %119, i64 %122, i1 false)
  %123 = trunc i64 %122 to i32
  store i32 %123, ptr %45, align 8
  %124 = and i32 %123, 15
  br label %125

125:                                              ; preds = %17, %115
  %126 = phi i32 [ 0, %17 ], [ %124, %115 ]
  %127 = load i32, ptr %44, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %140, label %129

129:                                              ; preds = %125
  %130 = load i32, ptr %38, align 8
  %131 = call i32 @llvm.fshl.i32(i32 %130, i32 %130, i32 1)
  %132 = load i32, ptr %39, align 4
  %133 = call i32 @llvm.fshl.i32(i32 %132, i32 %132, i32 7)
  %134 = add i32 %133, %131
  %135 = load i32, ptr %40, align 8
  %136 = call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 12)
  %137 = add i32 %134, %136
  %138 = call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 18)
  %139 = add i32 %137, %138
  br label %143

140:                                              ; preds = %125
  %141 = load i32, ptr %40, align 8
  %142 = add i32 %141, 374761393
  br label %143

143:                                              ; preds = %140, %129
  %144 = phi i32 [ %139, %129 ], [ %142, %140 ]
  %145 = load i32, ptr %19, align 8
  %146 = add i32 %145, %144
  switch i32 %126, label %294 [
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

147:                                              ; preds = %143
  %148 = load i32, ptr %42, align 8
  %149 = mul i32 %148, -1028477379
  %150 = add i32 %149, %146
  %151 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %152 = call i32 @llvm.fshl.i32(i32 %150, i32 %150, i32 17)
  %153 = mul i32 %152, 668265263
  br label %154

154:                                              ; preds = %147, %143
  %155 = phi ptr [ %42, %143 ], [ %151, %147 ]
  %156 = phi i32 [ %146, %143 ], [ %153, %147 ]
  %157 = load i32, ptr %155, align 1
  %158 = mul i32 %157, -1028477379
  %159 = add i32 %158, %156
  %160 = getelementptr inbounds nuw i8, ptr %155, i64 4
  %161 = call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 17)
  %162 = mul i32 %161, 668265263
  br label %163

163:                                              ; preds = %154, %143
  %164 = phi ptr [ %42, %143 ], [ %160, %154 ]
  %165 = phi i32 [ %146, %143 ], [ %162, %154 ]
  %166 = load i32, ptr %164, align 1
  %167 = mul i32 %166, -1028477379
  %168 = add i32 %167, %165
  %169 = call i32 @llvm.fshl.i32(i32 %168, i32 %168, i32 17)
  %170 = mul i32 %169, 668265263
  br label %295

171:                                              ; preds = %143
  %172 = load i32, ptr %42, align 8
  %173 = mul i32 %172, -1028477379
  %174 = add i32 %173, %146
  %175 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %176 = call i32 @llvm.fshl.i32(i32 %174, i32 %174, i32 17)
  %177 = mul i32 %176, 668265263
  br label %178

178:                                              ; preds = %171, %143
  %179 = phi ptr [ %42, %143 ], [ %175, %171 ]
  %180 = phi i32 [ %146, %143 ], [ %177, %171 ]
  %181 = load i32, ptr %179, align 1
  %182 = mul i32 %181, -1028477379
  %183 = add i32 %182, %180
  %184 = getelementptr inbounds nuw i8, ptr %179, i64 4
  %185 = call i32 @llvm.fshl.i32(i32 %183, i32 %183, i32 17)
  %186 = mul i32 %185, 668265263
  br label %187

187:                                              ; preds = %178, %143
  %188 = phi ptr [ %42, %143 ], [ %184, %178 ]
  %189 = phi i32 [ %146, %143 ], [ %186, %178 ]
  %190 = load i32, ptr %188, align 1
  %191 = mul i32 %190, -1028477379
  %192 = add i32 %191, %189
  %193 = getelementptr inbounds nuw i8, ptr %188, i64 4
  %194 = call i32 @llvm.fshl.i32(i32 %192, i32 %192, i32 17)
  %195 = mul i32 %194, 668265263
  %196 = load i8, ptr %193, align 1
  %197 = zext i8 %196 to i32
  %198 = mul i32 %197, 374761393
  %199 = add i32 %195, %198
  %200 = call i32 @llvm.fshl.i32(i32 %199, i32 %199, i32 11)
  %201 = mul i32 %200, -1640531535
  br label %295

202:                                              ; preds = %143
  %203 = load i32, ptr %42, align 8
  %204 = mul i32 %203, -1028477379
  %205 = add i32 %204, %146
  %206 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %207 = call i32 @llvm.fshl.i32(i32 %205, i32 %205, i32 17)
  %208 = mul i32 %207, 668265263
  br label %209

209:                                              ; preds = %202, %143
  %210 = phi ptr [ %42, %143 ], [ %206, %202 ]
  %211 = phi i32 [ %146, %143 ], [ %208, %202 ]
  %212 = load i32, ptr %210, align 1
  %213 = mul i32 %212, -1028477379
  %214 = add i32 %213, %211
  %215 = getelementptr inbounds nuw i8, ptr %210, i64 4
  %216 = call i32 @llvm.fshl.i32(i32 %214, i32 %214, i32 17)
  %217 = mul i32 %216, 668265263
  br label %218

218:                                              ; preds = %209, %143
  %219 = phi ptr [ %42, %143 ], [ %215, %209 ]
  %220 = phi i32 [ %146, %143 ], [ %217, %209 ]
  %221 = load i32, ptr %219, align 1
  %222 = mul i32 %221, -1028477379
  %223 = add i32 %222, %220
  %224 = getelementptr inbounds nuw i8, ptr %219, i64 4
  %225 = call i32 @llvm.fshl.i32(i32 %223, i32 %223, i32 17)
  %226 = mul i32 %225, 668265263
  %227 = getelementptr inbounds nuw i8, ptr %219, i64 5
  %228 = load i8, ptr %224, align 1
  %229 = zext i8 %228 to i32
  %230 = mul i32 %229, 374761393
  %231 = add i32 %226, %230
  %232 = call i32 @llvm.fshl.i32(i32 %231, i32 %231, i32 11)
  %233 = mul i32 %232, -1640531535
  %234 = load i8, ptr %227, align 1
  %235 = zext i8 %234 to i32
  %236 = mul i32 %235, 374761393
  %237 = add i32 %233, %236
  %238 = call i32 @llvm.fshl.i32(i32 %237, i32 %237, i32 11)
  %239 = mul i32 %238, -1640531535
  br label %295

240:                                              ; preds = %143
  %241 = load i32, ptr %42, align 8
  %242 = mul i32 %241, -1028477379
  %243 = add i32 %242, %146
  %244 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %245 = call i32 @llvm.fshl.i32(i32 %243, i32 %243, i32 17)
  %246 = mul i32 %245, 668265263
  br label %247

247:                                              ; preds = %240, %143
  %248 = phi ptr [ %42, %143 ], [ %244, %240 ]
  %249 = phi i32 [ %146, %143 ], [ %246, %240 ]
  %250 = load i32, ptr %248, align 1
  %251 = mul i32 %250, -1028477379
  %252 = add i32 %251, %249
  %253 = getelementptr inbounds nuw i8, ptr %248, i64 4
  %254 = call i32 @llvm.fshl.i32(i32 %252, i32 %252, i32 17)
  %255 = mul i32 %254, 668265263
  br label %256

256:                                              ; preds = %247, %143
  %257 = phi ptr [ %42, %143 ], [ %253, %247 ]
  %258 = phi i32 [ %146, %143 ], [ %255, %247 ]
  %259 = load i32, ptr %257, align 1
  %260 = mul i32 %259, -1028477379
  %261 = add i32 %260, %258
  %262 = getelementptr inbounds nuw i8, ptr %257, i64 4
  %263 = call i32 @llvm.fshl.i32(i32 %261, i32 %261, i32 17)
  %264 = mul i32 %263, 668265263
  br label %265

265:                                              ; preds = %256, %143
  %266 = phi ptr [ %42, %143 ], [ %262, %256 ]
  %267 = phi i32 [ %146, %143 ], [ %264, %256 ]
  %268 = getelementptr inbounds nuw i8, ptr %266, i64 1
  %269 = load i8, ptr %266, align 1
  %270 = zext i8 %269 to i32
  %271 = mul i32 %270, 374761393
  %272 = add i32 %271, %267
  %273 = call i32 @llvm.fshl.i32(i32 %272, i32 %272, i32 11)
  %274 = mul i32 %273, -1640531535
  br label %275

275:                                              ; preds = %265, %143
  %276 = phi ptr [ %42, %143 ], [ %268, %265 ]
  %277 = phi i32 [ %146, %143 ], [ %274, %265 ]
  %278 = getelementptr inbounds nuw i8, ptr %276, i64 1
  %279 = load i8, ptr %276, align 1
  %280 = zext i8 %279 to i32
  %281 = mul i32 %280, 374761393
  %282 = add i32 %281, %277
  %283 = call i32 @llvm.fshl.i32(i32 %282, i32 %282, i32 11)
  %284 = mul i32 %283, -1640531535
  br label %285

285:                                              ; preds = %275, %143
  %286 = phi ptr [ %42, %143 ], [ %278, %275 ]
  %287 = phi i32 [ %146, %143 ], [ %284, %275 ]
  %288 = load i8, ptr %286, align 1
  %289 = zext i8 %288 to i32
  %290 = mul i32 %289, 374761393
  %291 = add i32 %290, %287
  %292 = call i32 @llvm.fshl.i32(i32 %291, i32 %291, i32 11)
  %293 = mul i32 %292, -1640531535
  br label %295

294:                                              ; preds = %143
  unreachable

295:                                              ; preds = %143, %163, %187, %218, %285
  %296 = phi i32 [ %239, %218 ], [ %201, %187 ], [ %170, %163 ], [ %146, %143 ], [ %293, %285 ]
  %297 = lshr i32 %296, 15
  %298 = xor i32 %297, %296
  %299 = mul i32 %298, -2048144777
  %300 = lshr i32 %299, 13
  %301 = xor i32 %300, %299
  %302 = mul i32 %301, -1028477379
  %303 = lshr i32 %302, 16
  %304 = xor i32 %303, %302
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #6
  ret i32 %304
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"MaxTLSAlign", i32 65536}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 2147793637}
