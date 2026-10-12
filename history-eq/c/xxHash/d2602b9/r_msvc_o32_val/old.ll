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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len16(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = add i32 %16, 606290984
  %19 = add i32 %16, -2048144777
  %20 = add i32 %16, 1640531535
  %21 = lshr i64 %1, 32
  %22 = trunc nuw i64 %21 to i32
  %23 = mul i32 %22, -2048144777
  %24 = add i32 %20, %23
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 13)
  %26 = mul i32 %25, -1640531535
  %27 = trunc i64 %1 to i32
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %16
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = lshr i64 %0, 32
  %33 = trunc nuw i64 %32 to i32
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %19, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = trunc i64 %0 to i32
  %39 = mul i32 %38, -2048144777
  %40 = add i32 %18, %39
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 13)
  %42 = mul i32 %41, -1640531535
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 1)
  %44 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 7)
  %45 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 12)
  %46 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 18)
  %47 = add i32 %46, 16
  %48 = add i32 %47, %45
  %49 = add i32 %48, %44
  %50 = add i32 %49, %43
  %51 = lshr i32 %50, 15
  %52 = xor i32 %51, %50
  %53 = mul i32 %52, -2048144777
  %54 = lshr i32 %53, 13
  %55 = xor i32 %54, %53
  %56 = mul i32 %55, -1028477379
  %57 = lshr i32 %56, 16
  %58 = xor i32 %57, %56
  ret i32 %58
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len17(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = add i32 %16, 606290984
  %19 = add i32 %16, -2048144777
  %20 = add i32 %16, 1640531535
  %21 = lshr i64 %1, 32
  %22 = trunc nuw i64 %21 to i32
  %23 = mul i32 %22, -2048144777
  %24 = add i32 %20, %23
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 13)
  %26 = mul i32 %25, -1640531535
  %27 = trunc i64 %1 to i32
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %16
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = lshr i64 %0, 32
  %33 = trunc nuw i64 %32 to i32
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %19, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = trunc i64 %0 to i32
  %39 = mul i32 %38, -2048144777
  %40 = add i32 %18, %39
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 13)
  %42 = mul i32 %41, -1640531535
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 1)
  %44 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 7)
  %45 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 12)
  %46 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 18)
  %47 = trunc i64 %2 to i32
  %48 = and i32 %47, 255
  %49 = mul i32 %48, 374761393
  %50 = add i32 %46, 17
  %51 = add i32 %50, %45
  %52 = add i32 %51, %49
  %53 = add i32 %52, %44
  %54 = add i32 %53, %43
  %55 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 11)
  %56 = mul i32 %55, -1640531535
  %57 = lshr i32 %56, 15
  %58 = xor i32 %57, %56
  %59 = mul i32 %58, -2048144777
  %60 = lshr i32 %59, 13
  %61 = xor i32 %60, %59
  %62 = mul i32 %61, -1028477379
  %63 = lshr i32 %62, 16
  %64 = xor i32 %63, %62
  ret i32 %64
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len20(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = add i32 %16, 606290984
  %19 = add i32 %16, -2048144777
  %20 = add i32 %16, 1640531535
  %21 = lshr i64 %1, 32
  %22 = trunc nuw i64 %21 to i32
  %23 = mul i32 %22, -2048144777
  %24 = add i32 %20, %23
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 13)
  %26 = mul i32 %25, -1640531535
  %27 = trunc i64 %1 to i32
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %16
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = lshr i64 %0, 32
  %33 = trunc nuw i64 %32 to i32
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %19, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = trunc i64 %0 to i32
  %39 = mul i32 %38, -2048144777
  %40 = add i32 %18, %39
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 13)
  %42 = mul i32 %41, -1640531535
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 1)
  %44 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 7)
  %45 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 12)
  %46 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 18)
  %47 = trunc i64 %2 to i32
  %48 = mul i32 %47, -1028477379
  %49 = add i32 %46, 20
  %50 = add i32 %49, %48
  %51 = add i32 %50, %45
  %52 = add i32 %51, %44
  %53 = add i32 %52, %43
  %54 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 17)
  %55 = mul i32 %54, 668265263
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len31(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = add i32 %16, 606290984
  %19 = add i32 %16, -2048144777
  %20 = add i32 %16, 1640531535
  %21 = trunc i64 %0 to i32
  %22 = mul i32 %21, -2048144777
  %23 = add i32 %22, %18
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 13)
  %25 = mul i32 %24, -1640531535
  %26 = lshr i64 %0, 32
  %27 = trunc nuw i64 %26 to i32
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %19
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = trunc i64 %1 to i32
  %33 = mul i32 %32, -2048144777
  %34 = add i32 %33, %16
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 13)
  %36 = mul i32 %35, -1640531535
  %37 = lshr i64 %1, 32
  %38 = trunc nuw i64 %37 to i32
  %39 = mul i32 %38, -2048144777
  %40 = add i32 %39, %20
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 13)
  %42 = mul i32 %41, -1640531535
  %43 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 1)
  %44 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 7)
  %45 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 12)
  %46 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 18)
  %47 = trunc i64 %2 to i32
  %48 = mul i32 %47, -1028477379
  %49 = add i32 %43, 31
  %50 = add i32 %49, %44
  %51 = add i32 %50, %45
  %52 = add i32 %51, %46
  %53 = add i32 %52, %48
  %54 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 17)
  %55 = mul i32 %54, 668265263
  %56 = lshr i64 %2, 32
  %57 = trunc nuw i64 %56 to i32
  %58 = mul i32 %57, -1028477379
  %59 = add i32 %55, %58
  %60 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 17)
  %61 = mul i32 %60, 668265263
  %62 = trunc i64 %3 to i32
  %63 = mul i32 %62, -1028477379
  %64 = add i32 %61, %63
  %65 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 17)
  %66 = mul i32 %65, 668265263
  %67 = lshr i64 %3, 32
  %68 = trunc nuw i64 %67 to i32
  %69 = and i32 %68, 255
  %70 = mul i32 %69, 374761393
  %71 = add i32 %66, %70
  %72 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 11)
  %73 = mul i32 %72, -1640531535
  %74 = lshr i64 %3, 40
  %75 = trunc nuw nsw i64 %74 to i32
  %76 = and i32 %75, 255
  %77 = mul i32 %76, 374761393
  %78 = add i32 %73, %77
  %79 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 11)
  %80 = mul i32 %79, -1640531535
  %81 = lshr i64 %3, 48
  %82 = trunc nuw nsw i64 %81 to i32
  %83 = and i32 %82, 255
  %84 = mul i32 %83, 374761393
  %85 = add i32 %80, %84
  %86 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 11)
  %87 = mul i32 %86, -1640531535
  %88 = lshr i32 %87, 15
  %89 = xor i32 %88, %87
  %90 = mul i32 %89, -2048144777
  %91 = lshr i32 %90, 13
  %92 = xor i32 %91, %90
  %93 = mul i32 %92, -1028477379
  %94 = lshr i32 %93, 16
  %95 = xor i32 %94, %93
  ret i32 %95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len32(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = add i32 %16, 606290984
  %19 = add i32 %16, -2048144777
  %20 = add i32 %16, 1640531535
  %21 = trunc i64 %0 to i32
  %22 = mul i32 %21, -2048144777
  %23 = add i32 %22, %18
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 13)
  %25 = mul i32 %24, -1640531535
  %26 = lshr i64 %0, 32
  %27 = trunc nuw i64 %26 to i32
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %19
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = trunc i64 %1 to i32
  %33 = mul i32 %32, -2048144777
  %34 = add i32 %33, %16
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 13)
  %36 = mul i32 %35, -1640531535
  %37 = lshr i64 %1, 32
  %38 = trunc nuw i64 %37 to i32
  %39 = mul i32 %38, -2048144777
  %40 = add i32 %39, %20
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 13)
  %42 = mul i32 %41, -1640531535
  %43 = trunc i64 %2 to i32
  %44 = mul i32 %43, -2048144777
  %45 = add i32 %44, %25
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 13)
  %47 = mul i32 %46, -1640531535
  %48 = lshr i64 %2, 32
  %49 = trunc nuw i64 %48 to i32
  %50 = mul i32 %49, -2048144777
  %51 = add i32 %50, %31
  %52 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 13)
  %53 = mul i32 %52, -1640531535
  %54 = trunc i64 %3 to i32
  %55 = mul i32 %54, -2048144777
  %56 = add i32 %55, %36
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 13)
  %58 = mul i32 %57, -1640531535
  %59 = lshr i64 %3, 32
  %60 = trunc nuw i64 %59 to i32
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %61, %42
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13)
  %64 = mul i32 %63, -1640531535
  %65 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 1)
  %66 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 7)
  %67 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 12)
  %68 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 18)
  %69 = add i32 %65, 32
  %70 = add i32 %69, %66
  %71 = add i32 %70, %67
  %72 = add i32 %71, %68
  %73 = lshr i32 %72, 15
  %74 = xor i32 %73, %72
  %75 = mul i32 %74, -2048144777
  %76 = lshr i32 %75, 13
  %77 = xor i32 %76, %75
  %78 = mul i32 %77, -1028477379
  %79 = lshr i32 %78, 16
  %80 = xor i32 %79, %78
  ret i32 %80
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len47(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = add i32 %16, 606290984
  %19 = add i32 %16, -2048144777
  %20 = add i32 %16, 1640531535
  %21 = trunc i64 %0 to i32
  %22 = mul i32 %21, -2048144777
  %23 = add i32 %22, %18
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 13)
  %25 = mul i32 %24, -1640531535
  %26 = lshr i64 %0, 32
  %27 = trunc nuw i64 %26 to i32
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %19
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = trunc i64 %1 to i32
  %33 = mul i32 %32, -2048144777
  %34 = add i32 %33, %16
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 13)
  %36 = mul i32 %35, -1640531535
  %37 = lshr i64 %1, 32
  %38 = trunc nuw i64 %37 to i32
  %39 = mul i32 %38, -2048144777
  %40 = add i32 %39, %20
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 13)
  %42 = mul i32 %41, -1640531535
  %43 = trunc i64 %2 to i32
  %44 = mul i32 %43, -2048144777
  %45 = add i32 %44, %25
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 13)
  %47 = mul i32 %46, -1640531535
  %48 = lshr i64 %2, 32
  %49 = trunc nuw i64 %48 to i32
  %50 = mul i32 %49, -2048144777
  %51 = add i32 %50, %31
  %52 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 13)
  %53 = mul i32 %52, -1640531535
  %54 = trunc i64 %3 to i32
  %55 = mul i32 %54, -2048144777
  %56 = add i32 %55, %36
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 13)
  %58 = mul i32 %57, -1640531535
  %59 = lshr i64 %3, 32
  %60 = trunc nuw i64 %59 to i32
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %61, %42
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13)
  %64 = mul i32 %63, -1640531535
  %65 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 1)
  %66 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 7)
  %67 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 12)
  %68 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 18)
  %69 = trunc i64 %4 to i32
  %70 = mul i32 %69, -1028477379
  %71 = add i32 %65, 47
  %72 = add i32 %71, %66
  %73 = add i32 %72, %67
  %74 = add i32 %73, %68
  %75 = add i32 %74, %70
  %76 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 17)
  %77 = mul i32 %76, 668265263
  %78 = lshr i64 %4, 32
  %79 = trunc nuw i64 %78 to i32
  %80 = mul i32 %79, -1028477379
  %81 = add i32 %77, %80
  %82 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 17)
  %83 = mul i32 %82, 668265263
  %84 = trunc i64 %5 to i32
  %85 = mul i32 %84, -1028477379
  %86 = add i32 %83, %85
  %87 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 17)
  %88 = mul i32 %87, 668265263
  %89 = lshr i64 %5, 32
  %90 = trunc nuw i64 %89 to i32
  %91 = and i32 %90, 255
  %92 = mul i32 %91, 374761393
  %93 = add i32 %88, %92
  %94 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 11)
  %95 = mul i32 %94, -1640531535
  %96 = lshr i64 %5, 40
  %97 = trunc nuw nsw i64 %96 to i32
  %98 = and i32 %97, 255
  %99 = mul i32 %98, 374761393
  %100 = add i32 %95, %99
  %101 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 11)
  %102 = mul i32 %101, -1640531535
  %103 = lshr i64 %5, 48
  %104 = trunc nuw nsw i64 %103 to i32
  %105 = and i32 %104, 255
  %106 = mul i32 %105, 374761393
  %107 = add i32 %102, %106
  %108 = tail call i32 @llvm.fshl.i32(i32 %107, i32 %107, i32 11)
  %109 = mul i32 %108, -1640531535
  %110 = lshr i32 %109, 15
  %111 = xor i32 %110, %109
  %112 = mul i32 %111, -2048144777
  %113 = lshr i32 %112, 13
  %114 = xor i32 %113, %112
  %115 = mul i32 %114, -1028477379
  %116 = lshr i32 %115, 16
  %117 = xor i32 %116, %115
  ret i32 %117
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len48(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = add i32 %16, 606290984
  %19 = add i32 %16, -2048144777
  %20 = add i32 %16, 1640531535
  %21 = trunc i64 %0 to i32
  %22 = mul i32 %21, -2048144777
  %23 = add i32 %22, %18
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 13)
  %25 = mul i32 %24, -1640531535
  %26 = lshr i64 %0, 32
  %27 = trunc nuw i64 %26 to i32
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %19
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = trunc i64 %1 to i32
  %33 = mul i32 %32, -2048144777
  %34 = add i32 %33, %16
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 13)
  %36 = mul i32 %35, -1640531535
  %37 = lshr i64 %1, 32
  %38 = trunc nuw i64 %37 to i32
  %39 = mul i32 %38, -2048144777
  %40 = add i32 %39, %20
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 13)
  %42 = mul i32 %41, -1640531535
  %43 = trunc i64 %2 to i32
  %44 = mul i32 %43, -2048144777
  %45 = add i32 %44, %25
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 13)
  %47 = mul i32 %46, -1640531535
  %48 = lshr i64 %2, 32
  %49 = trunc nuw i64 %48 to i32
  %50 = mul i32 %49, -2048144777
  %51 = add i32 %50, %31
  %52 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 13)
  %53 = mul i32 %52, -1640531535
  %54 = trunc i64 %3 to i32
  %55 = mul i32 %54, -2048144777
  %56 = add i32 %55, %36
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 13)
  %58 = mul i32 %57, -1640531535
  %59 = lshr i64 %3, 32
  %60 = trunc nuw i64 %59 to i32
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %61, %42
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13)
  %64 = mul i32 %63, -1640531535
  %65 = trunc i64 %4 to i32
  %66 = mul i32 %65, -2048144777
  %67 = add i32 %66, %47
  %68 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 13)
  %69 = mul i32 %68, -1640531535
  %70 = lshr i64 %4, 32
  %71 = trunc nuw i64 %70 to i32
  %72 = mul i32 %71, -2048144777
  %73 = add i32 %72, %53
  %74 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 13)
  %75 = mul i32 %74, -1640531535
  %76 = trunc i64 %5 to i32
  %77 = mul i32 %76, -2048144777
  %78 = add i32 %77, %58
  %79 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 13)
  %80 = mul i32 %79, -1640531535
  %81 = lshr i64 %5, 32
  %82 = trunc nuw i64 %81 to i32
  %83 = mul i32 %82, -2048144777
  %84 = add i32 %83, %64
  %85 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 13)
  %86 = mul i32 %85, -1640531535
  %87 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 1)
  %88 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 7)
  %89 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 12)
  %90 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 18)
  %91 = add i32 %87, 48
  %92 = add i32 %91, %88
  %93 = add i32 %92, %89
  %94 = add i32 %93, %90
  %95 = lshr i32 %94, 15
  %96 = xor i32 %95, %94
  %97 = mul i32 %96, -2048144777
  %98 = lshr i32 %97, 13
  %99 = xor i32 %98, %97
  %100 = mul i32 %99, -1028477379
  %101 = lshr i32 %100, 16
  %102 = xor i32 %101, %100
  ret i32 %102
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len63(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = add i32 %16, 606290984
  %19 = add i32 %16, -2048144777
  %20 = add i32 %16, 1640531535
  %21 = trunc i64 %0 to i32
  %22 = mul i32 %21, -2048144777
  %23 = add i32 %22, %18
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 13)
  %25 = mul i32 %24, -1640531535
  %26 = lshr i64 %0, 32
  %27 = trunc nuw i64 %26 to i32
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %19
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = trunc i64 %1 to i32
  %33 = mul i32 %32, -2048144777
  %34 = add i32 %33, %16
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 13)
  %36 = mul i32 %35, -1640531535
  %37 = lshr i64 %1, 32
  %38 = trunc nuw i64 %37 to i32
  %39 = mul i32 %38, -2048144777
  %40 = add i32 %39, %20
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 13)
  %42 = mul i32 %41, -1640531535
  %43 = trunc i64 %2 to i32
  %44 = mul i32 %43, -2048144777
  %45 = add i32 %44, %25
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 13)
  %47 = mul i32 %46, -1640531535
  %48 = lshr i64 %2, 32
  %49 = trunc nuw i64 %48 to i32
  %50 = mul i32 %49, -2048144777
  %51 = add i32 %50, %31
  %52 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 13)
  %53 = mul i32 %52, -1640531535
  %54 = trunc i64 %3 to i32
  %55 = mul i32 %54, -2048144777
  %56 = add i32 %55, %36
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 13)
  %58 = mul i32 %57, -1640531535
  %59 = lshr i64 %3, 32
  %60 = trunc nuw i64 %59 to i32
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %61, %42
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13)
  %64 = mul i32 %63, -1640531535
  %65 = trunc i64 %4 to i32
  %66 = mul i32 %65, -2048144777
  %67 = add i32 %66, %47
  %68 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 13)
  %69 = mul i32 %68, -1640531535
  %70 = lshr i64 %4, 32
  %71 = trunc nuw i64 %70 to i32
  %72 = mul i32 %71, -2048144777
  %73 = add i32 %72, %53
  %74 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 13)
  %75 = mul i32 %74, -1640531535
  %76 = trunc i64 %5 to i32
  %77 = mul i32 %76, -2048144777
  %78 = add i32 %77, %58
  %79 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 13)
  %80 = mul i32 %79, -1640531535
  %81 = lshr i64 %5, 32
  %82 = trunc nuw i64 %81 to i32
  %83 = mul i32 %82, -2048144777
  %84 = add i32 %83, %64
  %85 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 13)
  %86 = mul i32 %85, -1640531535
  %87 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 1)
  %88 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 7)
  %89 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 12)
  %90 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 18)
  %91 = trunc i64 %6 to i32
  %92 = mul i32 %91, -1028477379
  %93 = add i32 %87, 63
  %94 = add i32 %93, %88
  %95 = add i32 %94, %89
  %96 = add i32 %95, %90
  %97 = add i32 %96, %92
  %98 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 17)
  %99 = mul i32 %98, 668265263
  %100 = lshr i64 %6, 32
  %101 = trunc nuw i64 %100 to i32
  %102 = mul i32 %101, -1028477379
  %103 = add i32 %99, %102
  %104 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 17)
  %105 = mul i32 %104, 668265263
  %106 = trunc i64 %7 to i32
  %107 = mul i32 %106, -1028477379
  %108 = add i32 %105, %107
  %109 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 17)
  %110 = mul i32 %109, 668265263
  %111 = lshr i64 %7, 32
  %112 = trunc nuw i64 %111 to i32
  %113 = and i32 %112, 255
  %114 = mul i32 %113, 374761393
  %115 = add i32 %110, %114
  %116 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 11)
  %117 = mul i32 %116, -1640531535
  %118 = lshr i64 %7, 40
  %119 = trunc nuw nsw i64 %118 to i32
  %120 = and i32 %119, 255
  %121 = mul i32 %120, 374761393
  %122 = add i32 %117, %121
  %123 = tail call i32 @llvm.fshl.i32(i32 %122, i32 %122, i32 11)
  %124 = mul i32 %123, -1640531535
  %125 = lshr i64 %7, 48
  %126 = trunc nuw nsw i64 %125 to i32
  %127 = and i32 %126, 255
  %128 = mul i32 %127, 374761393
  %129 = add i32 %124, %128
  %130 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 11)
  %131 = mul i32 %130, -1640531535
  %132 = lshr i32 %131, 15
  %133 = xor i32 %132, %131
  %134 = mul i32 %133, -2048144777
  %135 = lshr i32 %134, 13
  %136 = xor i32 %135, %134
  %137 = mul i32 %136, -1028477379
  %138 = lshr i32 %137, 16
  %139 = xor i32 %138, %137
  ret i32 %139
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len64(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = add i32 %16, 606290984
  %19 = add i32 %16, -2048144777
  %20 = add i32 %16, 1640531535
  %21 = trunc i64 %0 to i32
  %22 = mul i32 %21, -2048144777
  %23 = add i32 %22, %18
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 13)
  %25 = mul i32 %24, -1640531535
  %26 = lshr i64 %0, 32
  %27 = trunc nuw i64 %26 to i32
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %19
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = trunc i64 %1 to i32
  %33 = mul i32 %32, -2048144777
  %34 = add i32 %33, %16
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 13)
  %36 = mul i32 %35, -1640531535
  %37 = lshr i64 %1, 32
  %38 = trunc nuw i64 %37 to i32
  %39 = mul i32 %38, -2048144777
  %40 = add i32 %39, %20
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 13)
  %42 = mul i32 %41, -1640531535
  %43 = trunc i64 %2 to i32
  %44 = mul i32 %43, -2048144777
  %45 = add i32 %44, %25
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 13)
  %47 = mul i32 %46, -1640531535
  %48 = lshr i64 %2, 32
  %49 = trunc nuw i64 %48 to i32
  %50 = mul i32 %49, -2048144777
  %51 = add i32 %50, %31
  %52 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 13)
  %53 = mul i32 %52, -1640531535
  %54 = trunc i64 %3 to i32
  %55 = mul i32 %54, -2048144777
  %56 = add i32 %55, %36
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 13)
  %58 = mul i32 %57, -1640531535
  %59 = lshr i64 %3, 32
  %60 = trunc nuw i64 %59 to i32
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %61, %42
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13)
  %64 = mul i32 %63, -1640531535
  %65 = trunc i64 %4 to i32
  %66 = mul i32 %65, -2048144777
  %67 = add i32 %66, %47
  %68 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 13)
  %69 = mul i32 %68, -1640531535
  %70 = lshr i64 %4, 32
  %71 = trunc nuw i64 %70 to i32
  %72 = mul i32 %71, -2048144777
  %73 = add i32 %72, %53
  %74 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 13)
  %75 = mul i32 %74, -1640531535
  %76 = trunc i64 %5 to i32
  %77 = mul i32 %76, -2048144777
  %78 = add i32 %77, %58
  %79 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 13)
  %80 = mul i32 %79, -1640531535
  %81 = lshr i64 %5, 32
  %82 = trunc nuw i64 %81 to i32
  %83 = mul i32 %82, -2048144777
  %84 = add i32 %83, %64
  %85 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 13)
  %86 = mul i32 %85, -1640531535
  %87 = trunc i64 %6 to i32
  %88 = mul i32 %87, -2048144777
  %89 = add i32 %88, %69
  %90 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 13)
  %91 = mul i32 %90, -1640531535
  %92 = lshr i64 %6, 32
  %93 = trunc nuw i64 %92 to i32
  %94 = mul i32 %93, -2048144777
  %95 = add i32 %94, %75
  %96 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 13)
  %97 = mul i32 %96, -1640531535
  %98 = trunc i64 %7 to i32
  %99 = mul i32 %98, -2048144777
  %100 = add i32 %99, %80
  %101 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 13)
  %102 = mul i32 %101, -1640531535
  %103 = lshr i64 %7, 32
  %104 = trunc nuw i64 %103 to i32
  %105 = mul i32 %104, -2048144777
  %106 = add i32 %105, %86
  %107 = tail call i32 @llvm.fshl.i32(i32 %106, i32 %106, i32 13)
  %108 = mul i32 %107, -1640531535
  %109 = tail call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 1)
  %110 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 7)
  %111 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 12)
  %112 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 18)
  %113 = add i32 %109, 64
  %114 = add i32 %113, %110
  %115 = add i32 %114, %111
  %116 = add i32 %115, %112
  %117 = lshr i32 %116, 15
  %118 = xor i32 %117, %116
  %119 = mul i32 %118, -2048144777
  %120 = lshr i32 %119, 13
  %121 = xor i32 %120, %119
  %122 = mul i32 %121, -1028477379
  %123 = lshr i32 %122, 16
  %124 = xor i32 %123, %122
  ret i32 %124
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_10_10(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #4
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
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #4
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
  store i32 %50, ptr %38, align 8
  %51 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %52 = load i32, ptr %51, align 4
  %53 = mul i32 %52, -2048144777
  %54 = add i32 %53, %36
  %55 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 13)
  %56 = mul i32 %55, -1640531535
  store i32 %56, ptr %39, align 4
  %57 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %58 = load i32, ptr %57, align 8
  %59 = mul i32 %58, -2048144777
  %60 = add i32 %59, %16
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 13)
  %62 = mul i32 %61, -1640531535
  store i32 %62, ptr %40, align 8
  %63 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %64 = load i32, ptr %63, align 4
  %65 = mul i32 %64, -2048144777
  %66 = add i32 %65, %37
  %67 = tail call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 13)
  %68 = mul i32 %67, -1640531535
  store i32 %68, ptr %41, align 4
  %69 = load i32, ptr %44, align 8
  %70 = sub i32 16, %69
  %71 = icmp ult i32 %70, 10
  br i1 %71, label %81, label %72

