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

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len16(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = load i32, ptr %0, align 1
  %7 = mul i32 %6, -2048144777
  %8 = add i32 %3, %7
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 13)
  %10 = mul i32 %9, -1640531535
  %11 = freeze i32 %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %13 = load i32, ptr %12, align 1
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %4, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 1
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %21, %1
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %27 = load i32, ptr %26, align 1
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %5, %28
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = freeze i32 %31
  %33 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 1)
  %34 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 7)
  %35 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 12)
  %36 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 18)
  %37 = add i32 %33, 16
  %38 = add i32 %37, %34
  %39 = add i32 %38, %35
  %40 = add i32 %39, %36
  %41 = lshr i32 %40, 15
  %42 = xor i32 %41, %40
  %43 = mul i32 %42, -2048144777
  %44 = lshr i32 %43, 13
  %45 = xor i32 %44, %43
  %46 = mul i32 %45, -1028477379
  %47 = lshr i32 %46, 16
  %48 = xor i32 %47, %46
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len17(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = load i32, ptr %0, align 1
  %7 = mul i32 %6, -2048144777
  %8 = add i32 %3, %7
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 13)
  %10 = mul i32 %9, -1640531535
  %11 = freeze i32 %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %13 = load i32, ptr %12, align 1
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %4, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 1
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %21, %1
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %27 = load i32, ptr %26, align 1
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %5, %28
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = freeze i32 %31
  %33 = getelementptr i8, ptr %0, i64 16
  %34 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 1)
  %35 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 7)
  %36 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 12)
  %37 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 18)
  %38 = load i8, ptr %33, align 1
  %39 = zext i8 %38 to i32
  %40 = mul i32 %39, 374761393
  %41 = add i32 %34, 17
  %42 = add i32 %41, %35
  %43 = add i32 %42, %36
  %44 = add i32 %43, %37
  %45 = add i32 %44, %40
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 11)
  %47 = mul i32 %46, -1640531535
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
define dso_local i32 @target_xxh32_len20(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = load i32, ptr %0, align 1
  %7 = mul i32 %6, -2048144777
  %8 = add i32 %3, %7
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 13)
  %10 = mul i32 %9, -1640531535
  %11 = freeze i32 %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %13 = load i32, ptr %12, align 1
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %4, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 1
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %21, %1
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %27 = load i32, ptr %26, align 1
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %5, %28
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = freeze i32 %31
  %33 = getelementptr i8, ptr %0, i64 16
  %34 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 1)
  %35 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 7)
  %36 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 12)
  %37 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 18)
  %38 = load i32, ptr %33, align 1
  %39 = mul i32 %38, -1028477379
  %40 = add i32 %34, 20
  %41 = add i32 %40, %35
  %42 = add i32 %41, %36
  %43 = add i32 %42, %37
  %44 = add i32 %43, %39
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 17)
  %46 = mul i32 %45, 668265263
  %47 = lshr i32 %46, 15
  %48 = xor i32 %47, %46
  %49 = mul i32 %48, -2048144777
  %50 = lshr i32 %49, 13
  %51 = xor i32 %50, %49
  %52 = mul i32 %51, -1028477379
  %53 = lshr i32 %52, 16
  %54 = xor i32 %53, %52
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len31(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = load i32, ptr %0, align 1
  %7 = mul i32 %6, -2048144777
  %8 = add i32 %7, %3
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 13)
  %10 = mul i32 %9, -1640531535
  %11 = freeze i32 %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %13 = load i32, ptr %12, align 1
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %14, %4
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 1
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %21, %1
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %27 = load i32, ptr %26, align 1
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %5
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = freeze i32 %31
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %34 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 1)
  %35 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 7)
  %36 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 12)
  %37 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 18)
  %38 = load i32, ptr %33, align 1
  %39 = mul i32 %38, -1028477379
  %40 = add i32 %34, 31
  %41 = add i32 %40, %35
  %42 = add i32 %41, %36
  %43 = add i32 %42, %37
  %44 = add i32 %43, %39
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %46 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 17)
  %47 = mul i32 %46, 668265263
  %48 = load i32, ptr %45, align 1
  %49 = mul i32 %48, -1028477379
  %50 = add i32 %47, %49
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %52 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 17)
  %53 = mul i32 %52, 668265263
  %54 = load i32, ptr %51, align 1
  %55 = mul i32 %54, -1028477379
  %56 = add i32 %53, %55
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %58 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 17)
  %59 = mul i32 %58, 668265263
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %61 = load i8, ptr %57, align 1
  %62 = zext i8 %61 to i32
  %63 = mul i32 %62, 374761393
  %64 = add i32 %59, %63
  %65 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 11)
  %66 = mul i32 %65, -1640531535
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %68 = load i8, ptr %60, align 1
  %69 = zext i8 %68 to i32
  %70 = mul i32 %69, 374761393
  %71 = add i32 %66, %70
  %72 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 11)
  %73 = mul i32 %72, -1640531535
  %74 = load i8, ptr %67, align 1
  %75 = zext i8 %74 to i32
  %76 = mul i32 %75, 374761393
  %77 = add i32 %73, %76
  %78 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 11)
  %79 = mul i32 %78, -1640531535
  %80 = lshr i32 %79, 15
  %81 = xor i32 %80, %79
  %82 = mul i32 %81, -2048144777
  %83 = lshr i32 %82, 13
  %84 = xor i32 %83, %82
  %85 = mul i32 %84, -1028477379
  %86 = lshr i32 %85, 16
  %87 = xor i32 %86, %85
  ret i32 %87
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len32(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = load i32, ptr %0, align 1
  %7 = mul i32 %6, -2048144777
  %8 = add i32 %7, %3
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 13)
  %10 = mul i32 %9, -1640531535
  %11 = freeze i32 %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %13 = load i32, ptr %12, align 1
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %14, %4
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 1
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %21, %1
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %27 = load i32, ptr %26, align 1
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %5
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = freeze i32 %31
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %34 = load i32, ptr %33, align 1
  %35 = mul i32 %34, -2048144777
  %36 = add i32 %35, %11
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 13)
  %38 = mul i32 %37, -1640531535
  %39 = freeze i32 %38
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %41 = load i32, ptr %40, align 1
  %42 = mul i32 %41, -2048144777
  %43 = add i32 %42, %18
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 13)
  %45 = mul i32 %44, -1640531535
  %46 = freeze i32 %45
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %48 = load i32, ptr %47, align 1
  %49 = mul i32 %48, -2048144777
  %50 = add i32 %49, %25
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 13)
  %52 = mul i32 %51, -1640531535
  %53 = freeze i32 %52
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %55 = load i32, ptr %54, align 1
  %56 = mul i32 %55, -2048144777
  %57 = add i32 %56, %32
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  %60 = freeze i32 %59
  %61 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 1)
  %62 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 7)
  %63 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 12)
  %64 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 18)
  %65 = add i32 %61, 32
  %66 = add i32 %65, %62
  %67 = add i32 %66, %63
  %68 = add i32 %67, %64
  %69 = lshr i32 %68, 15
  %70 = xor i32 %69, %68
  %71 = mul i32 %70, -2048144777
  %72 = lshr i32 %71, 13
  %73 = xor i32 %72, %71
  %74 = mul i32 %73, -1028477379
  %75 = lshr i32 %74, 16
  %76 = xor i32 %75, %74
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len47(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = load i32, ptr %0, align 1
  %7 = mul i32 %6, -2048144777
  %8 = add i32 %7, %3
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 13)
  %10 = mul i32 %9, -1640531535
  %11 = freeze i32 %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %13 = load i32, ptr %12, align 1
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %14, %4
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 1
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %21, %1
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %27 = load i32, ptr %26, align 1
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %5
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = freeze i32 %31
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %34 = load i32, ptr %33, align 1
  %35 = mul i32 %34, -2048144777
  %36 = add i32 %35, %11
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 13)
  %38 = mul i32 %37, -1640531535
  %39 = freeze i32 %38
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %41 = load i32, ptr %40, align 1
  %42 = mul i32 %41, -2048144777
  %43 = add i32 %42, %18
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 13)
  %45 = mul i32 %44, -1640531535
  %46 = freeze i32 %45
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %48 = load i32, ptr %47, align 1
  %49 = mul i32 %48, -2048144777
  %50 = add i32 %49, %25
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 13)
  %52 = mul i32 %51, -1640531535
  %53 = freeze i32 %52
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %55 = load i32, ptr %54, align 1
  %56 = mul i32 %55, -2048144777
  %57 = add i32 %56, %32
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  %60 = freeze i32 %59
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %62 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 1)
  %63 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 7)
  %64 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 12)
  %65 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 18)
  %66 = load i32, ptr %61, align 1
  %67 = mul i32 %66, -1028477379
  %68 = add i32 %62, 47
  %69 = add i32 %68, %63
  %70 = add i32 %69, %64
  %71 = add i32 %70, %65
  %72 = add i32 %71, %67
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %74 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 17)
  %75 = mul i32 %74, 668265263
  %76 = load i32, ptr %73, align 1
  %77 = mul i32 %76, -1028477379
  %78 = add i32 %75, %77
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %80 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 17)
  %81 = mul i32 %80, 668265263
  %82 = load i32, ptr %79, align 1
  %83 = mul i32 %82, -1028477379
  %84 = add i32 %81, %83
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %86 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 17)
  %87 = mul i32 %86, 668265263
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 45
  %89 = load i8, ptr %85, align 1
  %90 = zext i8 %89 to i32
  %91 = mul i32 %90, 374761393
  %92 = add i32 %87, %91
  %93 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 11)
  %94 = mul i32 %93, -1640531535
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 46
  %96 = load i8, ptr %88, align 1
  %97 = zext i8 %96 to i32
  %98 = mul i32 %97, 374761393
  %99 = add i32 %94, %98
  %100 = tail call i32 @llvm.fshl.i32(i32 %99, i32 %99, i32 11)
  %101 = mul i32 %100, -1640531535
  %102 = load i8, ptr %95, align 1
  %103 = zext i8 %102 to i32
  %104 = mul i32 %103, 374761393
  %105 = add i32 %101, %104
  %106 = tail call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 11)
  %107 = mul i32 %106, -1640531535
  %108 = lshr i32 %107, 15
  %109 = xor i32 %108, %107
  %110 = mul i32 %109, -2048144777
  %111 = lshr i32 %110, 13
  %112 = xor i32 %111, %110
  %113 = mul i32 %112, -1028477379
  %114 = lshr i32 %113, 16
  %115 = xor i32 %114, %113
  ret i32 %115
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len48(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = load i32, ptr %0, align 1
  %7 = mul i32 %6, -2048144777
  %8 = add i32 %7, %3
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 13)
  %10 = mul i32 %9, -1640531535
  %11 = freeze i32 %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %13 = load i32, ptr %12, align 1
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %14, %4
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 1
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %21, %1
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %27 = load i32, ptr %26, align 1
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %5
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = freeze i32 %31
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %34 = load i32, ptr %33, align 1
  %35 = mul i32 %34, -2048144777
  %36 = add i32 %35, %11
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 13)
  %38 = mul i32 %37, -1640531535
  %39 = freeze i32 %38
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %41 = load i32, ptr %40, align 1
  %42 = mul i32 %41, -2048144777
  %43 = add i32 %42, %18
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 13)
  %45 = mul i32 %44, -1640531535
  %46 = freeze i32 %45
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %48 = load i32, ptr %47, align 1
  %49 = mul i32 %48, -2048144777
  %50 = add i32 %49, %25
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 13)
  %52 = mul i32 %51, -1640531535
  %53 = freeze i32 %52
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %55 = load i32, ptr %54, align 1
  %56 = mul i32 %55, -2048144777
  %57 = add i32 %56, %32
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  %60 = freeze i32 %59
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %62 = load i32, ptr %61, align 1
  %63 = mul i32 %62, -2048144777
  %64 = add i32 %63, %39
  %65 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 13)
  %66 = mul i32 %65, -1640531535
  %67 = freeze i32 %66
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %69 = load i32, ptr %68, align 1
  %70 = mul i32 %69, -2048144777
  %71 = add i32 %70, %46
  %72 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 13)
  %73 = mul i32 %72, -1640531535
  %74 = freeze i32 %73
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %76 = load i32, ptr %75, align 1
  %77 = mul i32 %76, -2048144777
  %78 = add i32 %77, %53
  %79 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 13)
  %80 = mul i32 %79, -1640531535
  %81 = freeze i32 %80
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %83 = load i32, ptr %82, align 1
  %84 = mul i32 %83, -2048144777
  %85 = add i32 %84, %60
  %86 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 13)
  %87 = mul i32 %86, -1640531535
  %88 = freeze i32 %87
  %89 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 1)
  %90 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 7)
  %91 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 12)
  %92 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 18)
  %93 = add i32 %89, 48
  %94 = add i32 %93, %90
  %95 = add i32 %94, %91
  %96 = add i32 %95, %92
  %97 = lshr i32 %96, 15
  %98 = xor i32 %97, %96
  %99 = mul i32 %98, -2048144777
  %100 = lshr i32 %99, 13
  %101 = xor i32 %100, %99
  %102 = mul i32 %101, -1028477379
  %103 = lshr i32 %102, 16
  %104 = xor i32 %103, %102
  ret i32 %104
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len63(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = load i32, ptr %0, align 1
  %7 = mul i32 %6, -2048144777
  %8 = add i32 %7, %3
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 13)
  %10 = mul i32 %9, -1640531535
  %11 = freeze i32 %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %13 = load i32, ptr %12, align 1
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %14, %4
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 1
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %21, %1
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %27 = load i32, ptr %26, align 1
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %5
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = freeze i32 %31
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %34 = load i32, ptr %33, align 1
  %35 = mul i32 %34, -2048144777
  %36 = add i32 %35, %11
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 13)
  %38 = mul i32 %37, -1640531535
  %39 = freeze i32 %38
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %41 = load i32, ptr %40, align 1
  %42 = mul i32 %41, -2048144777
  %43 = add i32 %42, %18
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 13)
  %45 = mul i32 %44, -1640531535
  %46 = freeze i32 %45
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %48 = load i32, ptr %47, align 1
  %49 = mul i32 %48, -2048144777
  %50 = add i32 %49, %25
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 13)
  %52 = mul i32 %51, -1640531535
  %53 = freeze i32 %52
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %55 = load i32, ptr %54, align 1
  %56 = mul i32 %55, -2048144777
  %57 = add i32 %56, %32
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  %60 = freeze i32 %59
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %62 = load i32, ptr %61, align 1
  %63 = mul i32 %62, -2048144777
  %64 = add i32 %63, %39
  %65 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 13)
  %66 = mul i32 %65, -1640531535
  %67 = freeze i32 %66
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %69 = load i32, ptr %68, align 1
  %70 = mul i32 %69, -2048144777
  %71 = add i32 %70, %46
  %72 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 13)
  %73 = mul i32 %72, -1640531535
  %74 = freeze i32 %73
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %76 = load i32, ptr %75, align 1
  %77 = mul i32 %76, -2048144777
  %78 = add i32 %77, %53
  %79 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 13)
  %80 = mul i32 %79, -1640531535
  %81 = freeze i32 %80
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %83 = load i32, ptr %82, align 1
  %84 = mul i32 %83, -2048144777
  %85 = add i32 %84, %60
  %86 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 13)
  %87 = mul i32 %86, -1640531535
  %88 = freeze i32 %87
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %90 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 1)
  %91 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 7)
  %92 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 12)
  %93 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 18)
  %94 = load i32, ptr %89, align 1
  %95 = mul i32 %94, -1028477379
  %96 = add i32 %90, 63
  %97 = add i32 %96, %91
  %98 = add i32 %97, %92
  %99 = add i32 %98, %93
  %100 = add i32 %99, %95
  %101 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %102 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 17)
  %103 = mul i32 %102, 668265263
  %104 = load i32, ptr %101, align 1
  %105 = mul i32 %104, -1028477379
  %106 = add i32 %103, %105
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %108 = tail call i32 @llvm.fshl.i32(i32 %106, i32 %106, i32 17)
  %109 = mul i32 %108, 668265263
  %110 = load i32, ptr %107, align 1
  %111 = mul i32 %110, -1028477379
  %112 = add i32 %109, %111
  %113 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %114 = tail call i32 @llvm.fshl.i32(i32 %112, i32 %112, i32 17)
  %115 = mul i32 %114, 668265263
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 61
  %117 = load i8, ptr %113, align 1
  %118 = zext i8 %117 to i32
  %119 = mul i32 %118, 374761393
  %120 = add i32 %115, %119
  %121 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 11)
  %122 = mul i32 %121, -1640531535
  %123 = getelementptr inbounds nuw i8, ptr %0, i64 62
  %124 = load i8, ptr %116, align 1
  %125 = zext i8 %124 to i32
  %126 = mul i32 %125, 374761393
  %127 = add i32 %122, %126
  %128 = tail call i32 @llvm.fshl.i32(i32 %127, i32 %127, i32 11)
  %129 = mul i32 %128, -1640531535
  %130 = load i8, ptr %123, align 1
  %131 = zext i8 %130 to i32
  %132 = mul i32 %131, 374761393
  %133 = add i32 %129, %132
  %134 = tail call i32 @llvm.fshl.i32(i32 %133, i32 %133, i32 11)
  %135 = mul i32 %134, -1640531535
  %136 = lshr i32 %135, 15
  %137 = xor i32 %136, %135
  %138 = mul i32 %137, -2048144777
  %139 = lshr i32 %138, 13
  %140 = xor i32 %139, %138
  %141 = mul i32 %140, -1028477379
  %142 = lshr i32 %141, 16
  %143 = xor i32 %142, %141
  ret i32 %143
}

