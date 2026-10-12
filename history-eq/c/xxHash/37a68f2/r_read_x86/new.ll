; ModuleID = '/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/37a68f2/wrap_read.c'
source_filename = "/srv/home/hantaolou/code/veriop/history-eq/c/xxHash/37a68f2/wrap_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
define dso_local i32 @target_xxh32_len1(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 374761394
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i32
  %6 = mul i32 %5, 374761393
  %7 = add i32 %3, %6
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 11)
  %9 = mul i32 %8, -1640531535
  %10 = lshr i32 %9, 15
  %11 = xor i32 %10, %9
  %12 = mul i32 %11, -2048144777
  %13 = lshr i32 %12, 13
  %14 = xor i32 %13, %12
  %15 = mul i32 %14, -1028477379
  %16 = lshr i32 %15, 16
  %17 = xor i32 %16, %15
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len4(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 374761397
  %4 = load i32, ptr %0, align 1
  %5 = mul i32 %4, -1028477379
  %6 = add i32 %3, %5
  %7 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 17)
  %8 = mul i32 %7, 668265263
  %9 = lshr i32 %8, 15
  %10 = xor i32 %9, %8
  %11 = mul i32 %10, -2048144777
  %12 = lshr i32 %11, 13
  %13 = xor i32 %12, %11
  %14 = mul i32 %13, -1028477379
  %15 = lshr i32 %14, 16
  %16 = xor i32 %15, %14
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len7(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, 374761400
  %4 = load i32, ptr %0, align 1
  %5 = mul i32 %4, -1028477379
  %6 = add i32 %3, %5
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %8 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 17)
  %9 = mul i32 %8, 668265263
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %11 = load i8, ptr %7, align 1
  %12 = zext i8 %11 to i32
  %13 = mul i32 %12, 374761393
  %14 = add i32 %9, %13
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 11)
  %16 = mul i32 %15, -1640531535
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %18 = load i8, ptr %10, align 1
  %19 = zext i8 %18 to i32
  %20 = mul i32 %19, 374761393
  %21 = add i32 %16, %20
  %22 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 11)
  %23 = mul i32 %22, -1640531535
  %24 = load i8, ptr %17, align 1
  %25 = zext i8 %24 to i32
  %26 = mul i32 %25, 374761393
  %27 = add i32 %23, %26
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 11)
  %29 = mul i32 %28, -1640531535
  %30 = lshr i32 %29, 15
  %31 = xor i32 %30, %29
  %32 = mul i32 %31, -2048144777
  %33 = lshr i32 %32, 13
  %34 = xor i32 %33, %32
  %35 = mul i32 %34, -1028477379
  %36 = lshr i32 %35, 16
  %37 = xor i32 %36, %35
  ret i32 %37
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

; Function Attrs: nofree nounwind memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len16(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = load i32, ptr %0, align 1
  %7 = mul i32 %6, -2048144777
  %8 = add i32 %3, %7
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 13)
  %10 = mul i32 %9, -1640531535
  %11 = bitcast i32 %10 to i32
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %13 = load i32, ptr %12, align 1
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %4, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = bitcast i32 %17 to i32
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 1
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %21, %1
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = bitcast i32 %24 to i32
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %27 = load i32, ptr %26, align 1
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %5, %28
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = bitcast i32 %31 to i32
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

; Function Attrs: nofree nounwind memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len19(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = load i32, ptr %0, align 1
  %7 = mul i32 %6, -2048144777
  %8 = add i32 %3, %7
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 13)
  %10 = mul i32 %9, -1640531535
  %11 = bitcast i32 %10 to i32
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %13 = load i32, ptr %12, align 1
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %4, %14
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = bitcast i32 %17 to i32
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 1
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %21, %1
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = bitcast i32 %24 to i32
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %27 = load i32, ptr %26, align 1
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %5, %28
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = bitcast i32 %31 to i32
  %33 = getelementptr i8, ptr %0, i64 16
  %34 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 1)
  %35 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 7)
  %36 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 12)
  %37 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 18)
  %38 = getelementptr i8, ptr %0, i64 17
  %39 = load i8, ptr %33, align 1
  %40 = zext i8 %39 to i32
  %41 = mul i32 %40, 374761393
  %42 = add i32 %34, 19
  %43 = add i32 %42, %35
  %44 = add i32 %43, %36
  %45 = add i32 %44, %37
  %46 = add i32 %45, %41
  %47 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 11)
  %48 = mul i32 %47, -1640531535
  %49 = getelementptr i8, ptr %0, i64 18
  %50 = load i8, ptr %38, align 1
  %51 = zext i8 %50 to i32
  %52 = mul i32 %51, 374761393
  %53 = add i32 %48, %52
  %54 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 11)
  %55 = mul i32 %54, -1640531535
  %56 = load i8, ptr %49, align 1
  %57 = zext i8 %56 to i32
  %58 = mul i32 %57, 374761393
  %59 = add i32 %55, %58
  %60 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 11)
  %61 = mul i32 %60, -1640531535
  %62 = lshr i32 %61, 15
  %63 = xor i32 %62, %61
  %64 = mul i32 %63, -2048144777
  %65 = lshr i32 %64, 13
  %66 = xor i32 %65, %64
  %67 = mul i32 %66, -1028477379
  %68 = lshr i32 %67, 16
  %69 = xor i32 %68, %67
  ret i32 %69
}

