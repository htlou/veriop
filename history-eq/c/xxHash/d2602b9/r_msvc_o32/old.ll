; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/d2602b9/wrap_o32.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/d2602b9/wrap_o32.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.33.0"

%struct.XXH_NAMESPACEXXH32_state_s = type { i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @target_xxh32_len0(ptr noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len15(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 374761408
  %4 = load i32, ptr %0, align 1
  %5 = mul i32 %4, -1028477379
  %6 = add i32 %3, %5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 17)
  %9 = mul i32 %8, 668265263
  %10 = load i32, ptr %7, align 1
  %11 = mul i32 %10, -1028477379
  %12 = add i32 %9, %11
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 17)
  %15 = mul i32 %14, 668265263
  %16 = load i32, ptr %13, align 1
  %17 = mul i32 %16, -1028477379
  %18 = add i32 %15, %17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %20 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 17)
  %21 = mul i32 %20, 668265263
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %23 = load i8, ptr %19, align 1
  %24 = zext i8 %23 to i32
  %25 = mul i32 %24, 374761393
  %26 = add i32 %21, %25
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 11)
  %28 = mul i32 %27, -1640531535
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %30 = load i8, ptr %22, align 1
  %31 = zext i8 %30 to i32
  %32 = mul i32 %31, 374761393
  %33 = add i32 %28, %32
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 11)
  %35 = mul i32 %34, -1640531535
  %36 = load i8, ptr %29, align 1
  %37 = zext i8 %36 to i32
  %38 = mul i32 %37, 374761393
  %39 = add i32 %35, %38
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 11)
  %41 = mul i32 %40, -1640531535
  %42 = lshr i32 %41, 15
  %43 = xor i32 %42, %41
  %44 = mul i32 %43, -2048144777
  %45 = lshr i32 %44, 13
  %46 = xor i32 %45, %44
  %47 = mul i32 %46, -1028477379
  %48 = lshr i32 %47, 16
  %49 = xor i32 %48, %47
  ret i32 %49
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len16(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %7 = load i32, ptr %6, align 1
  %8 = mul i32 %7, -2048144777
  %9 = add i32 %5, %8
  %10 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 13)
  %11 = mul i32 %10, -1640531535
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = load i32, ptr %12, align 1
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %14, %1
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %19 = load i32, ptr %18, align 1
  %20 = mul i32 %19, -2048144777
  %21 = add i32 %4, %20
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 13)
  %23 = mul i32 %22, -1640531535
  %24 = load i32, ptr %0, align 1
  %25 = mul i32 %24, -2048144777
  %26 = add i32 %3, %25
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 13)
  %28 = mul i32 %27, -1640531535
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 1)
  %30 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 7)
  %31 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 12)
  %32 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 18)
  %33 = add i32 %32, 16
  %34 = add i32 %33, %31
  %35 = add i32 %34, %30
  %36 = add i32 %35, %29
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len17(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %7 = load i32, ptr %6, align 1
  %8 = mul i32 %7, -2048144777
  %9 = add i32 %5, %8
  %10 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 13)
  %11 = mul i32 %10, -1640531535
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = load i32, ptr %12, align 1
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %14, %1
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %19 = load i32, ptr %18, align 1
  %20 = mul i32 %19, -2048144777
  %21 = add i32 %4, %20
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 13)
  %23 = mul i32 %22, -1640531535
  %24 = load i32, ptr %0, align 1
  %25 = mul i32 %24, -2048144777
  %26 = add i32 %3, %25
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 13)
  %28 = mul i32 %27, -1640531535
  %29 = getelementptr i8, ptr %0, i64 16
  %30 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 1)
  %31 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 7)
  %32 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 12)
  %33 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 18)
  %34 = load i8, ptr %29, align 1
  %35 = zext i8 %34 to i32
  %36 = mul i32 %35, 374761393
  %37 = add i32 %33, 17
  %38 = add i32 %37, %32
  %39 = add i32 %38, %36
  %40 = add i32 %39, %31
  %41 = add i32 %40, %30
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 11)
  %43 = mul i32 %42, -1640531535
  %44 = lshr i32 %43, 15
  %45 = xor i32 %44, %43
  %46 = mul i32 %45, -2048144777
  %47 = lshr i32 %46, 13
  %48 = xor i32 %47, %46
  %49 = mul i32 %48, -1028477379
  %50 = lshr i32 %49, 16
  %51 = xor i32 %50, %49
  ret i32 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len20(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %7 = load i32, ptr %6, align 1
  %8 = mul i32 %7, -2048144777
  %9 = add i32 %5, %8
  %10 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 13)
  %11 = mul i32 %10, -1640531535
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %13 = load i32, ptr %12, align 1
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %14, %1
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %19 = load i32, ptr %18, align 1
  %20 = mul i32 %19, -2048144777
  %21 = add i32 %4, %20
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 13)
  %23 = mul i32 %22, -1640531535
  %24 = load i32, ptr %0, align 1
  %25 = mul i32 %24, -2048144777
  %26 = add i32 %3, %25
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 13)
  %28 = mul i32 %27, -1640531535
  %29 = getelementptr i8, ptr %0, i64 16
  %30 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 1)
  %31 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 7)
  %32 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 12)
  %33 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 18)
  %34 = load i32, ptr %29, align 1
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %33, 20
  %37 = add i32 %36, %35
  %38 = add i32 %37, %32
  %39 = add i32 %38, %31
  %40 = add i32 %39, %30
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 17)
  %42 = mul i32 %41, 668265263
  %43 = lshr i32 %42, 15
  %44 = xor i32 %43, %42
  %45 = mul i32 %44, -2048144777
  %46 = lshr i32 %45, 13
  %47 = xor i32 %46, %45
  %48 = mul i32 %47, -1028477379
  %49 = lshr i32 %48, 16
  %50 = xor i32 %49, %48
  ret i32 %50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len31(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = load i32, ptr %0, align 1
  %7 = mul i32 %6, -2048144777
  %8 = add i32 %7, %3
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 13)
  %10 = mul i32 %9, -1640531535
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %12 = load i32, ptr %11, align 1
  %13 = mul i32 %12, -2048144777
  %14 = add i32 %13, %4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 13)
  %16 = mul i32 %15, -1640531535
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %18 = load i32, ptr %17, align 1
  %19 = mul i32 %18, -2048144777
  %20 = add i32 %19, %1
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 13)
  %22 = mul i32 %21, -1640531535
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %24 = load i32, ptr %23, align 1
  %25 = mul i32 %24, -2048144777
  %26 = add i32 %25, %5
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 13)
  %28 = mul i32 %27, -1640531535
  %29 = getelementptr i8, ptr %0, i64 16
  %30 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 1)
  %31 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 7)
  %32 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 12)
  %33 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 18)
  %34 = load i32, ptr %29, align 1
  %35 = mul i32 %34, -1028477379
  %36 = add i32 %30, 31
  %37 = add i32 %36, %31
  %38 = add i32 %37, %32
  %39 = add i32 %38, %33
  %40 = add i32 %39, %35
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %42 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 17)
  %43 = mul i32 %42, 668265263
  %44 = load i32, ptr %41, align 1
  %45 = mul i32 %44, -1028477379
  %46 = add i32 %43, %45
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %48 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 17)
  %49 = mul i32 %48, 668265263
  %50 = load i32, ptr %47, align 1
  %51 = mul i32 %50, -1028477379
  %52 = add i32 %49, %51
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %54 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 17)
  %55 = mul i32 %54, 668265263
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %57 = load i8, ptr %53, align 1
  %58 = zext i8 %57 to i32
  %59 = mul i32 %58, 374761393
  %60 = add i32 %55, %59
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 11)
  %62 = mul i32 %61, -1640531535
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %64 = load i8, ptr %56, align 1
  %65 = zext i8 %64 to i32
  %66 = mul i32 %65, 374761393
  %67 = add i32 %62, %66
  %68 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 11)
  %69 = mul i32 %68, -1640531535
  %70 = load i8, ptr %63, align 1
  %71 = zext i8 %70 to i32
  %72 = mul i32 %71, 374761393
  %73 = add i32 %69, %72
  %74 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 11)
  %75 = mul i32 %74, -1640531535
  %76 = lshr i32 %75, 15
  %77 = xor i32 %76, %75
  %78 = mul i32 %77, -2048144777
  %79 = lshr i32 %78, 13
  %80 = xor i32 %79, %78
  %81 = mul i32 %80, -1028477379
  %82 = lshr i32 %81, 16
  %83 = xor i32 %82, %81
  ret i32 %83
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len32(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = load i32, ptr %0, align 1
  %7 = mul i32 %6, -2048144777
  %8 = add i32 %7, %3
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 13)
  %10 = mul i32 %9, -1640531535
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %12 = load i32, ptr %11, align 1
  %13 = mul i32 %12, -2048144777
  %14 = add i32 %13, %4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 13)
  %16 = mul i32 %15, -1640531535
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %18 = load i32, ptr %17, align 1
  %19 = mul i32 %18, -2048144777
  %20 = add i32 %19, %1
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 13)
  %22 = mul i32 %21, -1640531535
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %24 = load i32, ptr %23, align 1
  %25 = mul i32 %24, -2048144777
  %26 = add i32 %25, %5
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 13)
  %28 = mul i32 %27, -1640531535
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %30 = load i32, ptr %29, align 1
  %31 = mul i32 %30, -2048144777
  %32 = add i32 %31, %10
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 13)
  %34 = mul i32 %33, -1640531535
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %36 = load i32, ptr %35, align 1
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %16
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %42 = load i32, ptr %41, align 1
  %43 = mul i32 %42, -2048144777
  %44 = add i32 %43, %22
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 13)
  %46 = mul i32 %45, -1640531535
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %48 = load i32, ptr %47, align 1
  %49 = mul i32 %48, -2048144777
  %50 = add i32 %49, %28
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 13)
  %52 = mul i32 %51, -1640531535
  %53 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 1)
  %54 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 7)
  %55 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 12)
  %56 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 18)
  %57 = add i32 %53, 32
  %58 = add i32 %57, %54
  %59 = add i32 %58, %55
  %60 = add i32 %59, %56
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len47(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = load i32, ptr %0, align 1
  %7 = mul i32 %6, -2048144777
  %8 = add i32 %7, %3
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 13)
  %10 = mul i32 %9, -1640531535
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %12 = load i32, ptr %11, align 1
  %13 = mul i32 %12, -2048144777
  %14 = add i32 %13, %4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 13)
  %16 = mul i32 %15, -1640531535
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %18 = load i32, ptr %17, align 1
  %19 = mul i32 %18, -2048144777
  %20 = add i32 %19, %1
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 13)
  %22 = mul i32 %21, -1640531535
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %24 = load i32, ptr %23, align 1
  %25 = mul i32 %24, -2048144777
  %26 = add i32 %25, %5
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 13)
  %28 = mul i32 %27, -1640531535
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %30 = load i32, ptr %29, align 1
  %31 = mul i32 %30, -2048144777
  %32 = add i32 %31, %10
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 13)
  %34 = mul i32 %33, -1640531535
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %36 = load i32, ptr %35, align 1
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %16
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %42 = load i32, ptr %41, align 1
  %43 = mul i32 %42, -2048144777
  %44 = add i32 %43, %22
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 13)
  %46 = mul i32 %45, -1640531535
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %48 = load i32, ptr %47, align 1
  %49 = mul i32 %48, -2048144777
  %50 = add i32 %49, %28
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 13)
  %52 = mul i32 %51, -1640531535
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %54 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 1)
  %55 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 7)
  %56 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 12)
  %57 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 18)
  %58 = load i32, ptr %53, align 1
  %59 = mul i32 %58, -1028477379
  %60 = add i32 %54, 47
  %61 = add i32 %60, %55
  %62 = add i32 %61, %56
  %63 = add i32 %62, %57
  %64 = add i32 %63, %59
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %66 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 17)
  %67 = mul i32 %66, 668265263
  %68 = load i32, ptr %65, align 1
  %69 = mul i32 %68, -1028477379
  %70 = add i32 %67, %69
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %72 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 17)
  %73 = mul i32 %72, 668265263
  %74 = load i32, ptr %71, align 1
  %75 = mul i32 %74, -1028477379
  %76 = add i32 %73, %75
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %78 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 17)
  %79 = mul i32 %78, 668265263
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 45
  %81 = load i8, ptr %77, align 1
  %82 = zext i8 %81 to i32
  %83 = mul i32 %82, 374761393
  %84 = add i32 %79, %83
  %85 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 11)
  %86 = mul i32 %85, -1640531535
  %87 = getelementptr inbounds nuw i8, ptr %0, i64 46
  %88 = load i8, ptr %80, align 1
  %89 = zext i8 %88 to i32
  %90 = mul i32 %89, 374761393
  %91 = add i32 %86, %90
  %92 = tail call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 11)
  %93 = mul i32 %92, -1640531535
  %94 = load i8, ptr %87, align 1
  %95 = zext i8 %94 to i32
  %96 = mul i32 %95, 374761393
  %97 = add i32 %93, %96
  %98 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 11)
  %99 = mul i32 %98, -1640531535
  %100 = lshr i32 %99, 15
  %101 = xor i32 %100, %99
  %102 = mul i32 %101, -2048144777
  %103 = lshr i32 %102, 13
  %104 = xor i32 %103, %102
  %105 = mul i32 %104, -1028477379
  %106 = lshr i32 %105, 16
  %107 = xor i32 %106, %105
  ret i32 %107
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len48(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = load i32, ptr %0, align 1
  %7 = mul i32 %6, -2048144777
  %8 = add i32 %7, %3
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 13)
  %10 = mul i32 %9, -1640531535
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %12 = load i32, ptr %11, align 1
  %13 = mul i32 %12, -2048144777
  %14 = add i32 %13, %4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 13)
  %16 = mul i32 %15, -1640531535
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %18 = load i32, ptr %17, align 1
  %19 = mul i32 %18, -2048144777
  %20 = add i32 %19, %1
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 13)
  %22 = mul i32 %21, -1640531535
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %24 = load i32, ptr %23, align 1
  %25 = mul i32 %24, -2048144777
  %26 = add i32 %25, %5
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 13)
  %28 = mul i32 %27, -1640531535
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %30 = load i32, ptr %29, align 1
  %31 = mul i32 %30, -2048144777
  %32 = add i32 %31, %10
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 13)
  %34 = mul i32 %33, -1640531535
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %36 = load i32, ptr %35, align 1
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %16
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %42 = load i32, ptr %41, align 1
  %43 = mul i32 %42, -2048144777
  %44 = add i32 %43, %22
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 13)
  %46 = mul i32 %45, -1640531535
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %48 = load i32, ptr %47, align 1
  %49 = mul i32 %48, -2048144777
  %50 = add i32 %49, %28
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 13)
  %52 = mul i32 %51, -1640531535
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %54 = load i32, ptr %53, align 1
  %55 = mul i32 %54, -2048144777
  %56 = add i32 %55, %34
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 13)
  %58 = mul i32 %57, -1640531535
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %60 = load i32, ptr %59, align 1
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %61, %40
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13)
  %64 = mul i32 %63, -1640531535
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %66 = load i32, ptr %65, align 1
  %67 = mul i32 %66, -2048144777
  %68 = add i32 %67, %46
  %69 = tail call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 13)
  %70 = mul i32 %69, -1640531535
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %72 = load i32, ptr %71, align 1
  %73 = mul i32 %72, -2048144777
  %74 = add i32 %73, %52
  %75 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 13)
  %76 = mul i32 %75, -1640531535
  %77 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 1)
  %78 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 7)
  %79 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 12)
  %80 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 18)
  %81 = add i32 %77, 48
  %82 = add i32 %81, %78
  %83 = add i32 %82, %79
  %84 = add i32 %83, %80
  %85 = lshr i32 %84, 15
  %86 = xor i32 %85, %84
  %87 = mul i32 %86, -2048144777
  %88 = lshr i32 %87, 13
  %89 = xor i32 %88, %87
  %90 = mul i32 %89, -1028477379
  %91 = lshr i32 %90, 16
  %92 = xor i32 %91, %90
  ret i32 %92
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len63(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = load i32, ptr %0, align 1
  %7 = mul i32 %6, -2048144777
  %8 = add i32 %7, %3
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 13)
  %10 = mul i32 %9, -1640531535
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %12 = load i32, ptr %11, align 1
  %13 = mul i32 %12, -2048144777
  %14 = add i32 %13, %4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 13)
  %16 = mul i32 %15, -1640531535
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %18 = load i32, ptr %17, align 1
  %19 = mul i32 %18, -2048144777
  %20 = add i32 %19, %1
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 13)
  %22 = mul i32 %21, -1640531535
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %24 = load i32, ptr %23, align 1
  %25 = mul i32 %24, -2048144777
  %26 = add i32 %25, %5
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 13)
  %28 = mul i32 %27, -1640531535
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %30 = load i32, ptr %29, align 1
  %31 = mul i32 %30, -2048144777
  %32 = add i32 %31, %10
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 13)
  %34 = mul i32 %33, -1640531535
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %36 = load i32, ptr %35, align 1
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %16
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %42 = load i32, ptr %41, align 1
  %43 = mul i32 %42, -2048144777
  %44 = add i32 %43, %22
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 13)
  %46 = mul i32 %45, -1640531535
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %48 = load i32, ptr %47, align 1
  %49 = mul i32 %48, -2048144777
  %50 = add i32 %49, %28
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 13)
  %52 = mul i32 %51, -1640531535
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %54 = load i32, ptr %53, align 1
  %55 = mul i32 %54, -2048144777
  %56 = add i32 %55, %34
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 13)
  %58 = mul i32 %57, -1640531535
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %60 = load i32, ptr %59, align 1
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %61, %40
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13)
  %64 = mul i32 %63, -1640531535
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %66 = load i32, ptr %65, align 1
  %67 = mul i32 %66, -2048144777
  %68 = add i32 %67, %46
  %69 = tail call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 13)
  %70 = mul i32 %69, -1640531535
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %72 = load i32, ptr %71, align 1
  %73 = mul i32 %72, -2048144777
  %74 = add i32 %73, %52
  %75 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 13)
  %76 = mul i32 %75, -1640531535
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %78 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 1)
  %79 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 7)
  %80 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 12)
  %81 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 18)
  %82 = load i32, ptr %77, align 1
  %83 = mul i32 %82, -1028477379
  %84 = add i32 %78, 63
  %85 = add i32 %84, %79
  %86 = add i32 %85, %80
  %87 = add i32 %86, %81
  %88 = add i32 %87, %83
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %90 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 17)
  %91 = mul i32 %90, 668265263
  %92 = load i32, ptr %89, align 1
  %93 = mul i32 %92, -1028477379
  %94 = add i32 %91, %93
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %96 = tail call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 17)
  %97 = mul i32 %96, 668265263
  %98 = load i32, ptr %95, align 1
  %99 = mul i32 %98, -1028477379
  %100 = add i32 %97, %99
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %102 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 17)
  %103 = mul i32 %102, 668265263
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 61
  %105 = load i8, ptr %101, align 1
  %106 = zext i8 %105 to i32
  %107 = mul i32 %106, 374761393
  %108 = add i32 %103, %107
  %109 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 11)
  %110 = mul i32 %109, -1640531535
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 62
  %112 = load i8, ptr %104, align 1
  %113 = zext i8 %112 to i32
  %114 = mul i32 %113, 374761393
  %115 = add i32 %110, %114
  %116 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 11)
  %117 = mul i32 %116, -1640531535
  %118 = load i8, ptr %111, align 1
  %119 = zext i8 %118 to i32
  %120 = mul i32 %119, 374761393
  %121 = add i32 %117, %120
  %122 = tail call i32 @llvm.fshl.i32(i32 %121, i32 %121, i32 11)
  %123 = mul i32 %122, -1640531535
  %124 = lshr i32 %123, 15
  %125 = xor i32 %124, %123
  %126 = mul i32 %125, -2048144777
  %127 = lshr i32 %126, 13
  %128 = xor i32 %127, %126
  %129 = mul i32 %128, -1028477379
  %130 = lshr i32 %129, 16
  %131 = xor i32 %130, %129
  ret i32 %131
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len64(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = load i32, ptr %0, align 1
  %7 = mul i32 %6, -2048144777
  %8 = add i32 %7, %3
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 13)
  %10 = mul i32 %9, -1640531535
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %12 = load i32, ptr %11, align 1
  %13 = mul i32 %12, -2048144777
  %14 = add i32 %13, %4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 13)
  %16 = mul i32 %15, -1640531535
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %18 = load i32, ptr %17, align 1
  %19 = mul i32 %18, -2048144777
  %20 = add i32 %19, %1
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 13)
  %22 = mul i32 %21, -1640531535
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %24 = load i32, ptr %23, align 1
  %25 = mul i32 %24, -2048144777
  %26 = add i32 %25, %5
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 13)
  %28 = mul i32 %27, -1640531535
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %30 = load i32, ptr %29, align 1
  %31 = mul i32 %30, -2048144777
  %32 = add i32 %31, %10
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 13)
  %34 = mul i32 %33, -1640531535
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %36 = load i32, ptr %35, align 1
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %16
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13)
  %40 = mul i32 %39, -1640531535
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %42 = load i32, ptr %41, align 1
  %43 = mul i32 %42, -2048144777
  %44 = add i32 %43, %22
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 13)
  %46 = mul i32 %45, -1640531535
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %48 = load i32, ptr %47, align 1
  %49 = mul i32 %48, -2048144777
  %50 = add i32 %49, %28
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 13)
  %52 = mul i32 %51, -1640531535
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %54 = load i32, ptr %53, align 1
  %55 = mul i32 %54, -2048144777
  %56 = add i32 %55, %34
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 13)
  %58 = mul i32 %57, -1640531535
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %60 = load i32, ptr %59, align 1
  %61 = mul i32 %60, -2048144777
  %62 = add i32 %61, %40
  %63 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13)
  %64 = mul i32 %63, -1640531535
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %66 = load i32, ptr %65, align 1
  %67 = mul i32 %66, -2048144777
  %68 = add i32 %67, %46
  %69 = tail call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 13)
  %70 = mul i32 %69, -1640531535
  %71 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %72 = load i32, ptr %71, align 1
  %73 = mul i32 %72, -2048144777
  %74 = add i32 %73, %52
  %75 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 13)
  %76 = mul i32 %75, -1640531535
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %78 = load i32, ptr %77, align 1
  %79 = mul i32 %78, -2048144777
  %80 = add i32 %79, %58
  %81 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 13)
  %82 = mul i32 %81, -1640531535
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %84 = load i32, ptr %83, align 1
  %85 = mul i32 %84, -2048144777
  %86 = add i32 %85, %64
  %87 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 13)
  %88 = mul i32 %87, -1640531535
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %90 = load i32, ptr %89, align 1
  %91 = mul i32 %90, -2048144777
  %92 = add i32 %91, %70
  %93 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 13)
  %94 = mul i32 %93, -1640531535
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %96 = load i32, ptr %95, align 1
  %97 = mul i32 %96, -2048144777
  %98 = add i32 %97, %76
  %99 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 13)
  %100 = mul i32 %99, -1640531535
  %101 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 1)
  %102 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 7)
  %103 = tail call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 12)
  %104 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 18)
  %105 = add i32 %101, 64
  %106 = add i32 %105, %102
  %107 = add i32 %106, %103
  %108 = add i32 %107, %104
  %109 = lshr i32 %108, 15
  %110 = xor i32 %109, %108
  %111 = mul i32 %110, -2048144777
  %112 = lshr i32 %111, 13
  %113 = xor i32 %112, %111
  %114 = mul i32 %113, -1028477379
  %115 = lshr i32 %114, 16
  %116 = xor i32 %115, %114
  ret i32 %116
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @target_s32_10_10(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #7
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
  br i1 %12, label %64, label %13

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
  store i32 %23, ptr %7, align 8
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %25 = load i32, ptr %24, align 4
  %26 = mul i32 %25, -2048144777
  %27 = add i32 %26, %5
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 13)
  %29 = mul i32 %28, -1640531535
  store i32 %29, ptr %8, align 4
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %31 = load i32, ptr %30, align 8
  %32 = mul i32 %31, -2048144777
  %33 = add i32 %32, %1
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 13)
  %35 = mul i32 %34, -1640531535
  store i32 %35, ptr %9, align 8
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %37 = load i32, ptr %36, align 4
  %38 = mul i32 %37, -2048144777
  %39 = add i32 %38, %6
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 13)
  %41 = mul i32 %40, -1640531535
  store i32 %41, ptr %10, align 4
  %42 = load i32, ptr %17, align 8
  %43 = sub i32 16, %42
  store i32 0, ptr %17, align 8
  %44 = icmp ult i32 %43, 10
  br i1 %44, label %45, label %55