72:                                               ; preds = %17
  %73 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 7)
  %74 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 1)
  %75 = add i32 %73, %74
  %76 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 12)
  %77 = add i32 %75, %76
  %78 = tail call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 18)
  %79 = add i32 %77, %78
  %80 = add i32 %79, 20
  br label %247

81:                                               ; preds = %17
  %82 = getelementptr inbounds nuw i8, ptr %18, i64 20
  %83 = zext nneg i32 %70 to i64
  %84 = getelementptr inbounds nuw i8, ptr %18, i64 %83
  %85 = getelementptr inbounds nuw i8, ptr %84, i64 10
  %86 = ptrtoint ptr %82 to i64
  %87 = ptrtoint ptr %85 to i64
  %88 = sub i64 %86, %87
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %85, i64 %88, i1 false)
  %89 = trunc i64 %88 to i32
  store i32 %89, ptr %44, align 8
  %90 = and i32 %89, 15
  %91 = call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 7)
  %92 = call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 1)
  %93 = add i32 %91, %92
  %94 = call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 12)
  %95 = add i32 %93, %94
  %96 = call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 18)
  %97 = add i32 %95, %96
  %98 = add i32 %97, 20
  switch i32 %90, label %246 [
    i32 12, label %99
    i32 8, label %106
    i32 4, label %115
    i32 13, label %123
    i32 9, label %130
    i32 5, label %139
    i32 14, label %154
    i32 10, label %161
    i32 6, label %170
    i32 15, label %192
    i32 11, label %199
    i32 7, label %208
    i32 3, label %217
    i32 2, label %227
    i32 1, label %237
    i32 0, label %247
  ]