; Function Attrs: nofree nounwind memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len32(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = load i32, ptr %0, align 1
  %7 = mul i32 %6, -2048144777
  %8 = add i32 %7, %3
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 13)
  %10 = mul i32 %9, -1640531535
  %11 = bitcast i32 %10 to i32
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %13 = load i32, ptr %12, align 1
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %14, %4
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = bitcast i32 %17 to i32
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 1
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %21, %1
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = bitcast i32 %24 to i32
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %27 = load i32, ptr %26, align 1
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %5
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = bitcast i32 %31 to i32
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %34 = load i32, ptr %33, align 1
  %35 = mul i32 %34, -2048144777
  %36 = add i32 %35, %11
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 13)
  %38 = mul i32 %37, -1640531535
  %39 = bitcast i32 %38 to i32
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %41 = load i32, ptr %40, align 1
  %42 = mul i32 %41, -2048144777
  %43 = add i32 %42, %18
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 13)
  %45 = mul i32 %44, -1640531535
  %46 = bitcast i32 %45 to i32
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %48 = load i32, ptr %47, align 1
  %49 = mul i32 %48, -2048144777
  %50 = add i32 %49, %25
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 13)
  %52 = mul i32 %51, -1640531535
  %53 = bitcast i32 %52 to i32
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %55 = load i32, ptr %54, align 1
  %56 = mul i32 %55, -2048144777
  %57 = add i32 %56, %32
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  %60 = bitcast i32 %59 to i32
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