45:                                               ; preds = %13
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %47 = zext nneg i32 %43 to i64
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 %47
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 10
  %50 = ptrtoint ptr %46 to i64
  %51 = ptrtoint ptr %49 to i64
  %52 = sub i64 %50, %51
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %11, ptr nonnull readonly align 1 %49, i64 %52, i1 false)
  %53 = trunc i64 %52 to i32
  store i32 %53, ptr %17, align 8
  %54 = and i32 %53, 15
  br label %55

55:                                               ; preds = %13, %45
  %56 = phi i32 [ %54, %45 ], [ 0, %13 ]
  %57 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 1)
  %58 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 7)
  %59 = add i32 %58, %57
  %60 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 12)
  %61 = add i32 %59, %60
  %62 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 18)
  %63 = add i32 %61, %62
  br label %72

64:                                               ; preds = %2
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i32 10, ptr %3, align 8
  %66 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %66, align 4
  %67 = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %11, ptr noundef nonnull readonly align 1 dereferenceable(10) %65, i64 10, i1 false)
  %68 = load i32, ptr %67, align 8
  %69 = add i32 %68, 10
  store i32 %69, ptr %67, align 8
  %70 = and i32 %69, 15
  %71 = add i32 %1, 374761393
  br label %72

72:                                               ; preds = %64, %55
  %73 = phi i32 [ %56, %55 ], [ %70, %64 ]
  %74 = phi i32 [ 20, %55 ], [ 10, %64 ]
  %75 = phi i32 [ %63, %55 ], [ %71, %64 ]
  %76 = add i32 %75, %74
  switch i32 %73, label %224 [
    i32 12, label %77
    i32 8, label %84
    i32 4, label %93
    i32 13, label %101
    i32 9, label %108
    i32 5, label %117
    i32 14, label %132
    i32 10, label %139
    i32 6, label %148
    i32 15, label %170
    i32 11, label %177
    i32 7, label %186
    i32 3, label %195
    i32 2, label %205
    i32 1, label %215
    i32 0, label %225
  ]