99:                                               ; preds = %81
  %100 = load i32, ptr %42, align 8
  %101 = mul i32 %100, -1028477379
  %102 = add i32 %101, %98
  %103 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %104 = call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 17)
  %105 = mul i32 %104, 668265263
  br label %106

106:                                              ; preds = %99, %81
  %107 = phi ptr [ %42, %81 ], [ %103, %99 ]
  %108 = phi i32 [ %98, %81 ], [ %105, %99 ]
  %109 = load i32, ptr %107, align 1
  %110 = mul i32 %109, -1028477379
  %111 = add i32 %110, %108
  %112 = getelementptr inbounds nuw i8, ptr %107, i64 4
  %113 = call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 17)
  %114 = mul i32 %113, 668265263
  br label %115

115:                                              ; preds = %106, %81
  %116 = phi ptr [ %42, %81 ], [ %112, %106 ]
  %117 = phi i32 [ %98, %81 ], [ %114, %106 ]
  %118 = load i32, ptr %116, align 1
  %119 = mul i32 %118, -1028477379
  %120 = add i32 %119, %117
  %121 = call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 17)
  %122 = mul i32 %121, 668265263
  br label %247

123:                                              ; preds = %81
  %124 = load i32, ptr %42, align 8
  %125 = mul i32 %124, -1028477379
  %126 = add i32 %125, %98
  %127 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %128 = call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 17)
  %129 = mul i32 %128, 668265263
  br label %130