; Function Attrs: nofree nounwind memory(argmem: read) uwtable
define dso_local i32 @target_xxh32_len37(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  %6 = load i32, ptr %0, align 1
  %7 = mul i32 %6, -2048144777
  %8 = add i32 %7, %3
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 13)
  %10 = mul i32 %9, -1640531535
  %11 = bitcast i32 %10 to i32
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %13 = load i32, ptr %12, align 1
  %14 = mul i32 %13, -2048144777
  %15 = add i32 %14, %4
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 13)
  %17 = mul i32 %16, -1640531535
  %18 = bitcast i32 %17 to i32
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %20 = load i32, ptr %19, align 1
  %21 = mul i32 %20, -2048144777
  %22 = add i32 %21, %1
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 13)
  %24 = mul i32 %23, -1640531535
  %25 = bitcast i32 %24 to i32
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %27 = load i32, ptr %26, align 1
  %28 = mul i32 %27, -2048144777
  %29 = add i32 %28, %5
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13)
  %31 = mul i32 %30, -1640531535
  %32 = bitcast i32 %31 to i32
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %34 = load i32, ptr %33, align 1
  %35 = mul i32 %34, -2048144777
  %36 = add i32 %35, %11
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 13)
  %38 = mul i32 %37, -1640531535
  %39 = bitcast i32 %38 to i32
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %41 = load i32, ptr %40, align 1
  %42 = mul i32 %41, -2048144777
  %43 = add i32 %42, %18
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 13)
  %45 = mul i32 %44, -1640531535
  %46 = bitcast i32 %45 to i32
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %48 = load i32, ptr %47, align 1
  %49 = mul i32 %48, -2048144777
  %50 = add i32 %49, %25
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 13)
  %52 = mul i32 %51, -1640531535
  %53 = bitcast i32 %52 to i32
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %55 = load i32, ptr %54, align 1
  %56 = mul i32 %55, -2048144777
  %57 = add i32 %56, %32
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13)
  %59 = mul i32 %58, -1640531535
  %60 = bitcast i32 %59 to i32
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %62 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 1)
  %63 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 7)
  %64 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 12)
  %65 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 18)
  %66 = load i32, ptr %61, align 1
  %67 = mul i32 %66, -1028477379
  %68 = add i32 %62, 37
  %69 = add i32 %68, %63
  %70 = add i32 %69, %64
  %71 = add i32 %70, %65
  %72 = add i32 %71, %67
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %74 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 17)
  %75 = mul i32 %74, 668265263
  %76 = load i8, ptr %73, align 1
  %77 = zext i8 %76 to i32
  %78 = mul i32 %77, 374761393
  %79 = add i32 %75, %78
  %80 = tail call i32 @llvm.fshl.i32(i32 %79, i32 %79, i32 11)
  %81 = mul i32 %80, -1640531535
  %82 = lshr i32 %81, 15
  %83 = xor i32 %82, %81
  %84 = mul i32 %83, -2048144777
  %85 = lshr i32 %84, 13
  %86 = xor i32 %85, %84
  %87 = mul i32 %86, -1028477379
  %88 = lshr i32 %87, 16
  %89 = xor i32 %88, %87
  ret i32 %89
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @target_xxh64_len0(ptr noundef readnone %0, i64 noundef %1) local_unnamed_addr #0 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len1(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 2870177450012600262
  %4 = load i8, ptr %0, align 1
  %5 = zext i8 %4 to i64
  %6 = mul i64 %5, 2870177450012600261
  %7 = xor i64 %6, %3
  %8 = tail call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 11)
  %9 = mul i64 %8, -7046029288634856825
  %10 = lshr i64 %9, 33
  %11 = xor i64 %10, %9
  %12 = mul i64 %11, -4417276706812531889
  %13 = lshr i64 %12, 29
  %14 = xor i64 %13, %12
  %15 = mul i64 %14, 1609587929392839161
  %16 = lshr i64 %15, 32
  %17 = xor i64 %16, %15
  ret i64 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len4(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 2870177450012600265
  %4 = load i32, ptr %0, align 1
  %5 = zext i32 %4 to i64
  %6 = mul i64 %5, -7046029288634856825
  %7 = xor i64 %6, %3
  %8 = tail call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 23)
  %9 = mul i64 %8, -4417276706812531889
  %10 = add i64 %9, 1609587929392839161
  %11 = lshr i64 %10, 33
  %12 = xor i64 %11, %10
  %13 = mul i64 %12, -4417276706812531889
  %14 = lshr i64 %13, 29
  %15 = xor i64 %14, %13
  %16 = mul i64 %15, 1609587929392839161
  %17 = lshr i64 %16, 32
  %18 = xor i64 %17, %16
  ret i64 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len8(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 2870177450012600269
  %4 = load i64, ptr %0, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = xor i64 %7, %3
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 27)
  %10 = mul i64 %9, -7046029288634856825
  %11 = add i64 %10, -8796714831421723037
  %12 = lshr i64 %11, 33
  %13 = xor i64 %12, %11
  %14 = mul i64 %13, -4417276706812531889
  %15 = lshr i64 %14, 29
  %16 = xor i64 %15, %14
  %17 = mul i64 %16, 1609587929392839161
  %18 = lshr i64 %17, 32
  %19 = xor i64 %18, %17
  ret i64 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len15(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 2870177450012600276
  %4 = load i64, ptr %0, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = xor i64 %7, %3
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 27)
  %11 = mul i64 %10, -7046029288634856825
  %12 = add i64 %11, -8796714831421723037
  %13 = load i32, ptr %8, align 1
  %14 = zext i32 %13 to i64
  %15 = mul i64 %14, -7046029288634856825
  %16 = xor i64 %12, %15
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %18 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 23)
  %19 = mul i64 %18, -4417276706812531889
  %20 = add i64 %19, 1609587929392839161
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %22 = load i8, ptr %17, align 1
  %23 = zext i8 %22 to i64
  %24 = mul i64 %23, 2870177450012600261
  %25 = xor i64 %20, %24
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 11)
  %27 = mul i64 %26, -7046029288634856825
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %29 = load i8, ptr %21, align 1
  %30 = zext i8 %29 to i64
  %31 = mul i64 %30, 2870177450012600261
  %32 = xor i64 %27, %31
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 11)
  %34 = mul i64 %33, -7046029288634856825
  %35 = load i8, ptr %28, align 1
  %36 = zext i8 %35 to i64
  %37 = mul i64 %36, 2870177450012600261
  %38 = xor i64 %34, %37
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 11)
  %40 = mul i64 %39, -7046029288634856825
  %41 = lshr i64 %40, 33
  %42 = xor i64 %41, %40
  %43 = mul i64 %42, -4417276706812531889
  %44 = lshr i64 %43, 29
  %45 = xor i64 %44, %43
  %46 = mul i64 %45, 1609587929392839161
  %47 = lshr i64 %46, 32
  %48 = xor i64 %47, %46
  ret i64 %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len31(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 2870177450012600292
  %4 = load i64, ptr %0, align 1
  %5 = mul i64 %4, -4417276706812531889
  %6 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 31)
  %7 = mul i64 %6, -7046029288634856825
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %9 = xor i64 %7, %3
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 27)
  %11 = mul i64 %10, -7046029288634856825
  %12 = add i64 %11, -8796714831421723037
  %13 = load i64, ptr %8, align 1
  %14 = mul i64 %13, -4417276706812531889
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 31)
  %16 = mul i64 %15, -7046029288634856825
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = xor i64 %12, %16
  %19 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 27)
  %20 = mul i64 %19, -7046029288634856825
  %21 = add i64 %20, -8796714831421723037
  %22 = load i64, ptr %17, align 1
  %23 = mul i64 %22, -4417276706812531889
  %24 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 31)
  %25 = mul i64 %24, -7046029288634856825
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %27 = xor i64 %21, %25
  %28 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 27)
  %29 = mul i64 %28, -7046029288634856825
  %30 = add i64 %29, -8796714831421723037
  %31 = load i32, ptr %26, align 1
  %32 = zext i32 %31 to i64
  %33 = mul i64 %32, -7046029288634856825
  %34 = xor i64 %30, %33
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %36 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 23)
  %37 = mul i64 %36, -4417276706812531889
  %38 = add i64 %37, 1609587929392839161
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 29
  %40 = load i8, ptr %35, align 1
  %41 = zext i8 %40 to i64
  %42 = mul i64 %41, 2870177450012600261
  %43 = xor i64 %38, %42
  %44 = tail call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 11)
  %45 = mul i64 %44, -7046029288634856825
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %47 = load i8, ptr %39, align 1
  %48 = zext i8 %47 to i64
  %49 = mul i64 %48, 2870177450012600261
  %50 = xor i64 %45, %49
  %51 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 11)
  %52 = mul i64 %51, -7046029288634856825
  %53 = load i8, ptr %46, align 1
  %54 = zext i8 %53 to i64
  %55 = mul i64 %54, 2870177450012600261
  %56 = xor i64 %52, %55
  %57 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 11)
  %58 = mul i64 %57, -7046029288634856825
  %59 = lshr i64 %58, 33
  %60 = xor i64 %59, %58
  %61 = mul i64 %60, -4417276706812531889
  %62 = lshr i64 %61, 29
  %63 = xor i64 %62, %61
  %64 = mul i64 %63, 1609587929392839161
  %65 = lshr i64 %64, 32
  %66 = xor i64 %65, %64
  ret i64 %66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len32(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 6983438078262162902
  %4 = add i64 %1, -4417276706812531889
  %5 = add i64 %1, 7046029288634856825
  %6 = load i64, ptr %0, align 1
  %7 = mul i64 %6, -4417276706812531889
  %8 = add i64 %7, %3
  %9 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 31)
  %10 = mul i64 %9, -7046029288634856825
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load i64, ptr %11, align 1
  %13 = mul i64 %12, -4417276706812531889
  %14 = add i64 %13, %4
  %15 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 31)
  %16 = mul i64 %15, -7046029288634856825
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load i64, ptr %17, align 1
  %19 = mul i64 %18, -4417276706812531889
  %20 = add i64 %19, %1
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31)
  %22 = mul i64 %21, -7046029288634856825
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %24 = load i64, ptr %23, align 1
  %25 = mul i64 %24, -4417276706812531889
  %26 = add i64 %25, %5
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 1)
  %30 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 7)
  %31 = add i64 %30, %29
  %32 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 12)
  %33 = add i64 %31, %32
  %34 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 18)
  %35 = add i64 %33, %34
  %36 = mul i64 %9, -2381459717836149591
  %37 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 31)
  %38 = mul i64 %37, -7046029288634856825
  %39 = xor i64 %35, %38
  %40 = mul i64 %39, -7046029288634856825
  %41 = add i64 %40, -8796714831421723037
  %42 = mul i64 %15, -2381459717836149591
  %43 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 31)
  %44 = mul i64 %43, -7046029288634856825
  %45 = xor i64 %41, %44
  %46 = mul i64 %45, -7046029288634856825
  %47 = add i64 %46, -8796714831421723037
  %48 = mul i64 %21, -2381459717836149591
  %49 = tail call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 31)
  %50 = mul i64 %49, -7046029288634856825
  %51 = xor i64 %47, %50
  %52 = mul i64 %51, -7046029288634856825
  %53 = add i64 %52, -8796714831421723037
  %54 = mul i64 %27, -2381459717836149591
  %55 = tail call i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 31)
  %56 = mul i64 %55, -7046029288634856825
  %57 = xor i64 %53, %56
  %58 = mul i64 %57, -7046029288634856825
  %59 = add i64 %58, -8796714831421723005
  %60 = lshr i64 %59, 33
  %61 = xor i64 %60, %59
  %62 = mul i64 %61, -4417276706812531889
  %63 = lshr i64 %62, 29
  %64 = xor i64 %63, %62
  %65 = mul i64 %64, 1609587929392839161
  %66 = lshr i64 %65, 32
  %67 = xor i64 %66, %65
  ret i64 %67
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh64_len45(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 6983438078262162902
  %4 = add i64 %1, -4417276706812531889
  %5 = add i64 %1, 7046029288634856825
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i64, ptr %6, align 1
  %8 = mul i64 %7, -4417276706812531889
  %9 = add i64 %5, %8
  %10 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 31)
  %11 = mul i64 %10, -7046029288634856825
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = load i64, ptr %12, align 1
  %14 = mul i64 %13, -4417276706812531889
  %15 = add i64 %14, %1
  %16 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 31)
  %17 = mul i64 %16, -7046029288634856825
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = load i64, ptr %18, align 1
  %20 = mul i64 %19, -4417276706812531889
  %21 = add i64 %4, %20
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 31)
  %23 = mul i64 %22, -7046029288634856825
  %24 = load i64, ptr %0, align 1
  %25 = mul i64 %24, -4417276706812531889
  %26 = add i64 %3, %25
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31)
  %28 = mul i64 %27, -7046029288634856825
  %29 = getelementptr i8, ptr %0, i64 32
  %30 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 1)
  %31 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 7)
  %32 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 12)
  %33 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 18)
  %34 = add i64 %32, %33
  %35 = add i64 %34, %31
  %36 = add i64 %35, %30
  %37 = mul i64 %27, -2381459717836149591
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 31)
  %39 = mul i64 %38, -7046029288634856825
  %40 = xor i64 %36, %39
  %41 = mul i64 %40, -7046029288634856825
  %42 = add i64 %41, -8796714831421723037
  %43 = mul i64 %22, -2381459717836149591
  %44 = tail call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 31)
  %45 = mul i64 %44, -7046029288634856825
  %46 = xor i64 %42, %45
  %47 = mul i64 %46, -7046029288634856825
  %48 = add i64 %47, -8796714831421723037
  %49 = mul i64 %16, -2381459717836149591
  %50 = tail call i64 @llvm.fshl.i64(i64 %49, i64 %49, i64 31)
  %51 = mul i64 %50, -7046029288634856825
  %52 = xor i64 %48, %51
  %53 = mul i64 %52, -7046029288634856825
  %54 = add i64 %53, -8796714831421723037
  %55 = mul i64 %10, -2381459717836149591
  %56 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 31)
  %57 = mul i64 %56, -7046029288634856825
  %58 = xor i64 %54, %57
  %59 = mul i64 %58, -7046029288634856825
  %60 = add i64 %59, -8796714831421722992
  %61 = load i64, ptr %29, align 1
  %62 = mul i64 %61, -4417276706812531889
  %63 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 31)
  %64 = mul i64 %63, -7046029288634856825
  %65 = getelementptr i8, ptr %0, i64 40
  %66 = xor i64 %60, %64
  %67 = tail call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 27)
  %68 = mul i64 %67, -7046029288634856825
  %69 = add i64 %68, -8796714831421723037
  %70 = load i32, ptr %65, align 1
  %71 = zext i32 %70 to i64
  %72 = mul i64 %71, -7046029288634856825
  %73 = xor i64 %69, %72
  %74 = getelementptr i8, ptr %0, i64 44
  %75 = tail call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 23)
  %76 = mul i64 %75, -4417276706812531889
  %77 = add i64 %76, 1609587929392839161
  %78 = load i8, ptr %74, align 1
  %79 = zext i8 %78 to i64
  %80 = mul i64 %79, 2870177450012600261
  %81 = xor i64 %77, %80
  %82 = tail call i64 @llvm.fshl.i64(i64 %81, i64 %81, i64 11)
  %83 = mul i64 %82, -7046029288634856825
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_len3(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i16, ptr %0, align 1
  %4 = zext i16 %3 to i64
  %5 = shl nuw nsw i64 %4, 16
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i64
  %9 = or disjoint i64 %5, %8
  %10 = or disjoint i64 %9, 768
  %11 = add i64 %1, 2267503259
  %12 = xor i64 %10, %11
  %13 = mul i64 %12, -7046029288634856825
  %14 = lshr i64 %13, 37
  %15 = xor i64 %14, %13
  %16 = mul i64 %15, 1609587791953885689
  %17 = lshr i64 %16, 32
  %18 = xor i64 %17, %16
  ret i64 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_len8(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = trunc i64 %1 to i32
  %4 = tail call noundef i32 @llvm.bswap.i32(i32 %3)
  %5 = zext i32 %4 to i64
  %6 = shl nuw i64 %5, 32
  %7 = xor i64 %6, %1
  %8 = load i32, ptr %0, align 1
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %10 = load i32, ptr %9, align 1
  %11 = sub i64 -4090762196417718878, %7
  %12 = zext i32 %10 to i64
  %13 = zext i32 %8 to i64
  %14 = shl nuw i64 %13, 32
  %15 = or disjoint i64 %14, %12
  %16 = xor i64 %15, %11
  %17 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 49)
  %18 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 24)
  %19 = xor i64 %17, %18
  %20 = xor i64 %19, %16
  %21 = mul i64 %20, -6939452855193903323
  %22 = lshr i64 %21, 35
  %23 = add nuw nsw i64 %22, 8
  %24 = xor i64 %23, %21
  %25 = mul i64 %24, -6939452855193903323
  %26 = lshr i64 %25, 28
  %27 = xor i64 %26, %25
  ret i64 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_len16(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = add i64 %1, 7458650908927343033
  %4 = sub i64 -5812251307325107654, %1
  %5 = load i64, ptr %0, align 1
  %6 = xor i64 %5, %3
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load i64, ptr %7, align 1
  %9 = xor i64 %8, %4
  %10 = tail call noundef i64 @llvm.bswap.i64(i64 %6)
  %11 = add i64 %10, 16
  %12 = add i64 %11, %9
  %13 = zext i64 %6 to i128
  %14 = zext i64 %9 to i128
  %15 = mul nuw i128 %14, %13
  %16 = lshr i128 %15, 64
  %17 = xor i128 %16, %15
  %18 = trunc i128 %17 to i64
  %19 = add i64 %12, %18
  %20 = lshr i64 %19, 37
  %21 = xor i64 %20, %19
  %22 = mul i64 %21, 1609587791953885689
  %23 = lshr i64 %22, 32
  %24 = xor i64 %23, %22
  ret i64 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_len100(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = load i64, ptr %3, align 1
  %5 = getelementptr i8, ptr %0, i64 56
  %6 = load i64, ptr %5, align 1
  %7 = add i64 %1, 4554437623014685352
  %8 = xor i64 %4, %7
  %9 = sub i64 2111919702937427193, %1
  %10 = xor i64 %6, %9
  %11 = zext i64 %8 to i128
  %12 = zext i64 %10 to i128
  %13 = mul nuw i128 %12, %11
  %14 = lshr i128 %13, 64
  %15 = xor i128 %14, %13
  %16 = trunc i128 %15 to i64
  %17 = add i64 %16, -3626654062522721092
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %19 = load i64, ptr %18, align 1
  %20 = getelementptr i8, ptr %0, i64 44
  %21 = load i64, ptr %20, align 1
  %22 = add i64 %1, 3556072174620004746
  %23 = xor i64 %19, %22
  %24 = sub i64 7238261902898274248, %1
  %25 = xor i64 %21, %24
  %26 = zext i64 %23 to i128
  %27 = zext i64 %25 to i128
  %28 = mul nuw i128 %27, %26
  %29 = lshr i128 %28, 64
  %30 = xor i128 %29, %28
  %31 = trunc i128 %30 to i64
  %32 = add i64 %17, %31
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %34 = load i64, ptr %33, align 1
  %35 = getelementptr i8, ptr %0, i64 40
  %36 = load i64, ptr %35, align 1
  %37 = add i64 %1, -3818837453329782724
  %38 = xor i64 %34, %37
  %39 = sub i64 -6688317018830679928, %1
  %40 = xor i64 %36, %39
  %41 = zext i64 %38 to i128
  %42 = zext i64 %40 to i128
  %43 = mul nuw i128 %42, %41
  %44 = lshr i128 %43, 64
  %45 = xor i128 %44, %43
  %46 = trunc i128 %45 to i64
  %47 = add i64 %32, %46
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %49 = load i64, ptr %48, align 1
  %50 = getelementptr i8, ptr %0, i64 60
  %51 = load i64, ptr %50, align 1
  %52 = add i64 %1, 5690594596133299313
  %53 = xor i64 %49, %52
  %54 = sub i64 -2833645246901970632, %1
  %55 = xor i64 %51, %54
  %56 = zext i64 %53 to i128
  %57 = zext i64 %55 to i128
  %58 = mul nuw i128 %57, %56
  %59 = lshr i128 %58, 64
  %60 = xor i128 %59, %58
  %61 = trunc i128 %60 to i64
  %62 = add i64 %47, %61
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %64 = load i64, ptr %63, align 1
  %65 = getelementptr i8, ptr %0, i64 24
  %66 = load i64, ptr %65, align 1
  %67 = add i64 %1, 8711581037947681227
  %68 = xor i64 %64, %67
  %69 = sub i64 2410270004345854594, %1
  %70 = xor i64 %66, %69
  %71 = zext i64 %68 to i128
  %72 = zext i64 %70 to i128
  %73 = mul nuw i128 %72, %71
  %74 = lshr i128 %73, 64
  %75 = xor i128 %74, %73
  %76 = trunc i128 %75 to i64
  %77 = add i64 %62, %76
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %79 = load i64, ptr %78, align 1
  %80 = getelementptr i8, ptr %0, i64 76
  %81 = load i64, ptr %80, align 1
  %82 = add i64 %1, -8204357891075471176
  %83 = xor i64 %79, %82
  %84 = sub i64 5487137525590930912, %1
  %85 = xor i64 %81, %84
  %86 = zext i64 %83 to i128
  %87 = zext i64 %85 to i128
  %88 = mul nuw i128 %87, %86
  %89 = lshr i128 %88, 64
  %90 = xor i128 %89, %88
  %91 = trunc i128 %90 to i64
  %92 = add i64 %77, %91
  %93 = load i64, ptr %0, align 1
  %94 = getelementptr i8, ptr %0, i64 8
  %95 = load i64, ptr %94, align 1
  %96 = add i64 %1, -4734510112055689544
  %97 = xor i64 %93, %96
  %98 = sub i64 2066345149520216444, %1
  %99 = xor i64 %95, %98
  %100 = zext i64 %97 to i128
  %101 = zext i64 %99 to i128
  %102 = mul nuw i128 %101, %100
  %103 = lshr i128 %102, 64
  %104 = xor i128 %103, %102
  %105 = trunc i128 %104 to i64
  %106 = add i64 %92, %105
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 84
  %108 = load i64, ptr %107, align 1
  %109 = getelementptr i8, ptr %0, i64 92
  %110 = load i64, ptr %109, align 1
  %111 = add i64 %1, -2623469361688619810
  %112 = xor i64 %108, %111
  %113 = sub i64 2262974939099578482, %1
  %114 = xor i64 %110, %113
  %115 = zext i64 %112 to i128
  %116 = zext i64 %114 to i128
  %117 = mul nuw i128 %116, %115
  %118 = lshr i128 %117, 64
  %119 = xor i128 %118, %117
  %120 = trunc i128 %119 to i64
  %121 = add i64 %106, %120
  %122 = lshr i64 %121, 37
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587791953885689
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  ret i64 %126
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @target_xxh3_len200(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i64, ptr %0, align 1
  %4 = getelementptr i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 1
  %6 = add i64 %1, -4734510112055689544
  %7 = xor i64 %3, %6
  %8 = sub i64 2066345149520216444, %1
  %9 = xor i64 %5, %8
  %10 = zext i64 %7 to i128
  %11 = zext i64 %9 to i128
  %12 = mul nuw i128 %11, %10
  %13 = lshr i128 %12, 64
  %14 = xor i128 %13, %12
  %15 = trunc i128 %14 to i64
  %16 = add i64 %15, -7253308125045442184
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load i64, ptr %17, align 1
  %19 = getelementptr i8, ptr %0, i64 24
  %20 = load i64, ptr %19, align 1
  %21 = add i64 %1, -2623469361688619810
  %22 = xor i64 %18, %21
  %23 = sub i64 2262974939099578482, %1
  %24 = xor i64 %20, %23
  %25 = zext i64 %22 to i128
  %26 = zext i64 %24 to i128
  %27 = mul nuw i128 %26, %25
  %28 = lshr i128 %27, 64
  %29 = xor i128 %28, %27
  %30 = trunc i128 %29 to i64
  %31 = add i64 %16, %30
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %33 = load i64, ptr %32, align 1
  %34 = getelementptr i8, ptr %0, i64 40
  %35 = load i64, ptr %34, align 1
  %36 = add i64 %1, 8711581037947681227
  %37 = xor i64 %33, %36
  %38 = sub i64 2410270004345854594, %1
  %39 = xor i64 %35, %38
  %40 = zext i64 %37 to i128
  %41 = zext i64 %39 to i128
  %42 = mul nuw i128 %41, %40
  %43 = lshr i128 %42, 64
  %44 = xor i128 %43, %42
  %45 = trunc i128 %44 to i64
  %46 = add i64 %31, %45
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %48 = load i64, ptr %47, align 1
  %49 = getelementptr i8, ptr %0, i64 56
  %50 = load i64, ptr %49, align 1
  %51 = add i64 %1, -8204357891075471176
  %52 = xor i64 %48, %51
  %53 = sub i64 5487137525590930912, %1
  %54 = xor i64 %50, %53
  %55 = zext i64 %52 to i128
  %56 = zext i64 %54 to i128
  %57 = mul nuw i128 %56, %55
  %58 = lshr i128 %57, 64
  %59 = xor i128 %58, %57
  %60 = trunc i128 %59 to i64
  %61 = add i64 %46, %60
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %63 = load i64, ptr %62, align 1
  %64 = getelementptr i8, ptr %0, i64 72
  %65 = load i64, ptr %64, align 1
  %66 = add i64 %1, -3818837453329782724
  %67 = xor i64 %63, %66
  %68 = sub i64 -6688317018830679928, %1
  %69 = xor i64 %65, %68
  %70 = zext i64 %67 to i128
  %71 = zext i64 %69 to i128
  %72 = mul nuw i128 %71, %70
  %73 = lshr i128 %72, 64
  %74 = xor i128 %73, %72
  %75 = trunc i128 %74 to i64
  %76 = add i64 %61, %75
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %78 = load i64, ptr %77, align 1
  %79 = getelementptr i8, ptr %0, i64 88
  %80 = load i64, ptr %79, align 1
  %81 = add i64 %1, 5690594596133299313
  %82 = xor i64 %78, %81
  %83 = sub i64 -2833645246901970632, %1
  %84 = xor i64 %80, %83
  %85 = zext i64 %82 to i128
  %86 = zext i64 %84 to i128
  %87 = mul nuw i128 %86, %85
  %88 = lshr i128 %87, 64
  %89 = xor i128 %88, %87
  %90 = trunc i128 %89 to i64
  %91 = add i64 %76, %90
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %93 = load i64, ptr %92, align 1
  %94 = getelementptr i8, ptr %0, i64 104
  %95 = load i64, ptr %94, align 1
  %96 = add i64 %1, 4554437623014685352
  %97 = xor i64 %93, %96
  %98 = sub i64 2111919702937427193, %1
  %99 = xor i64 %95, %98
  %100 = zext i64 %97 to i128
  %101 = zext i64 %99 to i128
  %102 = mul nuw i128 %101, %100
  %103 = lshr i128 %102, 64
  %104 = xor i128 %103, %102
  %105 = trunc i128 %104 to i64
  %106 = add i64 %91, %105
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %108 = load i64, ptr %107, align 1
  %109 = getelementptr i8, ptr %0, i64 120
  %110 = load i64, ptr %109, align 1
  %111 = add i64 %1, 3556072174620004746
  %112 = xor i64 %108, %111
  %113 = sub i64 7238261902898274248, %1
  %114 = xor i64 %110, %113
  %115 = zext i64 %112 to i128
  %116 = zext i64 %114 to i128
  %117 = mul nuw i128 %116, %115
  %118 = lshr i128 %117, 64
  %119 = xor i128 %118, %117
  %120 = trunc i128 %119 to i64
  %121 = add i64 %106, %120
  %122 = lshr i64 %121, 37
  %123 = xor i64 %122, %121
  %124 = mul i64 %123, 1609587791953885689
  %125 = lshr i64 %124, 32
  %126 = xor i64 %125, %124
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %128 = load i64, ptr %127, align 1
  %129 = getelementptr i8, ptr %0, i64 136
  %130 = load i64, ptr %129, align 1
  %131 = add i64 %1, -9150895811085458631
  %132 = xor i64 %131, %128
  %133 = sub i64 7914194659941938988, %1
  %134 = xor i64 %133, %130
  %135 = zext i64 %132 to i128
  %136 = zext i64 %134 to i128
  %137 = mul nuw i128 %136, %135
  %138 = lshr i128 %137, 64
  %139 = xor i128 %138, %137
  %140 = trunc i128 %139 to i64
  %141 = add i64 %126, %140
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %143 = load i64, ptr %142, align 1
  %144 = getelementptr i8, ptr %0, i64 152
  %145 = load i64, ptr %144, align 1
  %146 = add i64 %1, -6611157965513653271
  %147 = xor i64 %146, %143
  %148 = sub i64 -1839215637059881052, %1
  %149 = xor i64 %148, %145
  %150 = zext i64 %147 to i128
  %151 = zext i64 %149 to i128
  %152 = mul nuw i128 %151, %150
  %153 = lshr i128 %152, 64
  %154 = xor i128 %153, %152
  %155 = trunc i128 %154 to i64
  %156 = add i64 %141, %155
  %157 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %158 = load i64, ptr %157, align 1
  %159 = getelementptr i8, ptr %0, i64 168
  %160 = load i64, ptr %159, align 1
  %161 = add i64 %1, -3433288310154277810
  %162 = xor i64 %161, %158
  %163 = sub i64 5046485836271438973, %1
  %164 = xor i64 %163, %160
  %165 = zext i64 %162 to i128
  %166 = zext i64 %164 to i128
  %167 = mul nuw i128 %166, %165
  %168 = lshr i128 %167, 64
  %169 = xor i128 %168, %167
  %170 = trunc i128 %169 to i64
  %171 = add i64 %156, %170
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %173 = load i64, ptr %172, align 1
  %174 = getelementptr i8, ptr %0, i64 184
  %175 = load i64, ptr %174, align 1
  %176 = add i64 %1, -8055285457383852172
  %177 = xor i64 %176, %173
  %178 = sub i64 5920048007935066598, %1
  %179 = xor i64 %178, %175
  %180 = zext i64 %177 to i128
  %181 = zext i64 %179 to i128
  %182 = mul nuw i128 %181, %180
  %183 = lshr i128 %182, 64
  %184 = xor i128 %183, %182
  %185 = trunc i128 %184 to i64
  %186 = add i64 %171, %185
  %187 = getelementptr i8, ptr %0, i64 192
  %188 = load i64, ptr %187, align 1
  %189 = add i64 %1, 8320639771003045937
  %190 = xor i64 %175, %189
  %191 = sub i64 -1453760514566526364, %1
  %192 = xor i64 %188, %191
  %193 = zext i64 %190 to i128
  %194 = zext i64 %192 to i128
  %195 = mul nuw i128 %194, %193
  %196 = lshr i128 %195, 64
  %197 = xor i128 %196, %195
  %198 = trunc i128 %197 to i64
  %199 = add i64 %186, %198
  %200 = lshr i64 %199, 37
  %201 = xor i64 %200, %199
  %202 = mul i64 %201, 1609587791953885689
  %203 = lshr i64 %202, 32
  %204 = xor i64 %203, %202
  ret i64 %204
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #2 = { nofree nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64-v3" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+movbe,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 20.1.8 (++20250708082409+6fb913d3e2ec-1~exp1~20250708202428.132)"}
!5 = !{i64 248532}
!6 = !{!7}
!7 = distinct !{!7, !8, !"XXH3_len_17to128_64b: argument 0"}
!8 = distinct !{!8, !"XXH3_len_17to128_64b"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"XXH3_len_129to240_64b: argument 0"}
!11 = distinct !{!11, !"XXH3_len_129to240_64b"}