77:                                               ; preds = %72
  %78 = load i32, ptr %11, align 8
  %79 = mul i32 %78, -1028477379
  %80 = add i32 %79, %76
  %81 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %82 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 17)
  %83 = mul i32 %82, 668265263
  br label %84

84:                                               ; preds = %77, %72
  %85 = phi ptr [ %11, %72 ], [ %81, %77 ]
  %86 = phi i32 [ %76, %72 ], [ %83, %77 ]
  %87 = load i32, ptr %85, align 1
  %88 = mul i32 %87, -1028477379
  %89 = add i32 %88, %86
  %90 = getelementptr inbounds nuw i8, ptr %85, i64 4
  %91 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 17)
  %92 = mul i32 %91, 668265263
  br label %93

93:                                               ; preds = %84, %72
  %94 = phi ptr [ %11, %72 ], [ %90, %84 ]
  %95 = phi i32 [ %76, %72 ], [ %92, %84 ]
  %96 = load i32, ptr %94, align 1
  %97 = mul i32 %96, -1028477379
  %98 = add i32 %97, %95
  %99 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 17)
  %100 = mul i32 %99, 668265263
  br label %225

101:                                              ; preds = %72
  %102 = load i32, ptr %11, align 8
  %103 = mul i32 %102, -1028477379
  %104 = add i32 %103, %76
  %105 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %106 = tail call i32 @llvm.fshl.i32(i32 %104, i32 %104, i32 17)
  %107 = mul i32 %106, 668265263
  br label %108