130:                                              ; preds = %123, %81
  %131 = phi ptr [ %42, %81 ], [ %127, %123 ]
  %132 = phi i32 [ %98, %81 ], [ %129, %123 ]
  %133 = load i32, ptr %131, align 1
  %134 = mul i32 %133, -1028477379
  %135 = add i32 %134, %132
  %136 = getelementptr inbounds nuw i8, ptr %131, i64 4
  %137 = call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 17)
  %138 = mul i32 %137, 668265263
  br label %139

139:                                              ; preds = %130, %81
  %140 = phi ptr [ %42, %81 ], [ %136, %130 ]
  %141 = phi i32 [ %98, %81 ], [ %138, %130 ]
  %142 = load i32, ptr %140, align 1
  %143 = mul i32 %142, -1028477379
  %144 = add i32 %143, %141
  %145 = getelementptr inbounds nuw i8, ptr %140, i64 4
  %146 = call i32 @llvm.fshl.i32(i32 %144, i32 %144, i32 17)
  %147 = mul i32 %146, 668265263
  %148 = load i8, ptr %145, align 1
  %149 = zext i8 %148 to i32
  %150 = mul i32 %149, 374761393
  %151 = add i32 %147, %150
  %152 = call i32 @llvm.fshl.i32(i32 %151, i32 %151, i32 11)
  %153 = mul i32 %152, -1640531535
  br label %247