; Function Attrs: nounwind uwtable
define dso_local i32 @target_xxh32_len64(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = load i32, ptr %0, align 1
  %7 = mul i32 %6, -2048144777
  %8 = add i32 %7, %3
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 13)
  %10 = mul i32 %9, -1640531535
  %11 = freeze i32 %10
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %13 = load i32, ptr %12, align 1
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %14, %4
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = freeze i32 %17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 1
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %21, %1
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = freeze i32 %24
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %27 = load i32, ptr %26, align 1
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %5
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = freeze i32 %31
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %34 = load i32, ptr %33, align 1
  %35 = mul i32 %34, -2048144777
  %36 = add i32 %35, %11
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 13)
  %38 = mul i32 %37, -1640531535
  %39 = freeze i32 %38
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %41 = load i32, ptr %40, align 1
  %42 = mul i32 %41, -2048144777
  %43 = add i32 %42, %18
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 13)
  %45 = mul i32 %44, -1640531535
  %46 = freeze i32 %45
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %48 = load i32, ptr %47, align 1
  %49 = mul i32 %48, -2048144777
  %50 = add i32 %49, %25
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 13)
  %52 = mul i32 %51, -1640531535
  %53 = freeze i32 %52
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %55 = load i32, ptr %54, align 1
  %56 = mul i32 %55, -2048144777
  %57 = add i32 %56, %32
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  %60 = freeze i32 %59
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %62 = load i32, ptr %61, align 1
  %63 = mul i32 %62, -2048144777
  %64 = add i32 %63, %39
  %65 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 13)
  %66 = mul i32 %65, -1640531535
  %67 = freeze i32 %66
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %69 = load i32, ptr %68, align 1
  %70 = mul i32 %69, -2048144777
  %71 = add i32 %70, %46
  %72 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 13)
  %73 = mul i32 %72, -1640531535
  %74 = freeze i32 %73
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %76 = load i32, ptr %75, align 1
  %77 = mul i32 %76, -2048144777
  %78 = add i32 %77, %53
  %79 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 13)
  %80 = mul i32 %79, -1640531535
  %81 = freeze i32 %80
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %83 = load i32, ptr %82, align 1
  %84 = mul i32 %83, -2048144777
  %85 = add i32 %84, %60
  %86 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 13)
  %87 = mul i32 %86, -1640531535
  %88 = freeze i32 %87
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %90 = load i32, ptr %89, align 1
  %91 = mul i32 %90, -2048144777
  %92 = add i32 %91, %67
  %93 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 13)
  %94 = mul i32 %93, -1640531535
  %95 = freeze i32 %94
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %97 = load i32, ptr %96, align 1
  %98 = mul i32 %97, -2048144777
  %99 = add i32 %98, %74
  %100 = tail call i32 @llvm.fshl.i32(i32 %99, i32 %99, i32 13)
  %101 = mul i32 %100, -1640531535
  %102 = freeze i32 %101
  %103 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %104 = load i32, ptr %103, align 1
  %105 = mul i32 %104, -2048144777
  %106 = add i32 %105, %81
  %107 = tail call i32 @llvm.fshl.i32(i32 %106, i32 %106, i32 13)
  %108 = mul i32 %107, -1640531535
  %109 = freeze i32 %108
  %110 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %111 = load i32, ptr %110, align 1
  %112 = mul i32 %111, -2048144777
  %113 = add i32 %112, %88
  %114 = tail call i32 @llvm.fshl.i32(i32 %113, i32 %113, i32 13)
  %115 = mul i32 %114, -1640531535
  %116 = freeze i32 %115
  %117 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 1)
  %118 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 7)
  %119 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 12)
  %120 = tail call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 18)
  %121 = add i32 %117, 64
  %122 = add i32 %121, %118
  %123 = add i32 %122, %119
  %124 = add i32 %123, %120
  %125 = lshr i32 %124, 15
  %126 = xor i32 %125, %124
  %127 = mul i32 %126, -2048144777
  %128 = lshr i32 %127, 13
  %129 = xor i32 %128, %127
  %130 = mul i32 %129, -1028477379
  %131 = lshr i32 %130, 16
  %132 = xor i32 %131, %130
  ret i32 %132
}