108:                                              ; preds = %101, %72
  %109 = phi ptr [ %11, %72 ], [ %105, %101 ]
  %110 = phi i32 [ %76, %72 ], [ %107, %101 ]
  %111 = load i32, ptr %109, align 1
  %112 = mul i32 %111, -1028477379
  %113 = add i32 %112, %110
  %114 = getelementptr inbounds nuw i8, ptr %109, i64 4
  %115 = tail call i32 @llvm.fshl.i32(i32 %113, i32 %113, i32 17)
  %116 = mul i32 %115, 668265263
  br label %117

117:                                              ; preds = %108, %72
  %118 = phi ptr [ %11, %72 ], [ %114, %108 ]
  %119 = phi i32 [ %76, %72 ], [ %116, %108 ]
  %120 = load i32, ptr %118, align 1
  %121 = mul i32 %120, -1028477379
  %122 = add i32 %121, %119
  %123 = getelementptr inbounds nuw i8, ptr %118, i64 4
  %124 = tail call i32 @llvm.fshl.i32(i32 %122, i32 %122, i32 17)
  %125 = mul i32 %124, 668265263
  %126 = load i8, ptr %123, align 1
  %127 = zext i8 %126 to i32
  %128 = mul i32 %127, 374761393
  %129 = add i32 %125, %128
  %130 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 11)
  %131 = mul i32 %130, -1640531535
  br label %225

132:                                              ; preds = %72
  %133 = load i32, ptr %11, align 8
  %134 = mul i32 %133, -1028477379
  %135 = add i32 %134, %76
  %136 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %137 = tail call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 17)
  %138 = mul i32 %137, 668265263
  br label %139

139:                                              ; preds = %132, %72
  %140 = phi ptr [ %11, %72 ], [ %136, %132 ]
  %141 = phi i32 [ %76, %72 ], [ %138, %132 ]
  %142 = load i32, ptr %140, align 1
  %143 = mul i32 %142, -1028477379
  %144 = add i32 %143, %141
  %145 = getelementptr inbounds nuw i8, ptr %140, i64 4
  %146 = tail call i32 @llvm.fshl.i32(i32 %144, i32 %144, i32 17)
  %147 = mul i32 %146, 668265263
  br label %148

148:                                              ; preds = %139, %72
  %149 = phi ptr [ %11, %72 ], [ %145, %139 ]
  %150 = phi i32 [ %76, %72 ], [ %147, %139 ]
  %151 = load i32, ptr %149, align 1
  %152 = mul i32 %151, -1028477379
  %153 = add i32 %152, %150
  %154 = getelementptr inbounds nuw i8, ptr %149, i64 4
  %155 = tail call i32 @llvm.fshl.i32(i32 %153, i32 %153, i32 17)
  %156 = mul i32 %155, 668265263
  %157 = getelementptr inbounds nuw i8, ptr %149, i64 5
  %158 = load i8, ptr %154, align 1
  %159 = zext i8 %158 to i32
  %160 = mul i32 %159, 374761393
  %161 = add i32 %156, %160
  %162 = tail call i32 @llvm.fshl.i32(i32 %161, i32 %161, i32 11)
  %163 = mul i32 %162, -1640531535
  %164 = load i8, ptr %157, align 1
  %165 = zext i8 %164 to i32
  %166 = mul i32 %165, 374761393
  %167 = add i32 %163, %166
  %168 = tail call i32 @llvm.fshl.i32(i32 %167, i32 %167, i32 11)
  %169 = mul i32 %168, -1640531535
  br label %225

170:                                              ; preds = %72
  %171 = load i32, ptr %11, align 8
  %172 = mul i32 %171, -1028477379
  %173 = add i32 %172, %76
  %174 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %175 = tail call i32 @llvm.fshl.i32(i32 %173, i32 %173, i32 17)
  %176 = mul i32 %175, 668265263
  br label %177