154:                                              ; preds = %81
  %155 = load i32, ptr %42, align 8
  %156 = mul i32 %155, -1028477379
  %157 = add i32 %156, %98
  %158 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %159 = call i32 @llvm.fshl.i32(i32 %157, i32 %157, i32 17)
  %160 = mul i32 %159, 668265263
  br label %161

161:                                              ; preds = %154, %81
  %162 = phi ptr [ %42, %81 ], [ %158, %154 ]
  %163 = phi i32 [ %98, %81 ], [ %160, %154 ]
  %164 = load i32, ptr %162, align 1
  %165 = mul i32 %164, -1028477379
  %166 = add i32 %165, %163
  %167 = getelementptr inbounds nuw i8, ptr %162, i64 4
  %168 = call i32 @llvm.fshl.i32(i32 %166, i32 %166, i32 17)
  %169 = mul i32 %168, 668265263
  br label %170

170:                                              ; preds = %161, %81
  %171 = phi ptr [ %42, %81 ], [ %167, %161 ]
  %172 = phi i32 [ %98, %81 ], [ %169, %161 ]
  %173 = load i32, ptr %171, align 1
  %174 = mul i32 %173, -1028477379
  %175 = add i32 %174, %172
  %176 = getelementptr inbounds nuw i8, ptr %171, i64 4
  %177 = call i32 @llvm.fshl.i32(i32 %175, i32 %175, i32 17)
  %178 = mul i32 %177, 668265263
  %179 = getelementptr inbounds nuw i8, ptr %171, i64 5
  %180 = load i8, ptr %176, align 1
  %181 = zext i8 %180 to i32
  %182 = mul i32 %181, 374761393
  %183 = add i32 %178, %182
  %184 = call i32 @llvm.fshl.i32(i32 %183, i32 %183, i32 11)
  %185 = mul i32 %184, -1640531535
  %186 = load i8, ptr %179, align 1
  %187 = zext i8 %186 to i32
  %188 = mul i32 %187, 374761393
  %189 = add i32 %185, %188
  %190 = call i32 @llvm.fshl.i32(i32 %189, i32 %189, i32 11)
  %191 = mul i32 %190, -1640531535
  br label %247