; Function Attrs: nounwind uwtable
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
  %91 = load i32, ptr %89, align 1
  %92 = mul i32 %91, -1028477379
  %93 = add i32 %92, %90
  %94 = getelementptr inbounds nuw i8, ptr %89, i64 4
  %95 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 17)
  %96 = mul i32 %95, 668265263
  br label %97

97:                                               ; preds = %88, %76
  %98 = phi ptr [ %11, %76 ], [ %94, %88 ]
  %99 = phi i32 [ %80, %76 ], [ %96, %88 ]
  %100 = load i32, ptr %98, align 1
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
  %115 = load i32, ptr %113, align 1
  %116 = mul i32 %115, -1028477379
  %117 = add i32 %116, %114
  %118 = getelementptr inbounds nuw i8, ptr %113, i64 4
  %119 = tail call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 17)
  %120 = mul i32 %119, 668265263
  br label %121

121:                                              ; preds = %112, %76
  %122 = phi ptr [ %11, %76 ], [ %118, %112 ]
  %123 = phi i32 [ %80, %76 ], [ %120, %112 ]
  %124 = load i32, ptr %122, align 1
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
  %146 = load i32, ptr %144, align 1
  %147 = mul i32 %146, -1028477379
  %148 = add i32 %147, %145
  %149 = getelementptr inbounds nuw i8, ptr %144, i64 4
  %150 = tail call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 17)
  %151 = mul i32 %150, 668265263
  br label %152