177:                                              ; preds = %170, %72
  %178 = phi ptr [ %11, %72 ], [ %174, %170 ]
  %179 = phi i32 [ %76, %72 ], [ %176, %170 ]
  %180 = load i32, ptr %178, align 1
  %181 = mul i32 %180, -1028477379
  %182 = add i32 %181, %179
  %183 = getelementptr inbounds nuw i8, ptr %178, i64 4
  %184 = tail call i32 @llvm.fshl.i32(i32 %182, i32 %182, i32 17)
  %185 = mul i32 %184, 668265263
  br label %186

186:                                              ; preds = %177, %72
  %187 = phi ptr [ %11, %72 ], [ %183, %177 ]
  %188 = phi i32 [ %76, %72 ], [ %185, %177 ]
  %189 = load i32, ptr %187, align 1
  %190 = mul i32 %189, -1028477379
  %191 = add i32 %190, %188
  %192 = getelementptr inbounds nuw i8, ptr %187, i64 4
  %193 = tail call i32 @llvm.fshl.i32(i32 %191, i32 %191, i32 17)
  %194 = mul i32 %193, 668265263
  br label %195

195:                                              ; preds = %186, %72
  %196 = phi ptr [ %11, %72 ], [ %192, %186 ]
  %197 = phi i32 [ %76, %72 ], [ %194, %186 ]
  %198 = getelementptr inbounds nuw i8, ptr %196, i64 1
  %199 = load i8, ptr %196, align 1
  %200 = zext i8 %199 to i32
  %201 = mul i32 %200, 374761393
  %202 = add i32 %201, %197
  %203 = tail call i32 @llvm.fshl.i32(i32 %202, i32 %202, i32 11)
  %204 = mul i32 %203, -1640531535
  br label %205

205:                                              ; preds = %195, %72
  %206 = phi ptr [ %11, %72 ], [ %198, %195 ]
  %207 = phi i32 [ %76, %72 ], [ %204, %195 ]
  %208 = getelementptr inbounds nuw i8, ptr %206, i64 1
  %209 = load i8, ptr %206, align 1
  %210 = zext i8 %209 to i32
  %211 = mul i32 %210, 374761393
  %212 = add i32 %211, %207
  %213 = tail call i32 @llvm.fshl.i32(i32 %212, i32 %212, i32 11)
  %214 = mul i32 %213, -1640531535
  br label %215

215:                                              ; preds = %205, %72
  %216 = phi ptr [ %11, %72 ], [ %208, %205 ]
  %217 = phi i32 [ %76, %72 ], [ %214, %205 ]
  %218 = load i8, ptr %216, align 1
  %219 = zext i8 %218 to i32
  %220 = mul i32 %219, 374761393
  %221 = add i32 %220, %217
  %222 = tail call i32 @llvm.fshl.i32(i32 %221, i32 %221, i32 11)
  %223 = mul i32 %222, -1640531535
  br label %225

224:                                              ; preds = %72
  unreachable

225:                                              ; preds = %72, %93, %117, %148, %215
  %226 = phi i32 [ %169, %148 ], [ %131, %117 ], [ %100, %93 ], [ %76, %72 ], [ %223, %215 ]
  %227 = lshr i32 %226, 15
  %228 = xor i32 %227, %226
  %229 = mul i32 %228, -2048144777
  %230 = lshr i32 %229, 13
  %231 = xor i32 %230, %229
  %232 = mul i32 %231, -1028477379
  %233 = lshr i32 %232, 16
  %234 = xor i32 %233, %232
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #7
  ret i32 %234
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @target_s32_3_20(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #7
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
  br label %50

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
  store i32 %26, ptr %7, align 8
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %28 = load i32, ptr %27, align 4
  %29 = mul i32 %28, -2048144777
  %30 = add i32 %29, %5
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 13)
  %32 = mul i32 %31, -1640531535
  store i32 %32, ptr %8, align 4
  %33 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %34 = load i32, ptr %33, align 8
  %35 = mul i32 %34, -2048144777
  %36 = add i32 %35, %1
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 13)
  %38 = mul i32 %37, -1640531535
  store i32 %38, ptr %9, align 8
  %39 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %40 = load i32, ptr %39, align 4
  %41 = mul i32 %40, -2048144777
  %42 = add i32 %41, %6
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 13)
  %44 = mul i32 %43, -1640531535
  store i32 %44, ptr %10, align 4
  %45 = load i32, ptr %19, align 8
  %46 = sub i32 16, %45
  %47 = zext i32 %46 to i64
  %48 = add nuw nsw i64 %47, 3
  store i32 0, ptr %19, align 8
  %49 = icmp ugt i32 %46, 4
  br i1 %49, label %83, label %50

50:                                               ; preds = %13, %16
  %51 = phi ptr [ %19, %16 ], [ %15, %13 ]
  %52 = phi i32 [ 23, %16 ], [ 20, %13 ]
  %53 = phi i32 [ %44, %16 ], [ %6, %13 ]
  %54 = phi i32 [ %38, %16 ], [ %1, %13 ]
  %55 = phi i32 [ %32, %16 ], [ %5, %13 ]
  %56 = phi i32 [ %26, %16 ], [ %4, %13 ]
  %57 = phi i64 [ %48, %16 ], [ 3, %13 ]
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 %57
  %59 = load i32, ptr %58, align 1
  %60 = mul i32 %59, -2048144777
  %61 = add i32 %60, %56
  %62 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 13)
  %63 = mul i32 %62, -1640531535
  %64 = getelementptr inbounds nuw i8, ptr %58, i64 4
  %65 = load i32, ptr %64, align 1
  %66 = mul i32 %65, -2048144777
  %67 = add i32 %66, %55
  %68 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 13)
  %69 = mul i32 %68, -1640531535
  %70 = getelementptr inbounds nuw i8, ptr %58, i64 8
  %71 = load i32, ptr %70, align 1
  %72 = mul i32 %71, -2048144777
  %73 = add i32 %72, %54
  %74 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 13)
  %75 = mul i32 %74, -1640531535
  %76 = getelementptr inbounds nuw i8, ptr %58, i64 12
  %77 = load i32, ptr %76, align 1
  %78 = mul i32 %77, -2048144777
  %79 = add i32 %78, %53
  %80 = tail call i32 @llvm.fshl.i32(i32 %79, i32 %79, i32 13)
  %81 = mul i32 %80, -1640531535
  %82 = add nuw nsw i64 %57, 16
  store i32 %63, ptr %7, align 8
  store i32 %69, ptr %8, align 4
  store i32 %75, ptr %9, align 8
  store i32 %81, ptr %10, align 4
  br label %83

83:                                               ; preds = %50, %16
  %84 = phi ptr [ %51, %50 ], [ %19, %16 ]
  %85 = phi i32 [ %52, %50 ], [ 23, %16 ]
  %86 = phi i32 [ %81, %50 ], [ %44, %16 ]
  %87 = phi i32 [ %75, %50 ], [ %38, %16 ]
  %88 = phi i32 [ %69, %50 ], [ %32, %16 ]
  %89 = phi i32 [ %63, %50 ], [ %26, %16 ]
  %90 = phi i64 [ %82, %50 ], [ %48, %16 ]
  %91 = icmp samesign ult i64 %90, 23
  br i1 %91, label %101, label %92

92:                                               ; preds = %83
  %93 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 1)
  %94 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 7)
  %95 = tail call i32 @llvm.fshl.i32(i32 %87, i32 %87, i32 12)
  %96 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 18)
  %97 = add i32 %93, %85
  %98 = add i32 %97, %94
  %99 = add i32 %98, %95
  %100 = add i32 %99, %96
  br label %262

101:                                              ; preds = %83
  %102 = getelementptr inbounds nuw i8, ptr %0, i64 %90
  %103 = sub nuw nsw i64 23, %90
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %11, ptr nonnull readonly align 1 %102, i64 %103, i1 false)
  %104 = trunc nuw nsw i64 %103 to i32
  store i32 %104, ptr %84, align 4
  %105 = and i32 %104, 15
  %106 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 1)
  %107 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 7)
  %108 = tail call i32 @llvm.fshl.i32(i32 %87, i32 %87, i32 12)
  %109 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 18)
  %110 = add i32 %106, %85
  %111 = add i32 %110, %107
  %112 = add i32 %111, %108
  %113 = add i32 %112, %109
  switch i32 %105, label %261 [
    i32 12, label %114
    i32 8, label %121
    i32 4, label %130
    i32 13, label %138
    i32 9, label %145
    i32 5, label %154
    i32 14, label %169
    i32 10, label %176
    i32 6, label %185
    i32 15, label %207
    i32 11, label %214
    i32 7, label %223
    i32 3, label %232
    i32 2, label %242
    i32 1, label %252
    i32 0, label %262
  ]