192:                                              ; preds = %81
  %193 = load i32, ptr %42, align 8
  %194 = mul i32 %193, -1028477379
  %195 = add i32 %194, %98
  %196 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %197 = call i32 @llvm.fshl.i32(i32 %195, i32 %195, i32 17)
  %198 = mul i32 %197, 668265263
  br label %199

199:                                              ; preds = %192, %81
  %200 = phi ptr [ %42, %81 ], [ %196, %192 ]
  %201 = phi i32 [ %98, %81 ], [ %198, %192 ]
  %202 = load i32, ptr %200, align 1
  %203 = mul i32 %202, -1028477379
  %204 = add i32 %203, %201
  %205 = getelementptr inbounds nuw i8, ptr %200, i64 4
  %206 = call i32 @llvm.fshl.i32(i32 %204, i32 %204, i32 17)
  %207 = mul i32 %206, 668265263
  br label %208

208:                                              ; preds = %199, %81
  %209 = phi ptr [ %42, %81 ], [ %205, %199 ]
  %210 = phi i32 [ %98, %81 ], [ %207, %199 ]
  %211 = load i32, ptr %209, align 1
  %212 = mul i32 %211, -1028477379
  %213 = add i32 %212, %210
  %214 = getelementptr inbounds nuw i8, ptr %209, i64 4
  %215 = call i32 @llvm.fshl.i32(i32 %213, i32 %213, i32 17)
  %216 = mul i32 %215, 668265263
  br label %217

217:                                              ; preds = %208, %81
  %218 = phi ptr [ %42, %81 ], [ %214, %208 ]
  %219 = phi i32 [ %98, %81 ], [ %216, %208 ]
  %220 = getelementptr inbounds nuw i8, ptr %218, i64 1
  %221 = load i8, ptr %218, align 1
  %222 = zext i8 %221 to i32
  %223 = mul i32 %222, 374761393
  %224 = add i32 %223, %219
  %225 = call i32 @llvm.fshl.i32(i32 %224, i32 %224, i32 11)
  %226 = mul i32 %225, -1640531535
  br label %227

227:                                              ; preds = %217, %81
  %228 = phi ptr [ %42, %81 ], [ %220, %217 ]
  %229 = phi i32 [ %98, %81 ], [ %226, %217 ]
  %230 = getelementptr inbounds nuw i8, ptr %228, i64 1
  %231 = load i8, ptr %228, align 1
  %232 = zext i8 %231 to i32
  %233 = mul i32 %232, 374761393
  %234 = add i32 %233, %229
  %235 = call i32 @llvm.fshl.i32(i32 %234, i32 %234, i32 11)
  %236 = mul i32 %235, -1640531535
  br label %237

237:                                              ; preds = %227, %81
  %238 = phi ptr [ %42, %81 ], [ %230, %227 ]
  %239 = phi i32 [ %98, %81 ], [ %236, %227 ]
  %240 = load i8, ptr %238, align 1
  %241 = zext i8 %240 to i32
  %242 = mul i32 %241, 374761393
  %243 = add i32 %242, %239
  %244 = call i32 @llvm.fshl.i32(i32 %243, i32 %243, i32 11)
  %245 = mul i32 %244, -1640531535
  br label %247

246:                                              ; preds = %81
  unreachable

247:                                              ; preds = %72, %81, %115, %139, %170, %237
  %248 = phi i32 [ %191, %170 ], [ %153, %139 ], [ %122, %115 ], [ %98, %81 ], [ %245, %237 ], [ %80, %72 ]
  %249 = lshr i32 %248, 15
  %250 = xor i32 %249, %248
  %251 = mul i32 %250, -2048144777
  %252 = lshr i32 %251, 13
  %253 = xor i32 %252, %251
  %254 = mul i32 %253, -1028477379
  %255 = lshr i32 %254, 16
  %256 = xor i32 %255, %254
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #4
  ret i32 %256
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_3_20(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
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
  %35 = lshr i64 %0, 32
  %36 = trunc nuw i64 %35 to i32
  %37 = and i32 %36, -16777216
  %38 = lshr i64 %0, 32
  %39 = trunc nuw i64 %38 to i32
  %40 = and i32 %39, 16711680
  %41 = or disjoint i32 %37, %40
  %42 = lshr i64 %0, 32
  %43 = trunc nuw i64 %42 to i32
  %44 = and i32 %43, 65280
  %45 = or disjoint i32 %41, %44
  %46 = and i32 %27, 255
  %47 = or disjoint i32 %45, %46
  %48 = mul i32 %47, -2048144777
  %49 = add i32 %48, %19
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 13)
  %51 = mul i32 %50, -1640531535
  %52 = mul i32 %28, -2048144777
  %53 = add i32 %52, %16
  %54 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 13)
  %55 = mul i32 %54, -1640531535
  %56 = mul i32 %30, -2048144777
  %57 = add i32 %56, %20
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  %60 = trunc i64 %2 to i32
  %61 = lshr i64 %2, 32
  %62 = trunc nuw i64 %61 to i32
  %63 = lshr i64 %2, 40
  %64 = trunc nuw nsw i64 %63 to i32
  %65 = lshr i64 %2, 48
  %66 = trunc nuw nsw i64 %65 to i32
  %67 = and i32 %66, 255
  %68 = mul i32 %67, 374761393
  %69 = and i32 %64, 255
  %70 = mul i32 %69, 374761393
  %71 = and i32 %62, 255
  %72 = mul i32 %71, 374761393
  %73 = mul i32 %60, -1028477379
  %74 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 1)
  %75 = add i32 %74, 23
  %76 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 7)
  %77 = add i32 %75, %76
  %78 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 12)
  %79 = add i32 %77, %78
  %80 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 18)
  %81 = add i32 %79, %80
  %82 = add i32 %73, %81
  %83 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 17)
  %84 = mul i32 %83, 668265263
  %85 = add i32 %72, %84
  %86 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 11)
  %87 = mul i32 %86, -1640531535
  %88 = add i32 %70, %87
  %89 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 11)
  %90 = mul i32 %89, -1640531535
  %91 = add i32 %68, %90
  %92 = tail call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 11)
  %93 = mul i32 %92, -1640531535
  %94 = lshr i32 %93, 15
  %95 = xor i32 %94, %93
  %96 = mul i32 %95, -2048144777
  %97 = lshr i32 %96, 13
  %98 = xor i32 %97, %96
  %99 = mul i32 %98, -1028477379
  %100 = lshr i32 %99, 16
  %101 = xor i32 %100, %99
  ret i32 %101
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_s32_20_13(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16) local_unnamed_addr #0 {
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %18) #4
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
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %19) #4
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
  %50 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %51 = load i32, ptr %50, align 4
  %52 = mul i32 %51, -2048144777
  %53 = add i32 %52, %36
  %54 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 13)
  %55 = mul i32 %54, -1640531535
  %56 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %57 = load i32, ptr %56, align 8
  %58 = mul i32 %57, -2048144777
  %59 = add i32 %58, %16
  %60 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 13)
  %61 = mul i32 %60, -1640531535
  %62 = getelementptr inbounds nuw i8, ptr %18, i64 12
  %63 = load i32, ptr %62, align 4
  %64 = mul i32 %63, -2048144777
  %65 = add i32 %64, %37
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 13)
  %67 = mul i32 %66, -1640531535
  %68 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %69 = load i32, ptr %68, align 16
  store i32 %69, ptr %42, align 8
  store i32 4, ptr %44, align 8
  %70 = getelementptr inbounds nuw i8, ptr %19, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %70, ptr noundef nonnull readonly align 4 dereferenceable(12) %43, i64 12, i1 false)
  %71 = mul i32 %69, -2048144777
  %72 = add i32 %71, %49
  %73 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 13)
  %74 = mul i32 %73, -1640531535
  store i32 %74, ptr %38, align 8
  %75 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %76 = load i32, ptr %75, align 4
  %77 = mul i32 %76, -2048144777
  %78 = add i32 %77, %55
  %79 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 13)
  %80 = mul i32 %79, -1640531535
  store i32 %80, ptr %39, align 4
  %81 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %82 = load i32, ptr %81, align 8
  %83 = mul i32 %82, -2048144777
  %84 = add i32 %83, %61
  %85 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 13)
  %86 = mul i32 %85, -1640531535
  store i32 %86, ptr %40, align 8
  %87 = getelementptr inbounds nuw i8, ptr %19, i64 36
  %88 = load i32, ptr %87, align 4
  %89 = mul i32 %88, -2048144777
  %90 = add i32 %89, %67
  %91 = tail call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 13)
  %92 = mul i32 %91, -1640531535
  store i32 %92, ptr %41, align 4
  %93 = load i32, ptr %44, align 8
  %94 = sub i32 16, %93
  %95 = icmp ult i32 %94, 13
  br i1 %95, label %105, label %96