152:                                              ; preds = %143, %76
  %153 = phi ptr [ %11, %76 ], [ %149, %143 ]
  %154 = phi i32 [ %80, %76 ], [ %151, %143 ]
  %155 = load i32, ptr %153, align 1
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
  %184 = load i32, ptr %182, align 1
  %185 = mul i32 %184, -1028477379
  %186 = add i32 %185, %183
  %187 = getelementptr inbounds nuw i8, ptr %182, i64 4
  %188 = tail call i32 @llvm.fshl.i32(i32 %186, i32 %186, i32 17)
  %189 = mul i32 %188, 668265263
  br label %190

190:                                              ; preds = %181, %76
  %191 = phi ptr [ %11, %76 ], [ %187, %181 ]
  %192 = phi i32 [ %80, %76 ], [ %189, %181 ]
  %193 = load i32, ptr %191, align 1
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
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #7
  ret i32 %238
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr) #3

; Function Attrs: nounwind uwtable
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
  %92 = phi ptr [ %55, %54 ], [ %19, %16 ]
  %93 = phi i32 [ %56, %54 ], [ 23, %16 ]
  %94 = phi i32 [ %89, %54 ], [ %48, %16 ]
  %95 = phi i32 [ %82, %54 ], [ %41, %16 ]
  %96 = phi i32 [ %75, %54 ], [ %34, %16 ]
  %97 = phi i32 [ %68, %54 ], [ %27, %16 ]
  %98 = phi i64 [ %90, %54 ], [ %52, %16 ]
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
  %132 = load i32, ptr %130, align 1
  %133 = mul i32 %132, -1028477379
  %134 = add i32 %133, %131
  %135 = getelementptr inbounds nuw i8, ptr %130, i64 4
  %136 = tail call i32 @llvm.fshl.i32(i32 %134, i32 %134, i32 17)
  %137 = mul i32 %136, 668265263
  br label %138