114:                                              ; preds = %101
  %115 = load i32, ptr %11, align 8
  %116 = mul i32 %115, -1028477379
  %117 = add i32 %116, %113
  %118 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %119 = tail call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 17)
  %120 = mul i32 %119, 668265263
  br label %121

121:                                              ; preds = %114, %101
  %122 = phi ptr [ %11, %101 ], [ %118, %114 ]
  %123 = phi i32 [ %113, %101 ], [ %120, %114 ]
  %124 = load i32, ptr %122, align 1
  %125 = mul i32 %124, -1028477379
  %126 = add i32 %125, %123
  %127 = getelementptr inbounds nuw i8, ptr %122, i64 4
  %128 = tail call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 17)
  %129 = mul i32 %128, 668265263
  br label %130

130:                                              ; preds = %121, %101
  %131 = phi ptr [ %11, %101 ], [ %127, %121 ]
  %132 = phi i32 [ %113, %101 ], [ %129, %121 ]
  %133 = load i32, ptr %131, align 1
  %134 = mul i32 %133, -1028477379
  %135 = add i32 %134, %132
  %136 = tail call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 17)
  %137 = mul i32 %136, 668265263
  br label %262

138:                                              ; preds = %101
  %139 = load i32, ptr %11, align 8
  %140 = mul i32 %139, -1028477379
  %141 = add i32 %140, %113
  %142 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %143 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 17)
  %144 = mul i32 %143, 668265263
  br label %145

145:                                              ; preds = %138, %101
  %146 = phi ptr [ %11, %101 ], [ %142, %138 ]
  %147 = phi i32 [ %113, %101 ], [ %144, %138 ]
  %148 = load i32, ptr %146, align 1
  %149 = mul i32 %148, -1028477379
  %150 = add i32 %149, %147
  %151 = getelementptr inbounds nuw i8, ptr %146, i64 4
  %152 = tail call i32 @llvm.fshl.i32(i32 %150, i32 %150, i32 17)
  %153 = mul i32 %152, 668265263
  br label %154

154:                                              ; preds = %145, %101
  %155 = phi ptr [ %11, %101 ], [ %151, %145 ]
  %156 = phi i32 [ %113, %101 ], [ %153, %145 ]
  %157 = load i32, ptr %155, align 1
  %158 = mul i32 %157, -1028477379
  %159 = add i32 %158, %156
  %160 = getelementptr inbounds nuw i8, ptr %155, i64 4
  %161 = tail call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 17)
  %162 = mul i32 %161, 668265263
  %163 = load i8, ptr %160, align 1
  %164 = zext i8 %163 to i32
  %165 = mul i32 %164, 374761393
  %166 = add i32 %162, %165
  %167 = tail call i32 @llvm.fshl.i32(i32 %166, i32 %166, i32 11)
  %168 = mul i32 %167, -1640531535
  br label %262

169:                                              ; preds = %101
  %170 = load i32, ptr %11, align 8
  %171 = mul i32 %170, -1028477379
  %172 = add i32 %171, %113
  %173 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %174 = tail call i32 @llvm.fshl.i32(i32 %172, i32 %172, i32 17)
  %175 = mul i32 %174, 668265263
  br label %176

176:                                              ; preds = %169, %101
  %177 = phi ptr [ %11, %101 ], [ %173, %169 ]
  %178 = phi i32 [ %113, %101 ], [ %175, %169 ]
  %179 = load i32, ptr %177, align 1
  %180 = mul i32 %179, -1028477379
  %181 = add i32 %180, %178
  %182 = getelementptr inbounds nuw i8, ptr %177, i64 4
  %183 = tail call i32 @llvm.fshl.i32(i32 %181, i32 %181, i32 17)
  %184 = mul i32 %183, 668265263
  br label %185

185:                                              ; preds = %176, %101
  %186 = phi ptr [ %11, %101 ], [ %182, %176 ]
  %187 = phi i32 [ %113, %101 ], [ %184, %176 ]
  %188 = load i32, ptr %186, align 1
  %189 = mul i32 %188, -1028477379
  %190 = add i32 %189, %187
  %191 = getelementptr inbounds nuw i8, ptr %186, i64 4
  %192 = tail call i32 @llvm.fshl.i32(i32 %190, i32 %190, i32 17)
  %193 = mul i32 %192, 668265263
  %194 = getelementptr inbounds nuw i8, ptr %186, i64 5
  %195 = load i8, ptr %191, align 1
  %196 = zext i8 %195 to i32
  %197 = mul i32 %196, 374761393
  %198 = add i32 %193, %197
  %199 = tail call i32 @llvm.fshl.i32(i32 %198, i32 %198, i32 11)
  %200 = mul i32 %199, -1640531535
  %201 = load i8, ptr %194, align 1
  %202 = zext i8 %201 to i32
  %203 = mul i32 %202, 374761393
  %204 = add i32 %200, %203
  %205 = tail call i32 @llvm.fshl.i32(i32 %204, i32 %204, i32 11)
  %206 = mul i32 %205, -1640531535
  br label %262

207:                                              ; preds = %101
  %208 = load i32, ptr %11, align 8
  %209 = mul i32 %208, -1028477379
  %210 = add i32 %209, %113
  %211 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %212 = tail call i32 @llvm.fshl.i32(i32 %210, i32 %210, i32 17)
  %213 = mul i32 %212, 668265263
  br label %214

214:                                              ; preds = %207, %101
  %215 = phi ptr [ %11, %101 ], [ %211, %207 ]
  %216 = phi i32 [ %113, %101 ], [ %213, %207 ]
  %217 = load i32, ptr %215, align 1
  %218 = mul i32 %217, -1028477379
  %219 = add i32 %218, %216
  %220 = getelementptr inbounds nuw i8, ptr %215, i64 4
  %221 = tail call i32 @llvm.fshl.i32(i32 %219, i32 %219, i32 17)
  %222 = mul i32 %221, 668265263
  br label %223

223:                                              ; preds = %214, %101
  %224 = phi ptr [ %11, %101 ], [ %220, %214 ]
  %225 = phi i32 [ %113, %101 ], [ %222, %214 ]
  %226 = load i32, ptr %224, align 1
  %227 = mul i32 %226, -1028477379
  %228 = add i32 %227, %225
  %229 = getelementptr inbounds nuw i8, ptr %224, i64 4
  %230 = tail call i32 @llvm.fshl.i32(i32 %228, i32 %228, i32 17)
  %231 = mul i32 %230, 668265263
  br label %232

232:                                              ; preds = %223, %101
  %233 = phi ptr [ %11, %101 ], [ %229, %223 ]
  %234 = phi i32 [ %113, %101 ], [ %231, %223 ]
  %235 = getelementptr inbounds nuw i8, ptr %233, i64 1
  %236 = load i8, ptr %233, align 1
  %237 = zext i8 %236 to i32
  %238 = mul i32 %237, 374761393
  %239 = add i32 %238, %234
  %240 = tail call i32 @llvm.fshl.i32(i32 %239, i32 %239, i32 11)
  %241 = mul i32 %240, -1640531535
  br label %242

242:                                              ; preds = %232, %101
  %243 = phi ptr [ %11, %101 ], [ %235, %232 ]
  %244 = phi i32 [ %113, %101 ], [ %241, %232 ]
  %245 = getelementptr inbounds nuw i8, ptr %243, i64 1
  %246 = load i8, ptr %243, align 1
  %247 = zext i8 %246 to i32
  %248 = mul i32 %247, 374761393
  %249 = add i32 %248, %244
  %250 = tail call i32 @llvm.fshl.i32(i32 %249, i32 %249, i32 11)
  %251 = mul i32 %250, -1640531535
  br label %252