96:                                               ; preds = %17
  %97 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 1)
  %98 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 7)
  %99 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 12)
  %100 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 18)
  %101 = add i32 %97, 33
  %102 = add i32 %101, %98
  %103 = add i32 %102, %99
  %104 = add i32 %103, %100
  br label %271

105:                                              ; preds = %17
  %106 = getelementptr inbounds nuw i8, ptr %18, i64 33
  %107 = zext nneg i32 %94 to i64
  %108 = getelementptr inbounds nuw i8, ptr %18, i64 %107
  %109 = getelementptr inbounds nuw i8, ptr %108, i64 20
  %110 = ptrtoint ptr %106 to i64
  %111 = ptrtoint ptr %109 to i64
  %112 = sub i64 %110, %111
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %42, ptr nonnull readonly align 1 %109, i64 %112, i1 false)
  %113 = trunc i64 %112 to i32
  store i32 %113, ptr %44, align 8
  %114 = and i32 %113, 15
  %115 = call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 1)
  %116 = call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 7)
  %117 = call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 12)
  %118 = call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 18)
  %119 = add i32 %115, 33
  %120 = add i32 %119, %116
  %121 = add i32 %120, %117
  %122 = add i32 %121, %118
  switch i32 %114, label %270 [
    i32 12, label %123
    i32 8, label %130
    i32 4, label %139
    i32 13, label %147
    i32 9, label %154
    i32 5, label %163
    i32 14, label %178
    i32 10, label %185
    i32 6, label %194
    i32 15, label %216
    i32 11, label %223
    i32 7, label %232
    i32 3, label %241
    i32 2, label %251
    i32 1, label %261
    i32 0, label %271
  ]

123:                                              ; preds = %105
  %124 = load i32, ptr %42, align 8
  %125 = mul i32 %124, -1028477379
  %126 = add i32 %125, %122
  %127 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %128 = call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 17)
  %129 = mul i32 %128, 668265263
  br label %130

130:                                              ; preds = %123, %105
  %131 = phi ptr [ %42, %105 ], [ %127, %123 ]
  %132 = phi i32 [ %122, %105 ], [ %129, %123 ]
  %133 = load i32, ptr %131, align 1
  %134 = mul i32 %133, -1028477379
  %135 = add i32 %134, %132
  %136 = getelementptr inbounds nuw i8, ptr %131, i64 4
  %137 = call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 17)
  %138 = mul i32 %137, 668265263
  br label %139

139:                                              ; preds = %130, %105
  %140 = phi ptr [ %42, %105 ], [ %136, %130 ]
  %141 = phi i32 [ %122, %105 ], [ %138, %130 ]
  %142 = load i32, ptr %140, align 1
  %143 = mul i32 %142, -1028477379
  %144 = add i32 %143, %141
  %145 = call i32 @llvm.fshl.i32(i32 %144, i32 %144, i32 17)
  %146 = mul i32 %145, 668265263
  br label %271

147:                                              ; preds = %105
  %148 = load i32, ptr %42, align 8
  %149 = mul i32 %148, -1028477379
  %150 = add i32 %149, %122
  %151 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %152 = call i32 @llvm.fshl.i32(i32 %150, i32 %150, i32 17)
  %153 = mul i32 %152, 668265263
  br label %154

154:                                              ; preds = %147, %105
  %155 = phi ptr [ %42, %105 ], [ %151, %147 ]
  %156 = phi i32 [ %122, %105 ], [ %153, %147 ]
  %157 = load i32, ptr %155, align 1
  %158 = mul i32 %157, -1028477379
  %159 = add i32 %158, %156
  %160 = getelementptr inbounds nuw i8, ptr %155, i64 4
  %161 = call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 17)
  %162 = mul i32 %161, 668265263
  br label %163

163:                                              ; preds = %154, %105
  %164 = phi ptr [ %42, %105 ], [ %160, %154 ]
  %165 = phi i32 [ %122, %105 ], [ %162, %154 ]
  %166 = load i32, ptr %164, align 1
  %167 = mul i32 %166, -1028477379
  %168 = add i32 %167, %165
  %169 = getelementptr inbounds nuw i8, ptr %164, i64 4
  %170 = call i32 @llvm.fshl.i32(i32 %168, i32 %168, i32 17)
  %171 = mul i32 %170, 668265263
  %172 = load i8, ptr %169, align 1
  %173 = zext i8 %172 to i32
  %174 = mul i32 %173, 374761393
  %175 = add i32 %171, %174
  %176 = call i32 @llvm.fshl.i32(i32 %175, i32 %175, i32 11)
  %177 = mul i32 %176, -1640531535
  br label %271