138:                                              ; preds = %129, %109
  %139 = phi ptr [ %11, %109 ], [ %135, %129 ]
  %140 = phi i32 [ %121, %109 ], [ %137, %129 ]
  %141 = load i32, ptr %139, align 1
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
  %156 = load i32, ptr %154, align 1
  %157 = mul i32 %156, -1028477379
  %158 = add i32 %157, %155
  %159 = getelementptr inbounds nuw i8, ptr %154, i64 4
  %160 = tail call i32 @llvm.fshl.i32(i32 %158, i32 %158, i32 17)
  %161 = mul i32 %160, 668265263
  br label %162

162:                                              ; preds = %153, %109
  %163 = phi ptr [ %11, %109 ], [ %159, %153 ]
  %164 = phi i32 [ %121, %109 ], [ %161, %153 ]
  %165 = load i32, ptr %163, align 1
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
  %187 = load i32, ptr %185, align 1
  %188 = mul i32 %187, -1028477379
  %189 = add i32 %188, %186
  %190 = getelementptr inbounds nuw i8, ptr %185, i64 4
  %191 = tail call i32 @llvm.fshl.i32(i32 %189, i32 %189, i32 17)
  %192 = mul i32 %191, 668265263
  br label %193

193:                                              ; preds = %184, %109
  %194 = phi ptr [ %11, %109 ], [ %190, %184 ]
  %195 = phi i32 [ %121, %109 ], [ %192, %184 ]
  %196 = load i32, ptr %194, align 1
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
  %225 = load i32, ptr %223, align 1
  %226 = mul i32 %225, -1028477379
  %227 = add i32 %226, %224
  %228 = getelementptr inbounds nuw i8, ptr %223, i64 4
  %229 = tail call i32 @llvm.fshl.i32(i32 %227, i32 %227, i32 17)
  %230 = mul i32 %229, 668265263
  br label %231