252:                                              ; preds = %242, %101
  %253 = phi ptr [ %11, %101 ], [ %245, %242 ]
  %254 = phi i32 [ %113, %101 ], [ %251, %242 ]
  %255 = load i8, ptr %253, align 1
  %256 = zext i8 %255 to i32
  %257 = mul i32 %256, 374761393
  %258 = add i32 %257, %254
  %259 = tail call i32 @llvm.fshl.i32(i32 %258, i32 %258, i32 11)
  %260 = mul i32 %259, -1640531535
  br label %262

261:                                              ; preds = %101
  unreachable

262:                                              ; preds = %92, %101, %130, %154, %185, %252
  %263 = phi i32 [ %206, %185 ], [ %168, %154 ], [ %137, %130 ], [ %113, %101 ], [ %260, %252 ], [ %100, %92 ]
  %264 = lshr i32 %263, 15
  %265 = xor i32 %264, %263
  %266 = mul i32 %265, -2048144777
  %267 = lshr i32 %266, 13
  %268 = xor i32 %267, %266
  %269 = mul i32 %268, -1028477379
  %270 = lshr i32 %269, 16
  %271 = xor i32 %270, %269
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #7
  ret i32 %271
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @target_s32_20_13(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.XXH_NAMESPACEXXH32_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #7
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
  br i1 %12, label %13, label %83

13:                                               ; preds = %2
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %16 = load i32, ptr %15, align 1
  %17 = mul i32 %16, -2048144777
  %18 = add i32 %17, %6
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 13)
  %20 = mul i32 %19, -1640531535
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %22 = load i32, ptr %21, align 1
  %23 = mul i32 %22, -2048144777
  %24 = add i32 %23, %1
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 13)
  %26 = mul i32 %25, -1640531535
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %28 = load i32, ptr %27, align 1
  %29 = mul i32 %28, -2048144777
  %30 = add i32 %29, %5
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 13)
  %32 = mul i32 %31, -1640531535
  %33 = load i32, ptr %0, align 1
  %34 = mul i32 %33, -2048144777
  %35 = add i32 %34, %4
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 13)
  %37 = mul i32 %36, -1640531535
  %38 = getelementptr i8, ptr %0, i64 16
  store i32 %37, ptr %7, align 8
  store i32 %32, ptr %8, align 4
  store i32 %26, ptr %9, align 8
  store i32 %20, ptr %10, align 4
  %39 = icmp ult ptr %38, %14
  br i1 %39, label %40, label %83

40:                                               ; preds = %13
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %42 = load i32, ptr %38, align 1
  store i32 %42, ptr %11, align 8
  store i32 4, ptr %41, align 8
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 33, ptr %3, align 8
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %44, align 4
  %45 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %46 = getelementptr inbounds nuw i8, ptr %3, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %46, ptr noundef nonnull readonly align 1 dereferenceable(12) %43, i64 12, i1 false)
  %47 = load i32, ptr %11, align 8
  %48 = mul i32 %47, -2048144777
  %49 = add i32 %48, %37
  %50 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 13)
  %51 = mul i32 %50, -1640531535
  store i32 %51, ptr %7, align 8
  %52 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %53 = load i32, ptr %52, align 4
  %54 = mul i32 %53, -2048144777
  %55 = add i32 %54, %32
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 13)
  %57 = mul i32 %56, -1640531535
  store i32 %57, ptr %8, align 4
  %58 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %59 = load i32, ptr %58, align 8
  %60 = mul i32 %59, -2048144777
  %61 = add i32 %60, %26
  %62 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 13)
  %63 = mul i32 %62, -1640531535
  store i32 %63, ptr %9, align 8
  %64 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %65 = load i32, ptr %64, align 4
  %66 = mul i32 %65, -2048144777
  %67 = add i32 %66, %20
  %68 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 13)
  %69 = mul i32 %68, -1640531535
  store i32 %69, ptr %10, align 4
  %70 = load i32, ptr %45, align 8
  %71 = sub i32 16, %70
  store i32 0, ptr %45, align 8
  %72 = icmp ult i32 %71, 13
  br i1 %72, label %73, label %99

73:                                               ; preds = %40
  %74 = getelementptr inbounds nuw i8, ptr %0, i64 33
  %75 = zext nneg i32 %71 to i64
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 %75
  %77 = getelementptr inbounds nuw i8, ptr %76, i64 20
  %78 = ptrtoint ptr %74 to i64
  %79 = ptrtoint ptr %77 to i64
  %80 = sub i64 %78, %79
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %11, ptr nonnull readonly align 1 %77, i64 %80, i1 false)
  %81 = trunc i64 %80 to i32
  store i32 %81, ptr %45, align 8
  %82 = and i32 %81, 15
  br label %99

83:                                               ; preds = %13, %2
  %84 = phi i32 [ %20, %13 ], [ %6, %2 ]
  %85 = phi i32 [ %26, %13 ], [ %1, %2 ]
  %86 = phi i32 [ %32, %13 ], [ %5, %2 ]
  %87 = phi i32 [ %37, %13 ], [ %4, %2 ]
  %88 = phi i32 [ 1, %13 ], [ 0, %2 ]
  %89 = phi i32 [ 33, %13 ], [ 13, %2 ]
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %89, ptr %3, align 8
  %91 = zext i1 %12 to i32
  %92 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %93 = or i32 %88, %91
  store i32 %93, ptr %92, align 4
  %94 = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %11, ptr noundef nonnull readonly align 1 dereferenceable(13) %90, i64 13, i1 false)
  %95 = load i32, ptr %94, align 8
  %96 = add i32 %95, 13
  store i32 %96, ptr %94, align 8
  %97 = and i32 %96, 15
  %98 = icmp eq i32 %93, 0
  br i1 %98, label %113, label %99

99:                                               ; preds = %40, %73, %83
  %100 = phi i32 [ %87, %83 ], [ %51, %73 ], [ %51, %40 ]
  %101 = phi i32 [ %86, %83 ], [ %57, %73 ], [ %57, %40 ]
  %102 = phi i32 [ %85, %83 ], [ %63, %73 ], [ %63, %40 ]
  %103 = phi i32 [ %84, %83 ], [ %69, %73 ], [ %69, %40 ]
  %104 = phi i32 [ %97, %83 ], [ %82, %73 ], [ 0, %40 ]
  %105 = phi i32 [ %89, %83 ], [ 33, %73 ], [ 33, %40 ]
  %106 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 1)
  %107 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 7)
  %108 = add i32 %107, %106
  %109 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 12)
  %110 = add i32 %108, %109
  %111 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 18)
  %112 = add i32 %110, %111
  br label %115

113:                                              ; preds = %83
  %114 = add i32 %85, 374761393
  br label %115

115:                                              ; preds = %113, %99
  %116 = phi i32 [ %104, %99 ], [ %97, %113 ]
  %117 = phi i32 [ %105, %99 ], [ %89, %113 ]
  %118 = phi i32 [ %112, %99 ], [ %114, %113 ]
  %119 = add i32 %118, %117
  switch i32 %116, label %267 [
    i32 12, label %120
    i32 8, label %127
    i32 4, label %136
    i32 13, label %144
    i32 9, label %151
    i32 5, label %160
    i32 14, label %175
    i32 10, label %182
    i32 6, label %191
    i32 15, label %213
    i32 11, label %220
    i32 7, label %229
    i32 3, label %238
    i32 2, label %248
    i32 1, label %258
    i32 0, label %268
  ]

120:                                              ; preds = %115
  %121 = load i32, ptr %11, align 8
  %122 = mul i32 %121, -1028477379
  %123 = add i32 %122, %119
  %124 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %125 = tail call i32 @llvm.fshl.i32(i32 %123, i32 %123, i32 17)
  %126 = mul i32 %125, 668265263
  br label %127

127:                                              ; preds = %120, %115
  %128 = phi ptr [ %11, %115 ], [ %124, %120 ]
  %129 = phi i32 [ %119, %115 ], [ %126, %120 ]
  %130 = load i32, ptr %128, align 1
  %131 = mul i32 %130, -1028477379
  %132 = add i32 %131, %129
  %133 = getelementptr inbounds nuw i8, ptr %128, i64 4
  %134 = tail call i32 @llvm.fshl.i32(i32 %132, i32 %132, i32 17)
  %135 = mul i32 %134, 668265263
  br label %136