178:                                              ; preds = %105
  %179 = load i32, ptr %42, align 8
  %180 = mul i32 %179, -1028477379
  %181 = add i32 %180, %122
  %182 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %183 = call i32 @llvm.fshl.i32(i32 %181, i32 %181, i32 17)
  %184 = mul i32 %183, 668265263
  br label %185

185:                                              ; preds = %178, %105
  %186 = phi ptr [ %42, %105 ], [ %182, %178 ]
  %187 = phi i32 [ %122, %105 ], [ %184, %178 ]
  %188 = load i32, ptr %186, align 1
  %189 = mul i32 %188, -1028477379
  %190 = add i32 %189, %187
  %191 = getelementptr inbounds nuw i8, ptr %186, i64 4
  %192 = call i32 @llvm.fshl.i32(i32 %190, i32 %190, i32 17)
  %193 = mul i32 %192, 668265263
  br label %194

194:                                              ; preds = %185, %105
  %195 = phi ptr [ %42, %105 ], [ %191, %185 ]
  %196 = phi i32 [ %122, %105 ], [ %193, %185 ]
  %197 = load i32, ptr %195, align 1
  %198 = mul i32 %197, -1028477379
  %199 = add i32 %198, %196
  %200 = getelementptr inbounds nuw i8, ptr %195, i64 4
  %201 = call i32 @llvm.fshl.i32(i32 %199, i32 %199, i32 17)
  %202 = mul i32 %201, 668265263
  %203 = getelementptr inbounds nuw i8, ptr %195, i64 5
  %204 = load i8, ptr %200, align 1
  %205 = zext i8 %204 to i32
  %206 = mul i32 %205, 374761393
  %207 = add i32 %202, %206
  %208 = call i32 @llvm.fshl.i32(i32 %207, i32 %207, i32 11)
  %209 = mul i32 %208, -1640531535
  %210 = load i8, ptr %203, align 1
  %211 = zext i8 %210 to i32
  %212 = mul i32 %211, 374761393
  %213 = add i32 %209, %212
  %214 = call i32 @llvm.fshl.i32(i32 %213, i32 %213, i32 11)
  %215 = mul i32 %214, -1640531535
  br label %271

216:                                              ; preds = %105
  %217 = load i32, ptr %42, align 8
  %218 = mul i32 %217, -1028477379
  %219 = add i32 %218, %122
  %220 = getelementptr inbounds nuw i8, ptr %19, i64 28
  %221 = call i32 @llvm.fshl.i32(i32 %219, i32 %219, i32 17)
  %222 = mul i32 %221, 668265263
  br label %223

223:                                              ; preds = %216, %105
  %224 = phi ptr [ %42, %105 ], [ %220, %216 ]
  %225 = phi i32 [ %122, %105 ], [ %222, %216 ]
  %226 = load i32, ptr %224, align 1
  %227 = mul i32 %226, -1028477379
  %228 = add i32 %227, %225
  %229 = getelementptr inbounds nuw i8, ptr %224, i64 4
  %230 = call i32 @llvm.fshl.i32(i32 %228, i32 %228, i32 17)
  %231 = mul i32 %230, 668265263
  br label %232

232:                                              ; preds = %223, %105
  %233 = phi ptr [ %42, %105 ], [ %229, %223 ]
  %234 = phi i32 [ %122, %105 ], [ %231, %223 ]
  %235 = load i32, ptr %233, align 1
  %236 = mul i32 %235, -1028477379
  %237 = add i32 %236, %234
  %238 = getelementptr inbounds nuw i8, ptr %233, i64 4
  %239 = call i32 @llvm.fshl.i32(i32 %237, i32 %237, i32 17)
  %240 = mul i32 %239, 668265263
  br label %241

241:                                              ; preds = %232, %105
  %242 = phi ptr [ %42, %105 ], [ %238, %232 ]
  %243 = phi i32 [ %122, %105 ], [ %240, %232 ]
  %244 = getelementptr inbounds nuw i8, ptr %242, i64 1
  %245 = load i8, ptr %242, align 1
  %246 = zext i8 %245 to i32
  %247 = mul i32 %246, 374761393
  %248 = add i32 %247, %243
  %249 = call i32 @llvm.fshl.i32(i32 %248, i32 %248, i32 11)
  %250 = mul i32 %249, -1640531535
  br label %251

251:                                              ; preds = %241, %105
  %252 = phi ptr [ %42, %105 ], [ %244, %241 ]
  %253 = phi i32 [ %122, %105 ], [ %250, %241 ]
  %254 = getelementptr inbounds nuw i8, ptr %252, i64 1
  %255 = load i8, ptr %252, align 1
  %256 = zext i8 %255 to i32
  %257 = mul i32 %256, 374761393
  %258 = add i32 %257, %253
  %259 = call i32 @llvm.fshl.i32(i32 %258, i32 %258, i32 11)
  %260 = mul i32 %259, -1640531535
  br label %261

261:                                              ; preds = %251, %105
  %262 = phi ptr [ %42, %105 ], [ %254, %251 ]
  %263 = phi i32 [ %122, %105 ], [ %260, %251 ]
  %264 = load i8, ptr %262, align 1
  %265 = zext i8 %264 to i32
  %266 = mul i32 %265, 374761393
  %267 = add i32 %266, %263
  %268 = call i32 @llvm.fshl.i32(i32 %267, i32 %267, i32 11)
  %269 = mul i32 %268, -1640531535
  br label %271

270:                                              ; preds = %105
  unreachable

271:                                              ; preds = %96, %105, %139, %163, %194, %261
  %272 = phi i32 [ %215, %194 ], [ %177, %163 ], [ %146, %139 ], [ %122, %105 ], [ %269, %261 ], [ %104, %96 ]
  %273 = lshr i32 %272, 15
  %274 = xor i32 %273, %272
  %275 = mul i32 %274, -2048144777
  %276 = lshr i32 %275, 13
  %277 = xor i32 %276, %275
  %278 = mul i32 %277, -1028477379
  %279 = lshr i32 %278, 16
  %280 = xor i32 %279, %278
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %19) #4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %18) #4
  ret i32 %280
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"MaxTLSAlign", i32 65536}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