231:                                              ; preds = %222, %109
  %232 = phi ptr [ %11, %109 ], [ %228, %222 ]
  %233 = phi i32 [ %121, %109 ], [ %230, %222 ]
  %234 = load i32, ptr %232, align 1
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
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #7
  ret i32 %279
}

; Function Attrs: nounwind uwtable
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
  br i1 %12, label %13, label %91

13:                                               ; preds = %2
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 20
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
  store i32 %20, ptr %7, align 8
  store i32 %27, ptr %8, align 4
  store i32 %34, ptr %9, align 8
  store i32 %41, ptr %10, align 4
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
  %138 = load i32, ptr %136, align 1
  %139 = mul i32 %138, -1028477379
  %140 = add i32 %139, %137
  %141 = getelementptr inbounds nuw i8, ptr %136, i64 4
  %142 = tail call i32 @llvm.fshl.i32(i32 %140, i32 %140, i32 17)
  %143 = mul i32 %142, 668265263
  br label %144

144:                                              ; preds = %135, %123
  %145 = phi ptr [ %11, %123 ], [ %141, %135 ]
  %146 = phi i32 [ %127, %123 ], [ %143, %135 ]
  %147 = load i32, ptr %145, align 1
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
  %162 = load i32, ptr %160, align 1
  %163 = mul i32 %162, -1028477379
  %164 = add i32 %163, %161
  %165 = getelementptr inbounds nuw i8, ptr %160, i64 4
  %166 = tail call i32 @llvm.fshl.i32(i32 %164, i32 %164, i32 17)
  %167 = mul i32 %166, 668265263
  br label %168