136:                                              ; preds = %127, %115
  %137 = phi ptr [ %11, %115 ], [ %133, %127 ]
  %138 = phi i32 [ %119, %115 ], [ %135, %127 ]
  %139 = load i32, ptr %137, align 1
  %140 = mul i32 %139, -1028477379
  %141 = add i32 %140, %138
  %142 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 17)
  %143 = mul i32 %142, 668265263
  br label %268

144:                                              ; preds = %115
  %145 = load i32, ptr %11, align 8
  %146 = mul i32 %145, -1028477379
  %147 = add i32 %146, %119
  %148 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %149 = tail call i32 @llvm.fshl.i32(i32 %147, i32 %147, i32 17)
  %150 = mul i32 %149, 668265263
  br label %151

151:                                              ; preds = %144, %115
  %152 = phi ptr [ %11, %115 ], [ %148, %144 ]
  %153 = phi i32 [ %119, %115 ], [ %150, %144 ]
  %154 = load i32, ptr %152, align 1
  %155 = mul i32 %154, -1028477379
  %156 = add i32 %155, %153
  %157 = getelementptr inbounds nuw i8, ptr %152, i64 4
  %158 = tail call i32 @llvm.fshl.i32(i32 %156, i32 %156, i32 17)
  %159 = mul i32 %158, 668265263
  br label %160

160:                                              ; preds = %151, %115
  %161 = phi ptr [ %11, %115 ], [ %157, %151 ]
  %162 = phi i32 [ %119, %115 ], [ %159, %151 ]
  %163 = load i32, ptr %161, align 1
  %164 = mul i32 %163, -1028477379
  %165 = add i32 %164, %162
  %166 = getelementptr inbounds nuw i8, ptr %161, i64 4
  %167 = tail call i32 @llvm.fshl.i32(i32 %165, i32 %165, i32 17)
  %168 = mul i32 %167, 668265263
  %169 = load i8, ptr %166, align 1
  %170 = zext i8 %169 to i32
  %171 = mul i32 %170, 374761393
  %172 = add i32 %168, %171
  %173 = tail call i32 @llvm.fshl.i32(i32 %172, i32 %172, i32 11)
  %174 = mul i32 %173, -1640531535
  br label %268

175:                                              ; preds = %115
  %176 = load i32, ptr %11, align 8
  %177 = mul i32 %176, -1028477379
  %178 = add i32 %177, %119
  %179 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %180 = tail call i32 @llvm.fshl.i32(i32 %178, i32 %178, i32 17)
  %181 = mul i32 %180, 668265263
  br label %182

182:                                              ; preds = %175, %115
  %183 = phi ptr [ %11, %115 ], [ %179, %175 ]
  %184 = phi i32 [ %119, %115 ], [ %181, %175 ]
  %185 = load i32, ptr %183, align 1
  %186 = mul i32 %185, -1028477379
  %187 = add i32 %186, %184
  %188 = getelementptr inbounds nuw i8, ptr %183, i64 4
  %189 = tail call i32 @llvm.fshl.i32(i32 %187, i32 %187, i32 17)
  %190 = mul i32 %189, 668265263
  br label %191

191:                                              ; preds = %182, %115
  %192 = phi ptr [ %11, %115 ], [ %188, %182 ]
  %193 = phi i32 [ %119, %115 ], [ %190, %182 ]
  %194 = load i32, ptr %192, align 1
  %195 = mul i32 %194, -1028477379
  %196 = add i32 %195, %193
  %197 = getelementptr inbounds nuw i8, ptr %192, i64 4
  %198 = tail call i32 @llvm.fshl.i32(i32 %196, i32 %196, i32 17)
  %199 = mul i32 %198, 668265263
  %200 = getelementptr inbounds nuw i8, ptr %192, i64 5
  %201 = load i8, ptr %197, align 1
  %202 = zext i8 %201 to i32
  %203 = mul i32 %202, 374761393
  %204 = add i32 %199, %203
  %205 = tail call i32 @llvm.fshl.i32(i32 %204, i32 %204, i32 11)
  %206 = mul i32 %205, -1640531535
  %207 = load i8, ptr %200, align 1
  %208 = zext i8 %207 to i32
  %209 = mul i32 %208, 374761393
  %210 = add i32 %206, %209
  %211 = tail call i32 @llvm.fshl.i32(i32 %210, i32 %210, i32 11)
  %212 = mul i32 %211, -1640531535
  br label %268

213:                                              ; preds = %115
  %214 = load i32, ptr %11, align 8
  %215 = mul i32 %214, -1028477379
  %216 = add i32 %215, %119
  %217 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %218 = tail call i32 @llvm.fshl.i32(i32 %216, i32 %216, i32 17)
  %219 = mul i32 %218, 668265263
  br label %220

220:                                              ; preds = %213, %115
  %221 = phi ptr [ %11, %115 ], [ %217, %213 ]
  %222 = phi i32 [ %119, %115 ], [ %219, %213 ]
  %223 = load i32, ptr %221, align 1
  %224 = mul i32 %223, -1028477379
  %225 = add i32 %224, %222
  %226 = getelementptr inbounds nuw i8, ptr %221, i64 4
  %227 = tail call i32 @llvm.fshl.i32(i32 %225, i32 %225, i32 17)
  %228 = mul i32 %227, 668265263
  br label %229

229:                                              ; preds = %220, %115
  %230 = phi ptr [ %11, %115 ], [ %226, %220 ]
  %231 = phi i32 [ %119, %115 ], [ %228, %220 ]
  %232 = load i32, ptr %230, align 1
  %233 = mul i32 %232, -1028477379
  %234 = add i32 %233, %231
  %235 = getelementptr inbounds nuw i8, ptr %230, i64 4
  %236 = tail call i32 @llvm.fshl.i32(i32 %234, i32 %234, i32 17)
  %237 = mul i32 %236, 668265263
  br label %238

238:                                              ; preds = %229, %115
  %239 = phi ptr [ %11, %115 ], [ %235, %229 ]
  %240 = phi i32 [ %119, %115 ], [ %237, %229 ]
  %241 = getelementptr inbounds nuw i8, ptr %239, i64 1
  %242 = load i8, ptr %239, align 1
  %243 = zext i8 %242 to i32
  %244 = mul i32 %243, 374761393
  %245 = add i32 %244, %240
  %246 = tail call i32 @llvm.fshl.i32(i32 %245, i32 %245, i32 11)
  %247 = mul i32 %246, -1640531535
  br label %248

248:                                              ; preds = %238, %115
  %249 = phi ptr [ %11, %115 ], [ %241, %238 ]
  %250 = phi i32 [ %119, %115 ], [ %247, %238 ]
  %251 = getelementptr inbounds nuw i8, ptr %249, i64 1
  %252 = load i8, ptr %249, align 1
  %253 = zext i8 %252 to i32
  %254 = mul i32 %253, 374761393
  %255 = add i32 %254, %250
  %256 = tail call i32 @llvm.fshl.i32(i32 %255, i32 %255, i32 11)
  %257 = mul i32 %256, -1640531535
  br label %258

258:                                              ; preds = %248, %115
  %259 = phi ptr [ %11, %115 ], [ %251, %248 ]
  %260 = phi i32 [ %119, %115 ], [ %257, %248 ]
  %261 = load i8, ptr %259, align 1
  %262 = zext i8 %261 to i32
  %263 = mul i32 %262, 374761393
  %264 = add i32 %263, %260
  %265 = tail call i32 @llvm.fshl.i32(i32 %264, i32 %264, i32 11)
  %266 = mul i32 %265, -1640531535
  br label %268

267:                                              ; preds = %115
  unreachable

268:                                              ; preds = %115, %136, %160, %191, %258
  %269 = phi i32 [ %212, %191 ], [ %174, %160 ], [ %143, %136 ], [ %119, %115 ], [ %266, %258 ]
  %270 = lshr i32 %269, 15
  %271 = xor i32 %270, %269
  %272 = mul i32 %271, -2048144777
  %273 = lshr i32 %272, 13
  %274 = xor i32 %273, %272
  %275 = mul i32 %274, -1028477379
  %276 = lshr i32 %275, 16
  %277 = xor i32 %276, %275
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #7
  ret i32 %277
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"MaxTLSAlign", i32 65536}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