168:                                              ; preds = %159, %123
  %169 = phi ptr [ %11, %123 ], [ %165, %159 ]
  %170 = phi i32 [ %127, %123 ], [ %167, %159 ]
  %171 = load i32, ptr %169, align 1
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
  %193 = load i32, ptr %191, align 1
  %194 = mul i32 %193, -1028477379
  %195 = add i32 %194, %192
  %196 = getelementptr inbounds nuw i8, ptr %191, i64 4
  %197 = tail call i32 @llvm.fshl.i32(i32 %195, i32 %195, i32 17)
  %198 = mul i32 %197, 668265263
  br label %199

199:                                              ; preds = %190, %123
  %200 = phi ptr [ %11, %123 ], [ %196, %190 ]
  %201 = phi i32 [ %127, %123 ], [ %198, %190 ]
  %202 = load i32, ptr %200, align 1
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
  %231 = load i32, ptr %229, align 1
  %232 = mul i32 %231, -1028477379
  %233 = add i32 %232, %230
  %234 = getelementptr inbounds nuw i8, ptr %229, i64 4
  %235 = tail call i32 @llvm.fshl.i32(i32 %233, i32 %233, i32 17)
  %236 = mul i32 %235, 668265263
  br label %237

237:                                              ; preds = %228, %123
  %238 = phi ptr [ %11, %123 ], [ %234, %228 ]
  %239 = phi i32 [ %127, %123 ], [ %236, %228 ]
  %240 = load i32, ptr %238, align 1
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
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #7
  ret i32 %285
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly, ptr noalias readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
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
!5 = !{i64 2147792605}
